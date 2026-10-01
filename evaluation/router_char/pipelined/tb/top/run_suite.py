#!/usr/bin/env python3
"""Run, collect, and characterize Router, including preparation of full LUT coverage.

Use --prepare-luts to prepare all supported LUT cases before simulation.
The default preserves the current testbench. Outputs and LUTs go to results/Router.
"""
import argparse
from collections import defaultdict
from contextlib import redirect_stdout
from datetime import datetime, timezone
import hashlib
import io
import json
from pathlib import Path
import re
import runpy
import sys
import tempfile

HERE = Path(__file__).resolve().parent
PROJECT = HERE.parents[4]
sys.path.insert(0, str(PROJECT))
sys.path.insert(0, str(HERE.parent))
from evaluation.golden_model.router import route_packet, pack_nibbles
from evaluation.golden_model.router import FLAG_BITS, FLIT_BITS, MLTC_MASK, PAYLOAD_BITS, TAIL_MASK
from perf_common import events_from, extract_router_luts

def route_reference(port, packet, terminate_branches=False):
    if port not in range(5) or not packet:
        raise ValueError('Invalid port/empty packet')
    if any(type(w) is not int or not 0 <= w < 2**32 for w in packet):
        raise ValueError('Expected raw unsigned 32-bit words')
    if not packet[-1] & 1 or any(w & 1 for w in packet[:-1]):
        raise ValueError('Invalid tail framing')
    bits = f'{packet[0]:032b}'
    route = bits[:19]
    # PRT MltcSel comes before StopcodeSel. CRT has no MltcSel.
    direct_mc = port == 4 and bits[-2] == '1'
    stop = route == '1'+'0'*18
    if not direct_mc and not stop:
        if port < 4 and route[0] == '1':
            output, consumed = 4, 1
        elif port < 4:
            output, consumed = int(route[1:3], 2), 3
        else:
            output, consumed = int(route[:2], 2), 2
        shifted = int(route[consumed:]+'0'*consumed+bits[19:], 2)
        return {output: [shifted]+list(packet[1:])}
    source = list(packet if direct_mc else packet[1:])
    route_words = []
    while source:
        word = source.pop(0)
        if word & 1:
            raise ValueError('Tail before routing terminator')
        route_words.append(word)
        if f'{word:08x}'[-2] == '0':
            break
    else:
        raise ValueError('Missing routing terminator')
    if not source:
        raise ValueError('Missing payload')
    digits = ''.join(f'{w:08x}'[:7] for w in route_words)
    mask = int(digits[0], 16)
    if not mask:
        raise ValueError('Empty initial mask')
    branches = [i for i, enabled in enumerate(f'{mask:04b}') if enabled == '1']
    frontier = list(branches)
    streams = {i: [] for i in branches}
    cursor = 1
    while cursor < len(digits) and digits[cursor] != '0':
        if not frontier:
            raise ValueError('Extra route nodes')
        following = []
        for owner in frontier:
            if cursor >= len(digits) or digits[cursor] == '0':
                raise ValueError('Incomplete breadth-first level')
            mask = digits[cursor]
            streams[owner].append(mask)
            following.extend([owner]*f'{int(mask,16):04b}'.count('1'))
            cursor += 1
        frontier = following
    if cursor == len(digits) or any(ch != '0' for ch in digits[cursor:]):
        raise ValueError('Missing/invalid flush padding')
    outputs = {}
    for child, stream in streams.items():
        if stream and terminate_branches:
            stream = stream+['0']
        encoded = [int(''.join(stream[start:start+7]).ljust(7, '0')+'2', 16)
                   for start in range(0, len(stream), 7)]
        outputs[child] = encoded+source
    return outputs


INPUTS = ['C0i', 'C1i', 'C2i', 'C3i', 'Pi']
OUTPUTS = ['C0o', 'C1o', 'C2o', 'C3o', 'Po']
MANIFEST = HERE / 'Router/lut_manifest.json'
NETLIST = HERE.parents[1] / 'src_spice/top/Router.sp'
ARTIFACTS = HERE.parents[2] / 'archives/router_tb_20260920'
# Match the actual, independently recovered first sixteen experiments. The
# encoding regression still explicitly tests A5A51234 and all 32 bit positions.
UNICAST_PAYLOAD = 0x85A51234


def parser_features(words):
    """Exact QuadRouter level/count state, including switches across words.

    z excludes the first zero (the flush is processed); the low 0010 framing
    nibble is never counted. First-mask work has no selected output child.
    """
    nibbles = [word >> shift & 15 for word in words for shift in range(28, 3, -4)]
    mask = nibbles[0]
    if not mask:
        raise ValueError('Empty multicast mask')
    counts = [int(bool(mask & (8 >> c))) for c in range(4)]
    owners = [None] * len(nibbles)
    pos = 1
    while pos < len(nibbles) and nibbles[pos]:
        if max(counts) > 255 or not any(counts):
            raise ValueError('Unsupported counter state')
        following = [0]*4
        for child in range(4):
            for _ in range(counts[child]):
                if pos >= len(nibbles) or not nibbles[pos]:
                    raise ValueError('Zero inside level')
                owners[pos] = child
                following[child] += bin(nibbles[pos]).count("1")
                pos += 1
        counts = following
    if pos == len(nibbles) or any(nibbles[pos:]):
        raise ValueError('Missing terminal zero')
    result, previous = [], None
    for start in range(0, len(nibbles), 7):
        sequence = [c for c in owners[start:start+7] if c is not None]
        switches = 0
        for child in sequence:
            switches += previous is not None and child != previous
            previous = child
        result.append(dict(z=max(0, min(7, start+7-pos-1)), s=switches, children=sequence))
    return result


def cases():
    result = []
    def add(port, words, classes, mode, label, **extra):
        if len(words) != len(classes):
            raise ValueError('Every raw wire flit needs its own class')
        for word, cls in zip(words, classes):
            if cls in ('first', 'middle', 'tail'):
                if word & MLTC_MASK or bool(word & TAIL_MASK) != (cls == 'tail'):
                    raise ValueError('Payload wire pattern has inconsistent mltc/tail flags')
            elif cls == 'route' and (not word & MLTC_MASK or word & TAIL_MASK):
                raise ValueError('Multicast route wire pattern needs mltc=1 and tail=0')
        out = route_packet(port, words)
        if out != route_reference(port, words):
            raise ValueError('Production golden differs from independent PDF reference: '+label)
        result.append(dict(case=len(result), port=port, words=words,
                           classes=classes, mode=mode, label=label,
                           outputs={str(p): w for p, w in out.items()}, **extra))
    for p in range(5):
        for q in range(5):
            if p == q == 4:
                continue
            head = ((1 << 31) | (1 << 29)) if q == 4 else (
                (q << (29 if p < 4 else 30)) | (1 << 25))
            assert list(route_packet(p, [head, 1])) == [q]
            add(p, [head, UNICAST_PAYLOAD, 0x5A5A2469],
                ['header', 'middle', 'tail'], 'isolated', f'u{p}_{q}', output=q)
            for repeat in range(3):
                add(p, [head]+[UNICAST_PAYLOAD ^ (k << 8) for k in range(6)]+[0x5A5A2469],
                    ['header']+['middle']*6+['tail'], 'burst', f'u{p}_{q}',
                    output=q, repeat=repeat, group_end=repeat == 2)
        for mask in (8, 15):
            route = pack_nibbles([mask], terminate=True)
            prefix = [] if p == 4 else [0x80000000]
            for mode, n in [('isolated', 3), ('burst', 9)]:
                payload = [0xCAFEAA54 ^ (k << 8) for k in range(n-1)]+[0xFACE2469]
                add(p, prefix+route+payload,
                    ['setup']*len(prefix)+['route']*len(route)+['first']+['middle']*(n-2)+['tail'],
                    mode, f'm{p}_{mask}', multicast=True, mask=mask, group_end=True,
                    features=parser_features(route))
    # A multicast addressed to a remote subtree reaches its parser from Pi
    # carrying the consumed stop header, unlike direct parent multicast input.
    add(4, [0x80000000, 0x80000002, 0xCAFEAA54, 0xFACE2469],
        ['setup','route','first','tail'], 'isolated', 'pi_stop_setup',
        multicast=True, features=parser_features([0x80000002]), group_end=True)
    # Adjacent chain depths differ by exactly one useful nibble/one skipped
    # trailing zero. The final zero is processed, not skipped.
    routes = [(f'z_chain_{n}', [8]*n, 'fit') for n in range(1, 8)]
    routes += [('same_child', [1]+[15]*21, 'heldout'),
               ('matched_same_child', [8]+[8]*28, 'fit'),
               ('high_switch', [15]+[8]*28, 'fit'),
               ('heldout_chain', [4]*4, 'heldout'),
               ('heldout_switch', [15]+[4]*12, 'heldout'),
               ('heldout_branch', [3]+[8]*6, 'heldout')]
    for label, nibbles, role in routes:
        route = pack_nibbles(nibbles, terminate=True)
        for mode in ('isolated', 'burst'):
            add(4, route+[0x13572469], ['route']*len(route)+['tail'], mode,
                label, multicast=True, parser_role=role, features=parser_features(route), group_end=True)
    return result


def modules():
    text = re.sub(r'\n\s*\+\s*', ' ', NETLIST.read_text())
    return {m[1]: m[0].splitlines() for m in re.finditer(
        r'^\.subckt\s+(\S+).*?^\.ends[^\n]*', text, re.M | re.S | re.I)}


def buffer_paths():
    definitions = modules()
    found = []
    def visit(name, path):
        if name in ('PCFB32', 'PCFB4'):
            found.append(path.lower())
        else:
            for line in definitions[name]:
                if line.startswith(('X', 'x')):
                    f = line.split()
                    visit(f[-1], path+'.'+f[0])
    visit('Router', 'xdut')
    return found


def quiescence_signals(buffers):
    signals = [(path+'.'+node, high) for path in buffers
               for node, high in [('e', True), ('g', False), ('n__l__a', True), ('inv__r__a', True)]]
    signals += [(f'xdut.xmu.ir_ao0_a{rail}_5{bit}_6', False)
                for rail in ('t', 'f') for bit in range(32)]
    signals.append(('xdut.xmu.ir_ao0_aa', False))
    return signals


def quiescence_module(signals):
    names = ', '.join(['ready']+[f's{i}' for i in range(len(signals))])
    lines = [f'module router_quiescence({names});', f'inout {names};',
             f'electrical {names};', 'parameter real SUPPLY=1.1;',
             'integer quiet;', 'analog begin', 'quiet=1;']
    for index, (path, high) in enumerate(signals):
        comparison = f'V(s{index})<0.9*SUPPLY' if high else f'V(s{index})>0.1*SUPPLY'
        lines.append(f'if ({comparison}) quiet=0;')
    lines += ['V(ready) <+ transition(SUPPLY*quiet,0,1p,1p);', 'end', 'endmodule']
    return '\n'.join(lines)


def signed_word(value):
    """HSPICE R-2020.12 corrupts some 32'h literals (A0000000 -> 80000000).

    Decimal signed integers were verified on that actual compiler. Keep each
    operand in the signed 32-bit domain, including the most negative value.
    """
    value = value & 0xffffffff
    return value if value < 2**31 else value - 2**32


def table(name, values):
    return '\n'.join([f'analog function integer {name};', 'input index; integer index;',
                      'begin case(index)']+
                     [f'{i}: {name}={signed_word(v)};' for i, v in enumerate(values)]+
                     [f'default: {name}=0;', 'endcase end endfunction'])


def prepare(case_ids=None, output_dir=None, recovered_prefix=None, allow_prior_pipeline=False):
    destination = Path(output_dir or HERE/'Router').resolve()
    record_path = HERE/'Router/lut_campaign.json'
    if destination == (HERE/'Router').resolve() and record_path.exists():
        state = json.loads(record_path.read_text()).get('status')
        if state in ('running', 'submitted', 'waiting_for_prerequisite'):
            raise ValueError('Production inputs belong to an active campaign; use --output-dir or stop that campaign before regenerating')
    cs = cases()
    recovery = None
    if recovered_prefix is not None:
        from perf_common import rejected_energy_is_excluded
        if case_ids is not None:
            raise ValueError('Use either a selected smoke test or a recovered prefix')
        path = Path(recovered_prefix).resolve()
        saved = json.loads(path.read_text())
        metadata = saved['metadata']
        target_hash = hashlib.sha256(NETLIST.read_bytes()).hexdigest()
        changed_netlist = metadata['netlist_sha256'] != target_hash
        if ((changed_netlist and not allow_prior_pipeline)
                or not metadata.get('campaign_hashes_verified')
                or not metadata.get('prefix_physical_identity_and_handshakes_verified')
                or not rejected_energy_is_excluded(saved)):
            raise ValueError('Recovered prefix failed physical or provenance checks')
        prefix = json.loads((path.parent/'actual_prefix_manifest.json').read_text())
        if hashlib.sha256((path.parent/'actual_prefix_manifest.json').read_bytes()).hexdigest() != metadata['recovery_manifest_sha256']:
            raise ValueError('Recovered identity manifest changed')
        count = len(prefix['cases'])
        if [c['case'] for c in prefix['cases']] != list(range(count)):
            raise ValueError('Only a contiguous completed prefix can be reused')
        for old, current in zip(prefix['cases'], cs):
            for key in ('words', 'outputs', 'port', 'mode', 'classes', 'label'):
                if old[key] != current[key]:
                    raise ValueError('Recovered case differs from canonical campaign: '+key)
        if len(saved['transactions']) != len(prefix['transfers']):
            raise ValueError('Recovered prefix contains incomplete observations')
        case_ids = list(range(count, len(cs)))
        recovery = dict(path=str(path), sha256=hashlib.sha256(path.read_bytes()).hexdigest(),
            skipped_cases=list(range(count)), transfer_offset=len(prefix['transfers']),
            input_offsets=[sum(r['port']==p for r in prefix['transfers']) for p in range(5)],
            output_offsets=list(map(len, prefix['expected'])), campaign=metadata['campaign'])
        # A completed physical prefix can be resumed before all fitted models
        # are validated. Preserve those failures explicitly; build_luts still
        # recomputes convergence and refuses to publish a usable LUT on failure.
        recovery['prior_validation'] = saved['validation']
        recovery['excluded_energy_windows'] = saved['validation']['isolation_rejections']
        recovery['unvalidated_ii_groups'] = [r for r in saved.get('ii_convergence', [])
                                             if not r['passes']]
        if changed_netlist:
            recovery['netlist_transition'] = dict(user_authorized=True,
                from_sha256=metadata['netlist_sha256'], to_sha256=target_hash,
                reason='Explicit reuse of verified measurements from the previous pipeline; values retain their original DUT and campaign provenance')
    if case_ids is not None:
        chosen = set(case_ids)
        if not chosen or not chosen <= set(range(len(cs))):
            raise ValueError('Select existing, nonempty case IDs')
        cs = [c for c in cs if c['case'] in chosen]
    for index, case in enumerate(cs):
        case['original_case'] = case['case']
        case['case'] = index
    output_dir = Path(output_dir or HERE/'Router')
    output_dir.mkdir(parents=True, exist_ok=True)
    transfers, expected = [], [[] for _ in range(5)]
    counts = [0]*5
    for case in cs:
        start = len(transfers)
        offsets = list(map(len, expected))
        for p, words in case['outputs'].items():
            for k, w in enumerate(words):
                expected[int(p)].append(dict(word=w, case=case['case'], local=k))
        payload_n = sum(c in ('first', 'middle', 'tail') for c in case['classes'])
        for k, (w, cls) in enumerate(zip(case['words'], case['classes'])):
            mapped = []
            for out, words in case['outputs'].items():
                # Payload suffix identity survives transformation/replication.
                if cls in ('first', 'middle', 'tail'):
                    idx = len(words)-(len(case['words'])-k)
                elif cls == 'header':
                    idx = 0
                else:
                    continue
                mapped.append([int(out), offsets[int(out)]+idx])
            transfers.append(dict(id=len(transfers), case=case['case'], port=case['port'],
                                  index=counts[case['port']], local=k, word=w, cls=cls,
                                  mapped=mapped, isolated=case['mode']=='isolated',
                                  route_continues=(cls=='route' and k+1<len(case['classes'])
                                                   and case['classes'][k+1]=='route'),
                                  drain=(k==len(case['words'])-1 and case.get('group_end', True))))
            counts[case['port']] += 1
        case['transfer_start'] = start
        case['expected_end'] = list(map(len, expected))
    # Even a smoke subset ending inside a burst group must drain its last packet.
    transfers[-1]['drain'] = True
    meta = dict(schema_version=1, technology='PTM65 TT', VDD=1.1, temperature_C=27,
                multicast_counter_bits=8,
                explicit_route_terminator=False,
                flit_layout=dict(transport_bits=FLIT_BITS, payload_bits=PAYLOAD_BITS,
                                 flag_bits=FLAG_BITS, tail_bit=0, mltc_bit=1,
                                 reserved_flag_bits=[2, 3],
                                 stimulus_domain='raw_wire_patterns',
                                 reserved_flags='Intentional wire activity; not useful payload data'),
                netlist_sha256=hashlib.sha256(NETLIST.read_bytes()).hexdigest(),
                cases=cs, transfers=transfers, expected=expected, buffers=buffer_paths(),
                legal_pairs=[[not (i==j==4) for j in range(5)] for i in range(5)],
                notes=['All Ci->Co, including same-index loopback, are wired in Router.act.',
                       'F11111112 is 36 bits and invalid; high_switch uses valid breadth-first words.',
                       'Energy per transport bit uses 32 wire bits; useful payload is 28 bits with four reserved flag positions.',
                       'Payload flits clear mltc; only the final flit sets tail. Reserved bits 2/3 retain raw test-pattern activity.',
                       'Header/tail II are class-conditioned intervals in legal packet streams, not illegal homogeneous streams.',
                       'Quiet intervals require all PCFB empty/ready states and stable supply in extraction.'])
    meta['literal_encoding'] = 'signed_decimal_with_independent_16_bit_self_checks'
    signals = quiescence_signals(meta['buffers'])
    meta['quiescence_monitor'] = dict(buffers=len(meta['buffers']), signals=len(signals),
        serializer_input=True, low_fraction=0.1, high_fraction=0.9,
        partial_route_outputs='Allow incomplete output rails between route words; require completed input/parser work and no pending output acknowledgement',
        purpose='Drain internal work before isolated quiet windows; bursts remain continuous')
    if recovery is not None:
        meta['recovered_prefix'] = recovery
    (output_dir/'lut_manifest.json').write_text(json.dumps(meta, indent=2)+'\n')
    env = output_dir/'Router_environment.va'
    old = (HERE/'Router/Router_environment.va').read_text()
    declaration = old[old.index('`include'):old.index('parameter real SUPPLY')]
    if 'dut_ready' not in declaration:
        declaration = declaration.replace('    reset,', '    reset,\n    dut_ready,', 1)
        declaration += 'inout dut_ready; electrical dut_ready;\n'
    declaration = '// Generated LUT-only Router campaign; identities are in lut_manifest.json.\n'+declaration.rstrip()
    drives = old[old.index('  V(C0i_t_0) <+'):].split('endmodule', 1)[0]+'endmodule\n'
    lines = [declaration, '''parameter real SUPPLY=0.0;
parameter real TICK=10p, TD=0p, EDGE=10p, STOP_TIME=20u;
parameter real CHECK_START=100.01n, IDLE_SETTLE=5n, IDLE_WINDOW=20n, IDLE_MARGIN=1n;
// A queued tail can wait for up to five route words to finish parsing.
// This is a liveness watchdog, not an imposed delay on any handshake.
parameter real PROGRESS_TIMEOUT=1u;
integer active, finished, failure, tx, phase, p, j, k, drained, quiet, all_done;
integer tx_valid[0:4], tx_word[0:4], ack[0:4], rx_phase[0:4], rx_index[0:4];
integer valid_word[0:4], spacer[0:4], word[0:4], held[0:4], illegal[0:4];
integer source_checked, input_hi, input_lo, input_valid, input_illegal;
real threshold, ready, idle_start, round_time, issued, failure_stop;
integer idle_started, idle_completed;''']
    checks = []
    # The independent halves stay below 65536, never use full-width literals,
    # and are checked before the DUT sees a single transaction. This catches a
    # common-mode corruption of both stimulus and golden result tables.
    def checked_table(name, values):
        lines.append(table(name, values))
        lines.append(table(name+'_hi', [v >> 16 & 65535 for v in values]))
        lines.append(table(name+'_lo', [v & 65535 for v in values]))
        checks.append(f'''    for (k=0;k<{len(values)};k=k+1) begin
      if ((({name}(k) >> 16) & 65535)!={name}_hi(k) || ({name}(k) & 65535)!={name}_lo(k)) begin
        failure=1; $display("SIM_ERROR t=%e reason=constant_encoding table={name} index=%d",$abstime,k);
      end
    end''')
    for name, key in [('stimulus','word'), ('source','port'), ('case_id','case'), ('local_id','local'), ('input_index','index')]:
        checked_table(name, [t[key] for t in transfers])
    lines.append(table('isolated', [int(t['isolated']) for t in transfers]))
    lines.append(table('route_continues', [int(t['route_continues']) for t in transfers]))
    lines.append(table('drain', [int(t['drain']) for t in transfers]))
    for p in range(5):
        checked_table(f'gold{p}', [x['word'] for x in expected[p]])
        targets = []
        for t in transfers:
            if t['drain']:
                targets.append(cs[t['case']]['expected_end'][p])
            else:
                targets.append(max([idx+1 for out,idx in t['mapped'] if out==p] or [0]))
        lines.append(table(f'target{p}', targets))
    lines += ['''analog begin
  @(initial_step) begin
    active=0; finished=0; failure=0; tx=0; phase=0; ready=0;
    idle_started=0; idle_completed=0; idle_start=-1; round_time=-1; issued=0; source_checked=0; failure_stop=-1;
    threshold=SUPPLY/2;
    for (j=0;j<5;j=j+1) begin tx_valid[j]=0; tx_word[j]=0; ack[j]=0; rx_phase[j]=0; rx_index[j]=0; end''',
              *checks, '''    if (!failure) $display("SIM_CONSTANTS_PASS t=%e",$abstime);
    else begin $display("SIM_FAIL t=%e",$abstime); $finish(0); end
  end
  @(timer(CHECK_START,TICK)) begin
    if (!active && !finished && V(reset)<threshold) begin
      active=1; ready=$abstime+IDLE_SETTLE;
      $display("SIM_RESET t=%e",$abstime);
    end''']
    for p, name in enumerate(OUTPUTS):
        lines.append(f'    valid_word[{p}]=1; spacer[{p}]=1; illegal[{p}]=0; word[{p}]=0;')
        for bit in range(32):
            a,b=f'V({name}_t_{bit})', f'V({name}_f_{bit})'
            lines += [f'    if ({a}<threshold && {b}<threshold) valid_word[{p}]=0;',
                      f'    if ({a}>=threshold || {b}>=threshold) spacer[{p}]=0;',
                      f'    if ({a}>=threshold && {b}>=threshold) illegal[{p}]=1;',
                      f'    if ({a}>=threshold) word[{p}]=word[{p}] | (1 << {bit});']
        lines.append(f'''    if (active && !failure) begin
      if (illegal[{p}]) begin failure=1; $display("SIM_ERROR t=%e reason=illegal_dual_rail channel={name}",$abstime); end
      if (rx_phase[{p}]==0 && valid_word[{p}]) begin
        if (rx_index[{p}]>={len(expected[p])} || word[{p}]!=gold{p}(rx_index[{p}])) begin
          failure=1; $display("SIM_ERROR t=%e reason=golden_mismatch channel={name} index=%d expected=%h actual=%h",$abstime,rx_index[{p}],gold{p}(rx_index[{p}]),word[{p}]);
        end else $display("SIM_RX t=%e channel={name} index=%d expected=%h actual=%h PASS",$abstime,rx_index[{p}],gold{p}(rx_index[{p}]),word[{p}]);
        held[{p}]=word[{p}]; ack[{p}]=1; rx_phase[{p}]=1;
      end else if (rx_phase[{p}]==1) begin
        if (valid_word[{p}] && word[{p}]!=held[{p}]) begin failure=1; $display("SIM_ERROR t=%e reason=unstable_word",$abstime); end
        if (spacer[{p}]) begin ack[{p}]=0; rx_phase[{p}]=2; end
      end else if (rx_phase[{p}]==2 && V({name}_a)<threshold) begin
        rx_index[{p}]=rx_index[{p}]+1; rx_phase[{p}]=0;
      end
    end''')
    lines += [f'    if (active && !finished && !failure && tx<{len(transfers)}) begin',
              '      p=source(tx);']
    for p,name in enumerate(INPUTS):
        lines.append(f'''      if (p=={p} && phase==1 && !source_checked && $abstime>=issued+2*EDGE+TD) begin
        input_hi=0; input_lo=0; input_valid=1; input_illegal=0;''')
        for bit in range(32):
            a, b = f'V({name}_t_{bit})', f'V({name}_f_{bit})'
            part = 'input_hi' if bit >= 16 else 'input_lo'
            lines += [f'        if (({a}>=threshold)==({b}>=threshold)) input_valid=0;',
                      f'        if ({a}>=threshold && {b}>=threshold) input_illegal=1;',
                      f'        if ({a}>=threshold) {part}={part} | {1 << (bit % 16)};']
        lines.append('''        if (!input_valid || input_illegal || input_hi!=stimulus_hi(tx) || input_lo!=stimulus_lo(tx)) begin
          failure=1; $display("SIM_ERROR t=%e reason=physical_input_mismatch id=%d hi=%d lo=%d",$abstime,tx,input_hi,input_lo);
        end else begin source_checked=1; $display("SIM_INPUT_PASS t=%e id=%d hi=%d lo=%d",$abstime,tx,input_hi,input_lo); end
      end''')
        lines.append(f'''      if (p=={p} && phase==1 && V({name}_a)>=threshold) begin
        if (source_checked) begin tx_valid[p]=0; phase=2; end
      end else if (p=={p} && phase==2 && V({name}_a)<threshold) begin
        phase=3; ready=$abstime;
      end''')
    lines += ['      drained=1; quiet=1;', '      if (V(dut_ready)<threshold) drained=0;']
    for p,name in enumerate(OUTPUTS):
        lines.append(f'      if ((route_continues(tx) ? valid_word[{p}] : !spacer[{p}]) || rx_phase[{p}]!=0 || rx_index[{p}]<target{p}(tx)) drained=0;')
    lines += ['''      if (phase==3 && ((!isolated(tx) && !drain(tx)) || drained)) begin
        if (isolated(tx) || drain(tx)) begin phase=4; ready=$abstime+IDLE_SETTLE; end
        else begin tx=tx+1; phase=0; end
      end
      if (phase==4 && !drained) begin phase=3; ready=$abstime; end
      if (phase==4 && $abstime>=ready) begin
        $display("SIM_LUT_END t=%e id=%d",$abstime,tx); tx=tx+1; phase=0;
      end''', f'''      if (phase==0 && tx<{len(transfers)} && $abstime>=ready && (tx>0 || V(dut_ready)>=threshold)) begin
        p=source(tx); tx_word[p]=stimulus(tx); tx_valid[p]=1; phase=1; source_checked=0; issued=$abstime;
        $display("SIM_LUT_BEGIN t=%e id=%d case=%d local=%d",$abstime,tx,case_id(tx),local_id(tx));''']
    for p,name in enumerate(INPUTS):
        lines.append(f'        if (p=={p}) $display("SIM_TX t=%e channel={name} index=%d word=%h",$abstime,input_index(tx),tx_word[p]);')
    lines += ['      end', '''      if (phase!=0 && $abstime-issued>PROGRESS_TIMEOUT) begin
        failure=1; $display("SIM_ERROR t=%e reason=no_progress id=%d phase=%d",$abstime,tx,phase);
      end
      if (tx==0 && phase==0 && $abstime>CHECK_START+IDLE_SETTLE+PROGRESS_TIMEOUT) begin
        failure=1; $display("SIM_ERROR t=%e reason=reset_not_ready",$abstime);
      end''', '    end', '    all_done=1;']
    for p, name in enumerate(OUTPUTS):
        lines.append(f'    if (!spacer[{p}] || rx_phase[{p}]!=0 || rx_index[{p}]!={len(expected[p])} || V({name}_a)>=threshold) all_done=0;')
    for p, name in enumerate(INPUTS):
        lines.append(f'    if (tx_valid[{p}] || V({name}_a)>=threshold) all_done=0;')
    lines += [f'''    if (active && !finished && tx=={len(transfers)} && all_done && V(dut_ready)>=threshold) begin
      finished=1; round_time=$abstime; idle_start=$abstime+IDLE_SETTLE;
      $display("SIM_ROUND t=%e inputs={len(transfers)} outputs={sum(map(len,expected))}",$abstime);
    end
    if (finished && !idle_started && $abstime>=idle_start) begin
      idle_started=1; $display("SIM_IDLE_BEGIN t=%e",$abstime);
    end
    if (idle_started && !idle_completed && $abstime>=idle_start+IDLE_WINDOW) begin
      idle_completed=1; $display("SIM_IDLE_END t=%e",$abstime);
    end
    // Let the failing sample commit before terminating. HSPICE can execute
    // $finish in a trial Newton step while suppressing its diagnostic display.
    if (failure && failure_stop<0) failure_stop=$abstime+3*TICK;
    if (failure_stop>=0 && $abstime>=failure_stop) begin
      $display("SIM_FAIL t=%e id=%d phase=%d",$abstime,tx,phase); $finish(0);
    end
    if (!failure && idle_completed && $abstime>=idle_start+IDLE_WINDOW+IDLE_MARGIN) begin
      $display("SIM_PASS t=%e",$abstime); $finish(0);
    end
  end
  @(timer(STOP_TIME-1n)) begin
    if (!idle_completed) begin failure=1; $display("SIM_ERROR t=%e reason=timeout id=%d phase=%d",$abstime,tx,phase); $display("SIM_FAIL t=%e",$abstime); $finish(0); end
  end''', drives]
    env.write_text('\n'.join(lines)+'\n'+quiescence_module(signals)+'\n')
    deck = output_dir/'Router_tb.sp'
    text = (HERE/'Router/Router_tb.sp').read_text().replace('TB_IDLE_SETTLE=20n', 'TB_IDLE_SETTLE=5n')
    # Allow every transfer its existing 1 us progress watchdog, plus reset and
    # final idle measurements. A subset's 20 us stop is too short for all cases.
    text, stop_count = re.subn(r'\bTB_STOP=[^\s]+',
                              f'TB_STOP={max(20, len(transfers)+2)}u', text, count=1)
    if stop_count != 1:
        raise ValueError('Missing TB_STOP in the prepared Router deck')
    text = re.sub(r'(XENV\s+reset\s+)(?!tb_ready\b)', r'\1tb_ready ', text, count=1)
    # Probe readiness of every actual PCFB, including hierarchy boundaries.
    text = re.sub(r'\n\* LUT readiness probes.*?(?=\n\.tran)', '', text, flags=re.S)
    probes = '\n* LUT readiness probes\n.probe tran '+ '\n+ '.join(
        ' '.join(f'v({path}.{node})' for node in ('e','g','n__l__a','inv__r__a')) for path in meta['buffers'])
    # Measure parser service at the actual Serializer I channel, after the
    # frontend elastic buffers. Keep full dual rails for physical VDD/2 validity.
    channel_probes=[f'v(xdut.xmu.ir_ao0_a{rail}_5{bit}_6)' for rail in ('t','f') for bit in range(32)]
    probes += '\n+ '+ '\n+ '.join(' '.join(channel_probes[i:i+8]) for i in range(0,len(channel_probes),8))
    probes += '\n+ v(xdut.xmu.ir_ao0_aa)'
    text = text.replace('\n.tran', probes+'\n.tran')
    monitor = '\n* DUT quiescence monitor (sense-only; no DUT loading)\nXQUIET tb_ready '+ '\n+ '.join(
        ' '.join(path for path, high in signals[i:i+6]) for i in range(0,len(signals),6))
    monitor += "\n+ router_quiescence SUPPLY='VDD_VALUE'\n.probe tran v(tb_ready)"
    text = text.replace('\n.tran', monitor+'\n.tran')
    text = text.replace('* Concurrent handshake-controlled producers and receivers; full-word golden checking.',
                        '* Generated minimal LUT cases: isolated flits, legal bursts, parser fit/held-out cases.')
    deck.write_text(text)
    print(json.dumps(dict(cases=len(cs), inputs=len(transfers), outputs=sum(map(len,expected)),
                          netlist_sha256=meta['netlist_sha256'])))
    return meta


def tables(text):
    result = {}
    for name, body in re.findall(r'analog function integer (\w+);(.*?)endfunction', text, re.S):
        rows = re.findall(r'(\d+):\s*'+name+r'\s*=\s*(-?\d+);', body)
        result[name] = {int(i): int(value) & 0xffffffff for i, value in rows}
    return result


def ensure_manifest(root, persist=True):
    """Recover missing identities only when every generated stimulus table matches."""
    root = Path(root)
    directory = root/'tb/top/Router'
    path = directory/'lut_manifest.json'
    netlist_hash = hashlib.sha256((root/'src_spice/top/Router.sp').read_bytes()).hexdigest()
    if path.exists():
        manifest = json.loads(path.read_text())
        if manifest['netlist_sha256'] != netlist_hash:
            raise ValueError('Router LUT manifest does not match the prepared netlist')
        return manifest
    actual = tables((directory/'Router_environment.va').read_text())
    required = {'stimulus', 'source', 'case_id', 'isolated'}
    if not required <= actual.keys():
        raise ValueError('Router LUT identities are missing and cannot be recovered from this testbench')
    canonical = cases()
    selected = []
    for case in sorted(set(actual['case_id'].values())):
        ids = sorted(i for i, value in actual['case_id'].items() if value == case)
        words = [actual['stimulus'][i] for i in ids]
        sources = {actual['source'][i] for i in ids}
        isolated = {actual['isolated'][i] for i in ids}
        candidates = [row for row in canonical if row['words'] == words
                      and sources == {row['port']}
                      and isolated == {int(row['mode'] == 'isolated')}]
        if len(candidates) != 1:
            raise ValueError('Cannot uniquely recover Router LUT case '+str(case))
        selected.append(candidates[0]['case'])
    # Preparation happens in a temporary directory; the existing deck and
    # environment remain unchanged, including their timing and physical probes.
    with tempfile.TemporaryDirectory(prefix='router_manifest_') as temporary:
        with redirect_stdout(io.StringIO()):
            manifest = prepare(case_ids=selected, output_dir=temporary)
        generated = tables((Path(temporary)/'Router_environment.va').read_text())
        if generated != actual or manifest['netlist_sha256'] != netlist_hash:
            raise ValueError('Recovered Router identities differ from the prepared testbench')
    if persist:
        path.write_text(json.dumps(manifest, indent=2)+'\n')
    return manifest


def record_campaign(root, remote, jobs):
    """Save the hashes used by the runner so extraction can verify provenance."""
    root = Path(root)
    job = next(job for job in jobs if job['level'] == 'top' and job['module'] == 'Router')
    path = root/'tb/top/Router/lut_manifest.json'
    record = dict(campaign=remote, status='submitted', jobs=[job],
                  lut_manifest_sha256=hashlib.sha256(path.read_bytes()).hexdigest())
    (path.parent/'lut_campaign.json').write_text(json.dumps(record, indent=2)+'\n')


def validate_router_listing(listing, manifest, expected_failure=None):
    text = Path(listing).read_text(errors='replace')
    if re.search(r'\*\*error\*\*|\*\*fatal\*\*|job aborted|analysis omitted', text, re.I):
        raise ValueError('Simulator error/omitted analysis')
    if not re.search('job concluded', text, re.I):
        raise ValueError('Simulation did not complete normally')
    events = events_from(Path(listing))
    errors = [e for e in events if e['kind'] == 'SIM_ERROR']
    passes = [e for e in events if e['kind'] == 'SIM_PASS']
    fails = [e for e in events if e['kind'] == 'SIM_FAIL']
    if expected_failure:
        if passes or not fails or len({e['t'] for e in fails}) != 1 or not any(e.get('reason') == expected_failure for e in errors):
            raise ValueError('Injected defect did not trigger the required rejection')
        return dict(expected_failure=expected_failure, detected=True, time_s=fails[0]['t'])
    if errors or fails or len(passes) != 1 or 'FIXTURE_ERROR' in text:
        raise ValueError('Functional test did not pass independently')
    if len([e for e in events if e['kind'] == 'SIM_CONSTANTS_PASS']) != 1:
        raise ValueError('Missing unique compiler constant self-check')
    for case in manifest['cases']:
        expected = {int(p): words for p, words in case['outputs'].items()}
        if route_reference(case['port'], case['words']) != expected:
            raise ValueError('Manifest disagrees with independent routing reference')
    tx = [e for e in events if e['kind'] == 'SIM_TX']
    checked = [e for e in events if e['kind'] == 'SIM_INPUT_PASS']
    if len(tx) != len(manifest['transfers']) or len(checked) != len(tx):
        raise ValueError('Missing/extra stimulus or actual-input verification')
    ports = ['C0i', 'C1i', 'C2i', 'C3i', 'Pi']
    for row, sent, actual in zip(manifest['transfers'], tx, checked):
        if (sent['channel'] != ports[row['port']] or int(sent['word'], 16) != row['word']
                or int(sent['index']) != row['index'] or int(actual['id']) != row['id']
                or int(actual['hi'])*65536+int(actual['lo']) != row['word']
                or actual['t'] < sent['t']):
            raise ValueError('Actual stimulus differs from external manifest at '+str(row['id']))
    outputs = ['C0o', 'C1o', 'C2o', 'C3o', 'Po']
    for port, expected in zip(outputs, manifest['expected']):
        received = [e for e in events if e['kind'] == 'SIM_RX' and e['channel'] == port]
        if len(received) != len(expected):
            raise ValueError('Output count mismatch on '+port)
        for index, (event, row) in enumerate(zip(received, expected)):
            if (int(event['index']) != index or int(event['actual'], 16) != row['word']
                    or int(event['expected'], 16) != row['word']):
                raise ValueError('Output differs from independent expected word on '+port)
    return dict(passed=True, cases=len(manifest['cases']), physical_input_checks=len(checked),
                outputs=sum(map(len, manifest['expected'])), completed_s=passes[0]['t'])


def main():
    if len(sys.argv) > 1 and sys.argv[1] == '--extract-luts':
        extract_router_luts(sys.argv[2:])
        return 0
    shared = runpy.run_path(str(HERE.parent/'block/run_suite.py'))
    return shared['main']('top')


if __name__ == '__main__':
    raise SystemExit(main())
