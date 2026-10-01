#!/usr/bin/env python3
"""Run prepared one-round HSPICE tests on Stanford Caddy.

Use --rebuild to regenerate supported netlists first, or --build-only to stop
after generation. The default runs the already prepared netlists.
Technology includes and VDD are fixed in each prepared SPICE testbench.
Authentication uses SSH keys, an existing control socket, or an interactive
SSH password prompt. Passwords are never stored in the repository.
"""
import argparse
from collections import Counter, defaultdict
import os
import csv
import math
import json
import gzip
import hashlib
from pathlib import Path
import re
import shlex
import shutil
import subprocess
import sys
import tarfile
import tempfile
import time

ROOT = Path(__file__).resolve().parents[2]
HOST = 'ferroma@caddy.best.stanford.edu'
# Verified during Phase A on Caddy; the FarmShare rhel8.sh is not needed here.
MODULES = 'base/1.0 hspice/R-2020.12-SP1'


PAT = re.compile(r'^\.subckt\s+(\S+).*?^\.ends[^\n]*', re.M | re.S | re.I)
WIDTH = re.compile(r'\bW=([0-9.]+)U', re.I)
SUPPLY = {'Vdd', 'GND', '0'}


def statements(text):
    out = []
    for line in text.splitlines():
        line = line.strip()
        if not line or line.startswith('*'):
            continue
        if line.startswith('+'):
            out[-1] += ' ' + line[1:].strip()
        else:
            out.append(line)
    return out


def canonical(text, mask=False):
    lines = statements(text)
    if mask:
        lines = [WIDTH.sub('W=<width>', s) for s in lines]
    return [lines[0]] + sorted(lines[1:-1])


def drivers(text, node):
    result = set()
    for model in ('nmos', 'pmos'):
        graph = defaultdict(list)
        for line in statements(text):
            t = line.split()
            if t[0][0].upper() != 'M' or 'keeper' in t[0] or t[5] != model:
                continue
            if '#fb' in t[1] or '#fb' in t[3]:
                continue
            graph[t[1]].append((t[3], t[0]))
            graph[t[3]].append((t[1], t[0]))
        seen = {node}; stack = [node]
        while stack:
            for nxt, name in graph[stack.pop()]:
                if nxt in SUPPLY or nxt.startswith('#'):
                    result.add(name)
                    if nxt.startswith('#') and nxt not in seen:
                        stack.append(nxt); seen.add(nxt)
    if not result:
        raise ValueError('No functional driver for ' + node)
    return result


def wrap(text):
    out = []
    for line in text.splitlines():
        if line.startswith('*') or len(line) <= 108:
            out.append(line); continue
        fields = line.split(); line = fields.pop(0)
        for field in fields:
            if len(line) + len(field) > 108:
                out.append(line); line = '+ ' + field
            else:
                line += ' ' + field
        out.append(line)
    return '\n'.join(out) + '\n'


def size_pcfb(name, body):
    """Apply accepted control sizing to freshly generated, current PCFB PRS."""
    factors = {}
    for node, factor in [('e', 8), ('inv__R__a', 8), ('g', 2), ('L_aa', 2)]:
        for device in drivers(body, node):
            if device in factors:
                raise ValueError('Overlapping sizing drivers')
            factors[device] = (node, factor)
    changes = []; updated = []
    for line in body.splitlines():
        fields = line.split()
        if fields and fields[0] in factors:
            node, factor = factors[fields[0]]
            before = float(WIDTH.search(line)[1]); after = before * factor
            changes.append(dict(subckt=name, device=fields[0], node=node,
                                before_um=before, after_um=after, factor=factor))
            line = WIDTH.sub(f'W={after:.9g}U', line)
        updated.append(line)
    new = '\n'.join(updated)
    assert canonical(body, True) == canonical(new, True)
    return new, changes


def serial_pcfb_links(modules, top):
    buffers=[]
    def visit(name,path,bindings):
        def resolve(node):
            if node.lower() in ('vdd','gnd','0'):return ('global',node.lower())
            return bindings.get(node,(path,node))
        if name in ('PCFB4','PCFB32'):
            pins=modules[name][0].split()[2:]
            channels={side:[resolve(pin) for pin in pins if re.fullmatch(side+r'_a[tf]_5\d+_6',pin)] for side in ('L','R')}
            width=int(name[4:])
            if any(len(channel)!=2*width for channel in channels.values()):
                raise ValueError('Unexpected PCFB pin schema at '+path)
            buffers.append(dict(path=path,**channels,L_ack=resolve('L_aa'),R_ack=resolve('R_aa')))
            return
        for line in modules[name][1:-1]:
            if line[0].upper()!='X':continue
            fields=line.split();child=fields[-1];pins=modules[child][0].split()[2:]
            if len(pins)!=len(fields[1:-1]):raise ValueError('Instance pin count mismatch')
            visit(child,path+'/'+fields[0],dict(zip(pins,map(resolve,fields[1:-1]))))
    visit(top,top,{})
    inputs=defaultdict(list)
    for b in buffers:
        for net in b['L']:inputs[net].append(b['path'])
    by_path={b['path']:b for b in buffers};pairs=defaultdict(set)
    for b in buffers:
        for net in b['R']:
            for downstream in inputs[net]:pairs[b['path'],downstream].add(net)
    return [dict(upstream=a,downstream=b,connected_rails=len(nets),
                 ack_shared=by_path[a]['R_ack']==by_path[b]['L_ack'])
            for (a,b),nets in sorted(pairs.items())]


def require_no_serial_pcfb(modules,top):
    links=serial_pcfb_links(modules,top)
    if links:
        raise ValueError('Consecutive PCFB stages are forbidden: '+
                         '; '.join(x['upstream']+' -> '+x['downstream'] for x in links))
    return links

# Modules handled by the former standalone builder. Lower-level sized blocks
# remain the accepted references; a topology mismatch must be resolved explicitly.
BUILD_TARGETS = {'ChildSel': ('block', 'block/ChildSel/ChildSel.act', 'block/ChildSel/ChildSel.sp', 2),
                 'ChildRouter': ('subsystem', 'subsystem/ChildRouter.act', 'subsystem/ChildRouter.sp', 10),
                 'ParentRouter': ('subsystem', 'subsystem/ParentRouter.act', 'subsystem/ParentRouter.sp', 11),
                 'MltcUnit': ('subsystem', 'subsystem/MltcUnit.act', 'subsystem/MltcUnit.sp', 5),
                 'Router': ('top', 'top/Router.act', 'top/Router.sp', 61)}
BUILD_WRAPPERS = {'ChildSel', 'ChildRouter', 'ParentRouter', 'Router'}


def rebuild_netlists(jobs, prs_root=None, check_only=False):
    """Stage every selected netlist and verify sizing/topology before replacing files."""
    prs_root = Path(prs_root or ROOT/'src_prs').resolve()
    for level, name in jobs:
        if name not in BUILD_TARGETS or BUILD_TARGETS[name][0] != level:
            raise ValueError('PRS rebuild supports: '+', '.join(BUILD_TARGETS))
    pipelined = ROOT.name == 'pipelined'
    references = {}; origins = {}
    paths = sorted((ROOT/'src_spice/block').glob('*/*.sp'))
    paths.append(ROOT/'src_spice/subsystem/MltcUnit.sp')
    for path in paths:
        for match in PAT.finditer(path.read_text()):
            name, body = match[1], match[0]
            if name in BUILD_WRAPPERS or name in ('PCFB4', 'PCFB32'):
                continue
            if name in references and canonical(body) != canonical(references[name]):
                raise ValueError(f'Conflicting accepted definition: {name} in {path}')
            references[name] = body
            origins.setdefault(name, []).append(str(path.relative_to(ROOT)))
    staged = []
    with tempfile.TemporaryDirectory(prefix='analog_rebuild_') as temporary:
        work = Path(temporary)
        conf = work/'net.conf'
        conf.write_text('begin net\nstring name "ptm065"\nreal lambda 32.5e-9\n'+
                        ''.join(f'string {pol}fet_{vt} "{pol}mos"\n'
                                for pol in ('n', 'p') for vt in ('svt', 'lvt', 'hvt'))+'end\n')
        env = dict(os.environ, ACT_PATH=os.pathsep.join(map(str, (prs_root, prs_root/'block'))))
        for level, top in jobs:
            _, source, destination, pipeline_buffers = BUILD_TARGETS[top]
            generated = work/(top+'.sp')
            subprocess.run(['prs2net', '-cnf='+str(conf), '-p', top, '-o', str(generated),
                            str(prs_root/source)], env=env, check=True)
            raw = generated.read_text()
            copied = []; sizing = []
            def substitute(match):
                name, body = match[1], match[0]
                if name in ('PCFB4', 'PCFB32'):
                    if not pipelined:
                        raise ValueError('Unexpected pipeline buffer in non-pipelined PRS: '+name)
                    sized, changes = size_pcfb(name, body)
                    sizing.extend(changes)
                    return sized
                if name == 'Router':
                    previous = (ROOT/'src_spice/top/Router.sp').read_text()
                    old_top = next(m[0] for m in PAT.finditer(previous) if m[1] == 'Router')
                    def devices(text):
                        return sorted(' '.join(line.split()[1:]) for line in statements(text)
                                      if line[0].upper() == 'M')
                    if devices(body) != devices(old_top):
                        raise ValueError('Router constant spacer drivers changed')
                if name in BUILD_WRAPPERS:
                    if name != 'Router' and any(line[0].upper() == 'M' for line in statements(body)[1:-1]):
                        raise ValueError('Unexpected transistor in structural wrapper: '+name)
                    return body
                if name not in references:
                    raise ValueError('No accepted sizing reference: '+name)
                if canonical(body, True) != canonical(references[name], True):
                    raise ValueError('Current PRS differs from accepted leaf topology: '+name+
                                     '; existing netlists have not been replaced')
                copied.append(name)
                return references[name]
            output = wrap(f'* {top}: rebuilt from {ROOT.name} PRS; accepted transistor sizes preserved.\n'+
                          PAT.sub(substitute, raw))
            definitions = {match[1]: statements(match[0]) for match in PAT.finditer(output)}
            def instances(name, ancestors=()):
                if name in ancestors:
                    raise ValueError('Recursive SPICE hierarchy: '+name)
                counts = Counter({name: 1})
                for line in definitions[name][1:-1]:
                    if line[0].upper() == 'X':
                        tokens = line.split(); child = tokens[-1]
                        if child not in definitions:
                            raise ValueError('Missing subcircuit: '+child)
                        if len(tokens[1:-1]) != len(definitions[child][0].split()[2:]):
                            raise ValueError('Instance pin mismatch: '+name+'/'+tokens[0])
                        counts.update(instances(child, ancestors+(name,)))
                return counts
            counts = instances(top)
            expected = pipeline_buffers if pipelined else 0
            if counts['PCFB32'] != expected or counts['PCFB4']:
                raise ValueError(f'{top}: expected {expected} PCFB32 and 0 PCFB4, found '+str(counts))
            require_no_serial_pcfb(definitions, top)
            if top == 'Router':
                arb = instances('Arb')
                if arb['Arb2'] != 5 or arb['PCFB32'] or arb['PCFB4'] or counts['Arb'] != 6 or counts['Arb2'] != 30:
                    raise ValueError('Router arbiter hierarchy changed')
            deck = (ROOT/f'tb/{level}/{top}/{top}_tb.sp').read_text()
            deck = re.sub(r'\n\s*\+\s*', ' ', deck)
            dut = re.search(r'^\s*XDUT\s+([^\n]+)', deck, re.M | re.I)
            if not dut or [p.lower() for p in dut[1].split()[:-1]] != [p.lower() for p in definitions[top][0].split()[2:]]:
                raise ValueError('Regenerated netlist pins differ from testbench: '+top)
            mos = sum(number*sum(line[0].upper() == 'M' for line in definitions[name][1:-1])
                      for name, number in counts.items())
            report = dict(module=top, mos=mos, instances=dict(counts), pcfb_sizing=sizing,
                          sha256=hashlib.sha256(output.encode()).hexdigest(),
                          accepted_definitions={name: origins[name] for name in copied})
            staged.append((ROOT/'src_spice'/destination, output, report))
        # All generation and checks finish before any existing netlist is changed.
        if not check_only:
            originals = {path: path.read_bytes() for path, _, _ in staged}
            try:
                for path, output, _ in staged:
                    path.write_text(output)
            except OSError:
                for path, content in originals.items():
                    path.write_bytes(content)
                raise
    for _, _, report in staged:
        action = 'verified' if check_only else 'rebuilt'
        print(f'{report["module"]}: {action}; {report["mos"]} MOS; '
              f'{report["instances"].get("PCFB32", 0)} PCFB32; accepted sizes preserved', flush=True)
    return [report for _, _, report in staged]


class Caddy:
    def __init__(self, control_path):
        self.options = ['-F', '/dev/null', '-o', 'ConnectTimeout=15',
                        '-o', 'StrictHostKeyChecking=accept-new',
                        '-o', 'ControlMaster=auto', '-o', 'ControlPersist=600',
                        '-o', 'ControlPath=' + str(control_path)]

    def connect(self):
        command = ['ssh'] + self.options + ['-o', 'BatchMode=yes', HOST, 'true']
        result = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        if result.returncode:
            if not sys.stdin.isatty():
                raise RuntimeError('SSH authentication failed. Run interactively to enter the password, '
                                   'configure an SSH key, or supply --control-path for an authenticated session.')
            subprocess.run(['ssh'] + self.options + ['-N', '-f', HOST], check=True)
        result = self.shell('hostname\n', timeout=30)
        if result.returncode:
            raise RuntimeError('Caddy connection failed: ' + result.stderr.strip())
        print('Caddy node: ' + result.stdout.strip(), flush=True)

    def shell(self, script, timeout=60):
        return subprocess.run(['ssh'] + self.options + ['-o', 'BatchMode=yes', HOST, 'bash -l -s'],
                              input=script, text=True, stdout=subprocess.PIPE,
                              stderr=subprocess.PIPE, timeout=timeout)

    def copy(self, source, destination):
        return subprocess.run(['scp', '-q'] + self.options + ['-o', 'BatchMode=yes',
                              str(source), str(destination)], stdout=subprocess.PIPE,
                              stderr=subprocess.PIPE, text=True, timeout=1800)


def extract_log_from_lis(text):
    """Extract only real emitted events, never quoted source-code echoes."""
    return [match.group(1).strip() for line in text.splitlines()
            if (match := re.match(r'^\s*(SIM_[A-Z_]+\b.*)$', line))]


def validate_listing(text, events, returncode, *, require_power=False):
    if returncode != 0:
        raise ValueError('HSPICE/SSH exit code ' + str(returncode))
    error = re.search(r'^.*(?:\*\*error\*\*|\*\*fatal\*\*|job aborted|convergence failure).*$', text, re.M | re.I)
    if error:
        raise ValueError(error.group(0).strip())
    if not re.search(r'job concluded', text, re.I):
        raise ValueError('HSPICE did not report normal completion')
    final = [event for event in events if re.match(r'SIM_(PASS|FAIL)\b', event)]
    if len(final) != 1:
        raise ValueError('Expected exactly one SIM_PASS or SIM_FAIL in the unchanged HSPICE listing')
    if final[0].startswith('SIM_FAIL') or any(event.startswith('SIM_ERROR') for event in events):
        raise ValueError(next((event for event in events if event.startswith('SIM_ERROR')), final[0]))
    if events[-1] != final[0]:
        raise ValueError('Unexpected event after the final outcome')
    if sum(event.startswith('SIM_RESET ') for event in events) != 1:
        raise ValueError('Expected one reset/initialization sequence')
    if sum(event.startswith('SIM_ROUND ') for event in events) != 1:
        raise ValueError('Expected one complete functional round')
    if require_power:
        power_windows(events)
    for event in events:
        if event.startswith('SIM_RX '):
            comparison = re.search(r'\bexpected=\s*([0-9a-fA-F]+)\s+actual=\s*([0-9a-fA-F]+)\s+PASS$', event)
            if not comparison or int(comparison[1], 16) != int(comparison[2], 16):
                raise ValueError('Output comparison failed: ' + event)


def power_windows(events):
    times = {}
    for marker in ('SIM_RESET', 'SIM_ROUND', 'SIM_IDLE_BEGIN', 'SIM_IDLE_END', 'SIM_PASS'):
        selected = [event for event in events if event.startswith(marker + ' ')]
        if len(selected) != 1:
            raise ValueError('Expected exactly one ' + marker)
        times[marker] = float(re.search(r'\bt=([0-9.eE+-]+)', selected[0])[1])
    ordered = list(times.values())
    if not all(a < b for a, b in zip(ordered, ordered[1:])):
        raise ValueError('Invalid active/idle measurement ordering')
    start, end = times['SIM_IDLE_BEGIN'], times['SIM_IDLE_END']
    middle = (start + end)/2
    return {'active': (times['SIM_RESET'], times['SIM_ROUND']),
            'idle': (start, end), 'idle_first': (start, middle), 'idle_second': (middle, end)}


class PowerIntegral:
    """Integrate linearly interpolated power, clipping exactly to each window."""
    def __init__(self, start, end):
        self.start, self.end = start, end
        self.duration = self.energy = self.square = 0.0
        self.minimum, self.maximum = math.inf, -math.inf

    def add(self, t0, p0, t1, p1):
        left, right = max(t0, self.start), min(t1, self.end)
        if right <= left or t1 <= t0:
            return
        a = p0 + (p1-p0)*(left-t0)/(t1-t0)
        b = p0 + (p1-p0)*(right-t0)/(t1-t0)
        dt = right-left
        self.duration += dt
        self.energy += dt*(a+b)/2
        self.square += dt*(a*a+a*b+b*b)/3
        self.minimum = min(self.minimum, a, b)
        self.maximum = max(self.maximum, a, b)

    def result(self):
        if not math.isclose(self.duration, self.end-self.start, rel_tol=1e-7, abs_tol=1e-15):
            raise ValueError('Waveform does not cover the entire power measurement window')
        mean = self.energy/self.duration
        return {'duration_s': self.duration, 'energy_j': self.energy, 'mean_w': mean,
                'min_w': self.minimum, 'max_w': self.maximum,
                'std_w': math.sqrt(max(0.0, self.square/self.duration-mean*mean))}


def power_log(metrics, events):
    active, idle = metrics['active'], metrics['idle']
    round_event = next(event for event in events if event.startswith('SIM_ROUND '))
    inputs = int(re.search(r'\binputs=(\d+)', round_event)[1])
    outputs = sum(event.startswith('SIM_RX ') for event in events)
    baseline = idle['mean_w']*active['duration_s']
    return [
        'SIM_POWER boundary=VPOWER reset_excluded=1 active_duration_s=%.9e energy_j=%.9e mean_power_w=%.9e'
        % (active['duration_s'], active['energy_j'], active['mean_w']),
        'SIM_LEAKAGE state=post_round_reset_low criterion=mean_drift_and_std_le_1pct duration_s=%.9e mean_current_a=%.9e mean_power_w=%.9e min_power_w=%.9e max_power_w=%.9e std_power_w=%.9e half_drift_relative=%.9e stable=%d'
        % (idle['duration_s'], metrics['idle_current_a'], idle['mean_w'], idle['min_w'], idle['max_w'], idle['std_w'], metrics['idle_half_drift_relative'], metrics['idle_stable']),
        'SIM_ENERGY inputs=%d output_transfers=%d per_input_transfer_j=%.9e per_output_transfer_j=%.9e dynamic_baseline_estimate_j=%.9e'
        % (inputs, outputs, active['energy_j']/inputs, active['energy_j']/outputs,
           active['energy_j']-baseline),
        'SIM_THROUGHPUT window=active_round input_transfers_per_s=%.9e output_transfers_per_s=%.9e'
        % (inputs/active['duration_s'], outputs/active['duration_s'])]


def export_wave_csv(wave, destination, vdd, *, allow_partial_tail=False,
                    windows=None, metrics=None, require_power=False):
    """Export interface voltages, raw source current and derived DUT supply power."""
    opener = gzip.open if wave.suffix == '.gz' else open
    with opener(wave, 'rt') as source, destination.open('w', newline='') as target:
        header = ''
        for line in source:
            header += line.rstrip('\n')
            if '$&%#' in header:
                break
        else:
            raise ValueError('Missing HSPICE waveform header')
        if header[20:24] != '2001':
            raise ValueError('Unsupported transient format; the prepared TB must use .option post=2')
        width = int(header[:4])
        labels = header.split('TIME', 1)[1].split('$&%#', 1)[0].split()
        names = ['time'] + [name[2:].rstrip(')').lower() if name.lower().startswith('v(')
                           else name.lower().rstrip(')')+')' if name.lower().startswith('i(')
                           else name.lower() for name in labels]
        if len(names) != width or len(set(names)) != width:
            raise ValueError('Invalid waveform signal columns')
        for name in ('reset', 'tb_done', 'tb_failed'):
            if name not in names:
                raise ValueError('Missing waveform signal: ' + name)
        has_power = 'vdd' in names and 'i(vpower)' in names
        if require_power and not has_power:
            raise ValueError('Missing v(Vdd) or i(VPOWER) in the saved waveform')
        columns = names + (['supply_current_a', 'supply_power_w', 'supply_energy_j'] if has_power else [])
        done_index, failed_index, reset_index = (names.index(n) for n in ('tb_done', 'tb_failed', 'reset'))
        voltage_index = names.index('vdd') if has_power else None
        current_index = names.index('i(vpower)') if has_power else None
        integrals = {name: PowerIntegral(*bounds) for name, bounds in (windows or {}).items()}
        if integrals and not has_power:
            raise ValueError('Power integration requested without supply probes')
        previous_power = energy = 0.0
        writer = csv.writer(target)
        writer.writerow(columns)
        row = []; last = None; count = 0; complete = False; failed = False
        for line in source:
            line = line.rstrip('\n')
            if not line.strip():
                continue
            if len(line) % 13:
                raise ValueError('Truncated waveform data line')
            for offset in range(0, len(line), 13):
                token = line[offset:offset+13].strip()
                if not token:
                    continue
                value = float(token)
                if not row and value > 1e20:
                    complete = True
                    break
                if not math.isfinite(value):
                    raise ValueError('Non-finite waveform value')
                row.append(value)
                if len(row) == width:
                    if last is not None and row[0] < last[0]:
                        raise ValueError('Nonmonotone waveform time')
                    failed |= row[failed_index] >= 0.5*vdd
                    extra = []
                    if has_power:
                        current = -row[current_index]  # HSPICE reports current entering the source's + terminal.
                        power = row[voltage_index]*current
                        if last is not None:
                            energy += (row[0]-last[0])*(previous_power+power)/2
                            for integral in integrals.values():
                                if max(last[0], integral.start) < min(row[0], integral.end) and max(last[reset_index], row[reset_index]) >= 0.5*vdd:
                                    raise ValueError('Reset asserted inside a power measurement window')
                                integral.add(last[0], previous_power, row[0], power)
                        previous_power = power
                        extra = [current, power, energy]
                    writer.writerow([format(value, '.9e') for value in row+extra])
                    last = row; row = []; count += 1
            if complete:
                break
        # Some HSPICE releases end POST=2 output at a complete record without
        # the optional sentinel. The listing must independently conclude normally.
        if not count or (row and not allow_partial_tail):
            raise ValueError('Incomplete waveform file')
        if failed or last[failed_index] >= 0.5*vdd:
            raise ValueError('The physical failed pin was asserted')
        if last[done_index] < 0.5*vdd:
            raise ValueError('The physical done pin did not assert')
        if row:
            # HSPICE can stop writing midway through the final record at
            # Verilog-A $finish. Only accept this after a validated PASS
            # listing and a complete recorded sample with done=1, failed=0.
            print(f'{wave.name}: omitted incomplete final sample '
                  f'({len(row)}/{width} values); all complete samples retained', flush=True)
        if metrics is not None and integrals:
            metrics.update({name: integral.result() for name, integral in integrals.items()})
            idle = metrics['idle']
            scale = max(abs(idle['mean_w']), 1e-15)
            drift = abs(metrics['idle_first']['mean_w']-metrics['idle_second']['mean_w'])/scale
            metrics['idle_half_drift_relative'] = drift
            metrics['idle_current_a'] = idle['mean_w']/vdd
            # Assess the measured mean using drift and time-weighted RMS noise.
            # Preserve extrema separately; single solver-step spikes do not
            # by themselves imply that the window's mean is still drifting.
            metrics['idle_stable'] = int(idle['mean_w'] >= 0 and drift <= 0.01
                                         and idle['std_w']/scale <= 0.01)
        return count, last[0], len(columns)


def prepared_inputs(level, module):
    netlist = ROOT/(f'src_spice/block/{module}/{module}.sp' if level == 'block'
                    else f'src_spice/{level}/{module}.sp')
    return [netlist,
            ROOT/f'tb/{level}/{module}/{module}_environment.va',
            ROOT/f'tb/{level}/{module}/{module}_tb.sp']


def run_performance(level, module):
    """Add the dedicated report without rewriting any existing simulation output."""
    directory = ROOT/f'tb/{level}/results/{module}'
    script = directory/'perf_measure.py'
    report = directory/f'{module}_perf.txt'
    dependencies = [script, ROOT/'tb/perf_common.py', directory/f'{module}_waves.csv',
                    directory/f'{module}.log', ROOT/f'tb/{level}/{module}/{module}_environment.va']
    if not all(path.is_file() for path in dependencies):
        raise ValueError('Missing performance extractor or data for '+level+'/'+module)
    if (report.exists() and report.stat().st_mtime >= max(path.stat().st_mtime for path in dependencies)
            and 'Status: COMPLETE' in report.read_text()):
        return
    subprocess.run([sys.executable, str(script)], check=True)


def check_prepared(level, module):
    prepared = prepared_inputs(level, module)
    for path in prepared:
        if not path.is_file():
            raise ValueError('Missing prepared input: ' + str(path.relative_to(ROOT)))
    deck = prepared[2].read_text()
    flat_deck = re.sub(r'\n\s*\+\s*', ' ', deck)
    probes = ' '.join(re.findall(r'^\s*\.probe\s+tran\s+([^\n]+)', flat_deck, re.M | re.I))
    for required in (r'\bv\(vdd\)', r'\bi\(vpower\)'):
        if not re.search(required, probes, re.I):
            raise ValueError('TB must save v(Vdd) and i(VPOWER) for energy/leakage extraction')
    environment = prepared[1].read_text()
    for marker in ('SIM_IDLE_BEGIN', 'SIM_IDLE_END', 'IDLE_SETTLE', 'IDLE_WINDOW', 'IDLE_MARGIN'):
        if marker not in environment:
            raise ValueError('Missing post-round idle measurement: ' + marker)
    match = re.search(r'\bVDD_VALUE\s*=\s*([0-9.eE+-]+)', deck)
    if not match or float(match[1]) <= 0:
        raise ValueError('The prepared TB must declare a positive numeric VDD_VALUE')
    references = re.findall(r'^\s*\.(?:include|hdl)\s+[\"\']([^\"\']+)[\"\']', deck, re.M | re.I)
    local = {(ROOT/path).resolve() for path in references if not Path(path).is_absolute()}
    if local != {prepared[0].resolve(), prepared[1].resolve()}:
        raise ValueError('TB must reference exactly its prepared netlist and environment')
    for path in local:
        if not path.is_file():
            raise ValueError('Missing local TB reference: ' + str(path))
    # Match the actual DUT pin order, including SPICE continuation lines.
    netlist = re.sub(r'\n\s*\+\s*', ' ', prepared[0].read_text())
    flat_deck = re.sub(r'\n\s*\+\s*', ' ', deck)
    subckt = re.search(r'^\s*\.subckt\s+' + re.escape(module) + r'\s+([^\n]+)', netlist, re.M | re.I)
    dut = re.search(r'^\s*XDUT\s+([^\n]+)', flat_deck, re.M | re.I)
    if not subckt or not dut or dut[1].split()[-1].lower() != module.lower():
        raise ValueError('Missing top .subckt or XDUT instance')
    if [x.lower() for x in subckt[1].split()] != [x.lower() for x in dut[1].split()[:-1]]:
        raise ValueError('XDUT pins differ from the prepared top .subckt')
    return prepared, float(match[1])


def run_module(caddy, module, level='block', timeout=1800, threads=1, hpp=False):
    output = ROOT/f'tb/{level}/results/{module}'
    output.mkdir(parents=True, exist_ok=True)
    events = []; error = None; remote = None; safe_cleanup = False; export_complete = False
    listing = output/f'{module}.lis'; waves = output/f'{module}_waves.csv'
    (output/f'{module}.log').write_text('SIM_RUNNING module=' + module + '\n')
    listing.write_bytes(b''); waves.write_text('time\n')
    with tempfile.TemporaryDirectory(prefix='analog_suite_') as workspace:
        work = Path(workspace)
        try:
            prepared, vdd = check_prepared(level, module)
            result = caddy.shell('mktemp -d /tmp/ferroma_analog_XXXXXXXX\n')
            remote = result.stdout.strip()
            if result.returncode or not re.fullmatch(r'/tmp/ferroma_analog_[A-Za-z0-9]+', remote):
                remote = None
                raise ValueError('Could not create private Caddy work directory')
            with tarfile.open(work/'inputs.tar', 'w') as archive:
                for path in prepared:
                    archive.add(path, arcname=str(path.relative_to(ROOT)))
            result = caddy.copy(work/'inputs.tar', HOST+':'+remote+'/inputs.tar')
            if result.returncode:
                raise ValueError('Prepared-file transfer failed: ' + result.stderr.strip())
            parallel = ('-hpp ' if hpp else '') + f'-mt {threads} '
            script = (f'set -e\ncd {shlex.quote(remote)}\ntar xf inputs.tar\nrm inputs.tar\n'
                      f'mkdir results\nmodule load {MODULES}\n'
                      f'timeout --signal=TERM --kill-after=60s {timeout} '
                      f'hspice {parallel}-i tb/{level}/{module}/{module}_tb.sp -o results/{module} '
                      '> results/launch.txt 2>&1\n')
            print(f'{module}: HSPICE running one functional round at VDD={vdd:g} V', flush=True)
            print(f'{module}: Caddy work directory {remote}', flush=True)
            result = caddy.shell(script, timeout=timeout+120)
            safe_cleanup = result.returncode != 255
            for suffix in ('lis', 'tr0'):
                downloaded = caddy.copy(HOST+':'+remote+f'/results/{module}.{suffix}', work/f'{module}.{suffix}')
                if downloaded.returncode and suffix == 'lis':
                    raise ValueError('HSPICE listing unavailable: ' + downloaded.stderr.strip())
            shutil.copyfile(work/f'{module}.lis', listing)
            text = listing.read_text(errors='replace')
            events = extract_log_from_lis(text)
            listing_error = None
            try:
                validate_listing(text, events, result.returncode, require_power=True)
            except ValueError as failure:
                listing_error = failure
            # Preserve available voltages even when the functional test fails.
            try:
                metrics = {}
                count, stop, columns = export_wave_csv(
                    work/f'{module}.tr0', waves, vdd,
                    allow_partial_tail=listing_error is None,
                    windows=power_windows(events) if listing_error is None else None,
                    metrics=metrics, require_power=True)
                export_complete = True
                if listing_error is None:
                    events = events[:-1] + power_log(metrics, events) + events[-1:]
                print(f'{module}: exported {count} samples, {columns-1} signals, t={stop:.9g} s', flush=True)
            except (OSError, ValueError, subprocess.SubprocessError) as failure:
                if listing_error is None:
                    raise
            if listing_error is not None:
                raise listing_error
        except (OSError, ValueError, RuntimeError, subprocess.SubprocessError) as failure:
            error = str(failure)
        finally:
            if remote and safe_cleanup and export_complete and listing.stat().st_size:
                result = caddy.shell('rm -rf -- ' + shlex.quote(remote) + '\n')
                if result.returncode:
                    print('Temporary Caddy directory retained: ' + remote, file=sys.stderr)
            elif remote:
                print('Temporary Caddy directory retained for diagnosis: ' + remote, file=sys.stderr)
    if error:
        events.append('SIM_RUNNER_ERROR reason=' + error.replace('\n', ' '))
        if not any(re.match(r'SIM_(PASS|FAIL)\b', event) for event in events):
            events.append('SIM_FAIL reason=execution_or_export_failure')
    status = 'FAIL' if error else 'PASS'
    (output/f'{module}.log').write_text('\n'.join(events) + '\n\nFINAL RESULT: ' + status + '\n')
    if not error:
        run_performance(level, module)
    print(f'{module} : {status}\nresults   : {output.relative_to(ROOT)}', flush=True)
    return status


# This helper is copied to a private remote directory; it is Python 3.6 compatible.
# A detached supervisor keeps the ordered queue alive independently of SSH.
CAMPAIGN_WORKER = r"""
import gzip, json, os, re, shutil, subprocess, time
from pathlib import Path
root = Path(__file__).resolve().parent
os.chdir(str(root))
manifest = json.loads((root/'manifest.json').read_text())
state = {'pid': os.getpid(), 'started': time.time(), 'state': 'running',
         'jobs': [dict(job, state='queued') for job in manifest['jobs']]}
def save():
    temporary = root/'status.tmp'
    temporary.write_text(json.dumps(state, indent=2)+'\n')
    os.replace(str(temporary), str(root/'status.json'))
save()
for job in state['jobs']:
    module, level = job['module'], job['level']
    output = root/'results'/level/module
    output.mkdir(parents=True, exist_ok=True)
    command = ['timeout', '--signal=TERM', '--kill-after=60s', str(job['timeout']),
               'hspice', '-mt', str(job['threads'])]
    if job['hpp']: command.append('-hpp')
    command += ['-i', 'tb/{}/{}/{}_tb.sp'.format(level,module,module), '-o', str(output/module)]
    try:
        with (output/'launch.txt').open('w') as launch:
            process = subprocess.Popen(command, stdout=launch, stderr=subprocess.STDOUT)
            job.update(state='running', pid=process.pid, started=time.time())
            save()
            job['returncode'] = process.wait()
        job['ended'] = time.time()
        listing = (output/(module+'.lis')).read_text(errors='replace')
        events = [line.strip() for line in listing.splitlines() if re.match(r'^\s*SIM_[A-Z_]+\b', line)]
        valid = (job['returncode'] == 0 and re.search('job concluded', listing, re.I)
                 and not re.search(r'\*\*error\*\*|\*\*fatal\*\*|job aborted|convergence failure', listing, re.I)
                 and sum(e.startswith('SIM_PASS ') for e in events) == 1
                 and sum(e.startswith('SIM_IDLE_BEGIN ') for e in events) == 1
                 and sum(e.startswith('SIM_IDLE_END ') for e in events) == 1
                 and not any(e.startswith(('SIM_FAIL', 'SIM_ERROR')) for e in events))
        job['state'] = 'compressing'
        save()
        wave = output/(module+'.tr0')
        if wave.exists():
            temporary = output/(module+'.tr0.gz.tmp')
            with wave.open('rb') as source, gzip.open(str(temporary), 'wb', compresslevel=1) as target:
                shutil.copyfileobj(source, target, 1024*1024)
            os.replace(str(temporary), str(output/(module+'.tr0.gz')))
            wave.unlink()
        job['state'] = 'done' if valid else 'failed'
    except Exception as error:
        job.update(state='failed', error=str(error))
    save()
    # Stop dependent work after an actual failure; the evidence remains available.
    if job['state'] == 'failed':
        state['state'] = 'failed'
        break
else:
    state['state'] = 'done'
state['ended'] = time.time()
save()
"""


def remote_json(caddy, remote, filename):
    if not re.fullmatch(r'/tmp/ferroma_analog_campaign_[A-Za-z0-9]+', remote):
        raise ValueError('Invalid campaign directory')
    result = caddy.shell('cat ' + shlex.quote(remote+'/'+filename) + '\n')
    if result.returncode:
        raise RuntimeError(result.stderr.strip())
    return json.loads(result.stdout)


def input_hashes(level, module):
    return {str(path.relative_to(ROOT)): hashlib.sha256(path.read_bytes()).hexdigest()
            for path in prepared_inputs(level, module)}


def submit_campaign(caddy, jobs, timeout, threads, hpp):
    manifest = {'jobs': []}
    for level, module in jobs:
        check_prepared(level, module)
        manifest['jobs'].append({'level': level, 'module': module,
            'timeout': timeout, 'threads': threads or (8 if level == 'top' else 4 if level == 'subsystem' else 1),
            'hpp': hpp or level != 'block', 'hashes': input_hashes(level, module)})
    result = caddy.shell('mktemp -d /tmp/ferroma_analog_campaign_XXXXXXXX\n')
    remote = result.stdout.strip()
    if result.returncode or not re.fullmatch(r'/tmp/ferroma_analog_campaign_[A-Za-z0-9]+', remote):
        raise RuntimeError('Could not create the Caddy campaign directory')
    with tempfile.TemporaryDirectory(prefix='analog_campaign_') as directory:
        work = Path(directory)
        (work/'manifest.json').write_text(json.dumps(manifest, indent=2)+'\n')
        (work/'worker.py').write_text(CAMPAIGN_WORKER)
        (work/'start.sh').write_text('#!/bin/bash -l\nset -e\ncd '+shlex.quote(remote)+
                                    '\nmodule load '+MODULES+'\nexec python3 worker.py\n')
        with tarfile.open(work/'inputs.tar', 'w') as archive:
            for level, module in jobs:
                for path in prepared_inputs(level, module):
                    archive.add(path, arcname=str(path.relative_to(ROOT)))
            for name in ('manifest.json', 'worker.py', 'start.sh'):
                archive.add(work/name, arcname=name)
        result = caddy.copy(work/'inputs.tar', HOST+':'+remote+'/inputs.tar')
        if result.returncode:
            raise RuntimeError('Campaign upload failed: '+result.stderr.strip())
    result = caddy.shell('set -e\ncd '+shlex.quote(remote)+'\ntar xf inputs.tar\nrm inputs.tar\n'
                         'nohup setsid bash start.sh > supervisor.log 2>&1 < /dev/null &\n')
    if result.returncode:
        raise RuntimeError('Campaign launch failed: '+result.stderr.strip())
    print('CAMPAIGN '+remote, flush=True)
    print('Queue: '+', '.join(level+'/'+module for level,module in jobs), flush=True)
    return remote


def show_campaign(caddy, remote):
    status = remote_json(caddy, remote, 'status.json')
    print('Campaign: '+status['state'], flush=True)
    for job in status['jobs']:
        elapsed = (job.get('ended', time.time())-job['started']) if 'started' in job else 0
        print('{}/{}: {}{}'.format(job['level'], job['module'], job['state'],
                                  ' (%.0f s)' % elapsed if elapsed else ''), flush=True)
    return status


def collect_job(caddy, remote, job):
    level, module = job['level'], job['module']
    if input_hashes(level, module) != job['hashes']:
        raise ValueError('Prepared inputs changed since submission: '+level+'/'+module)
    output = ROOT/f'tb/{level}/results/{module}'
    marker = 'SIM_RUN campaign='+remote+' level='+level+' module='+module
    log = output/f'{module}.log'
    if log.exists() and marker in log.read_text() and 'FINAL RESULT: PASS' in log.read_text():
        run_performance(level, module)
        return
    output.mkdir(parents=True, exist_ok=True)
    prepared, vdd = check_prepared(level, module)
    error = None; events = []; details = []
    with tempfile.TemporaryDirectory(prefix='analog_collect_') as directory:
        work = Path(directory)
        for suffix in ('lis', 'tr0.gz'):
            result = caddy.copy(HOST+':'+remote+f'/results/{level}/{module}/{module}.{suffix}', work/f'{module}.{suffix}')
            if result.returncode:
                raise RuntimeError('Campaign result transfer failed: '+result.stderr.strip())
        listing = (work/f'{module}.lis').read_text(errors='replace')
        events = extract_log_from_lis(listing)
        try:
            validate_listing(listing, events, job['returncode'], require_power=True)
            metrics = {}
            count, stop, columns = export_wave_csv(work/f'{module}.tr0.gz', work/f'{module}_waves.csv', vdd,
                allow_partial_tail=True, windows=power_windows(events), metrics=metrics, require_power=True)
            details = power_log(metrics, events)
            print(f'{level}/{module}: {count} samples; idle stable={metrics["idle_stable"]}; '
                  f'active energy={metrics["active"]["energy_j"]:.6e} J', flush=True)
            if not metrics['idle_stable']:
                details.append('SIM_MEASUREMENT_WARNING reason=idle_not_settled leakage_requires_longer_idle_window')
        except (ValueError, OSError) as failure:
            error = str(failure)
        shutil.copyfile(work/f'{module}.lis', output/f'{module}.lis')
        if (work/f'{module}_waves.csv').exists():
            shutil.move(str(work/f'{module}_waves.csv'), str(output/f'{module}_waves.csv'))
        else:
            (output/f'{module}_waves.csv').write_text('time\n')
    if error:
        events += ['SIM_RUNNER_ERROR reason='+error.replace('\n',' ')]
    else:
        events = events[:-1]+details+events[-1:]
    log.write_text(marker+'\n'+'\n'.join(events)+'\n\nFINAL RESULT: '+('FAIL' if error else 'PASS')+'\n')
    if error:
        raise ValueError(level+'/'+module+': '+error)
    run_performance(level, module)
    # Raw remote evidence is deliberately retained, including compressed native data.


def collect_campaign(caddy, remote, watch=False, levels=None):
    while True:
        status = remote_json(caddy, remote, 'status.json')
        for job in status['jobs']:
            if job['state'] in ('done', 'failed') and (not levels or job['level'] in levels):
                collect_job(caddy, remote, job)
        if status['state'] in ('done', 'failed') or not watch:
            show_campaign(caddy, remote)
            return int(status['state'] == 'failed')
        time.sleep(30)


def main(level='block'):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('modules', nargs='*', help='Prepared module names; default: all prepared modules')
    parser.add_argument('--control-path', type=Path, help='Reuse an already authenticated SSH master')
    parser.add_argument('--all-levels', action='store_true', help='Select block, subsystem and top in that order')
    parser.add_argument('--levels', nargs='+', choices=('block','subsystem','top'),
                        help='Select all modules in the specified levels, e.g. block subsystem')
    modes = parser.add_mutually_exclusive_group()
    modes.add_argument('--build-only', action='store_true', help='Rebuild selected supported netlists locally, without simulating')
    modes.add_argument('--submit', action='store_true', help='Submit a persistent ordered Caddy campaign; return immediately')
    modes.add_argument('--status', metavar='REMOTE_DIR', help='Show a submitted campaign')
    modes.add_argument('--collect', metavar='REMOTE_DIR', help='Collect completed campaign results and power metrics')
    parser.add_argument('--watch', action='store_true', help='With --collect: keep collecting until the campaign ends')
    parser.add_argument('--rebuild', action='store_true', help='Rebuild selected supported PRS modules before simulation')
    parser.add_argument('--prs-root', type=Path, help='Alternative PRS tree for a rebuild; sizing/topology checks still apply')
    parser.add_argument('--check-only', action='store_true', help='Validate prepared files, references and DUT pins locally; do not connect or simulate')
    parser.add_argument('--timeout', type=int, default=None,
                        help='Wall-clock limit per run: default 7 days for submitted campaigns, 1800 s block / 86400 s upper foreground')
    parser.add_argument('--threads', type=int, default=None, help='Threads: foreground 1; submitted block 1, subsystem 4, top 8')
    parser.add_argument('--hpp', action='store_true', help='Enable HSPICE high performance parallel transient analysis')
    args = parser.parse_args()
    if (args.all_levels or args.levels) and args.modules:
        parser.error('--all-levels/--levels select all modules; omit module names')
    if args.all_levels and args.levels:
        parser.error('Choose either --all-levels or --levels')
    if args.watch and not args.collect:
        parser.error('--watch requires --collect')
    if (args.rebuild or args.build_only) and (args.status or args.collect or getattr(args, 'report_only', False)):
        parser.error('Rebuild requires a new run, --build-only, or --check-only')
    if args.prs_root and not (args.rebuild or args.build_only):
        parser.error('--prs-root requires --rebuild or --build-only')
    if args.timeout is None:
        args.timeout = 604800 if args.submit else 1800 if level == 'block' else 86400
    modules = args.modules or sorted(path.name for path in (ROOT/f'tb/{level}').iterdir()
                                    if path.is_dir() and path.name != 'results'
                                    and (path/f'{path.name}_tb.sp').is_file())
    if not modules or any(not re.fullmatch(r'[A-Za-z_][A-Za-z0-9_]*', name) for name in modules):
        parser.error('Specify at least one valid prepared module')
    modules = list(dict.fromkeys(modules))
    if args.timeout <= 0:
        parser.error('--timeout must be positive')
    if args.threads is not None and args.threads <= 0:
        parser.error('--threads must be positive')
    jobs = [(level, module) for module in modules]
    if args.all_levels or args.levels:
        selected_levels = ('block','subsystem','top') if args.all_levels else tuple(dict.fromkeys(args.levels))
        jobs = [(selected, path.name) for selected in selected_levels
                for path in sorted((ROOT/f'tb/{selected}').iterdir())
                if path.is_dir() and (path/f'{path.name}_tb.sp').is_file()]
        jobs.sort(key=lambda pair: (('block','subsystem','top').index(pair[0]), pair[1] != 'StopcodeSel', pair[1]))
    try:
        if args.rebuild or args.build_only:
            rebuild_netlists(jobs, args.prs_root, check_only=args.check_only)
            if args.build_only:
                return 0
        for selected, module in ([] if args.status or args.collect else jobs):
            prepared, vdd = check_prepared(selected, module)
            if args.check_only:
                print(f'{selected}/{module}: prepared paths and DUT pins OK; VDD={vdd:g} V')
    except (OSError, ValueError, subprocess.SubprocessError) as failure:
        print(str(failure), file=sys.stderr)
        return 1
    if args.check_only:
        print(f'{len(jobs)} prepared tests verified; no simulations launched')
        return 0
    with tempfile.TemporaryDirectory(prefix='analog_ssh_') as directory:
        caddy = Caddy(args.control_path or Path(directory)/'master')
        try:
            caddy.connect()
        except (OSError, RuntimeError, subprocess.SubprocessError) as failure:
            print(str(failure), file=sys.stderr)
            print('FINAL SUITE RESULT: FAIL')
            return 1
        try:
            if args.status:
                show_campaign(caddy, args.status)
                return 0
            if args.collect:
                return collect_campaign(caddy, args.collect, args.watch, args.levels)
            if args.submit:
                submit_campaign(caddy, jobs, args.timeout, args.threads, args.hpp)
                return 0
            statuses = [run_module(caddy, module, selected, args.timeout, args.threads or 1, args.hpp)
                        for selected,module in jobs]
        except (OSError, ValueError, RuntimeError, subprocess.SubprocessError) as failure:
            print(str(failure), file=sys.stderr)
            return 1
    passed = statuses.count('PASS'); failed = statuses.count('FAIL')
    print(f'\n{passed} PASS\n{failed} FAIL\nFINAL SUITE RESULT: ' + ('FAIL' if failed else 'PASS'))
    return int(bool(failed))


if __name__ == '__main__':
    raise SystemExit(main())
