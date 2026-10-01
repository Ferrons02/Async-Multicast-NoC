#!/usr/bin/env python3
"""Physical route and payload measurements for the pipelined MltcUnit."""
import argparse
from dataclasses import asdict
import json
from pathlib import Path
import subprocess
import sys
import numpy as np

DIRECTORY = Path(__file__).resolve().parent
sys.path.insert(0, str(DIRECTORY.parents[2]))
from perf_common import Trace, events_from, validate_physical_words, fmt

PROTOCOL = 'mltc_pcfb_payload_v1'
SAMPLES = (19, 20, 21, 22)
BUFFERS = ['bp'] + [f'bo{j}' for j in range(4)]


def payload_word(index):
    if index == 24:
        return 0xCAFEAA54
    if index == 25:
        return 0xFACE55AB
    if not 16 <= index <= 23:
        raise ValueError('Not a characterization payload index')
    j = index - 16
    return ((0xA500 + j) << 16) | (0x55AA if j % 2 == 0 else 0xAA54)


def get(trace, port, index, word):
    tr = trace.transactions[port][index]
    if tr.word != word:
        raise ValueError(f'{port}[{index}] expected {word:08x}, got {tr.word:08x}')
    if tr.spacer is None or tr.ack_high is None or tr.ack_low is None:
        raise ValueError(f'{port}[{index}] incomplete handshake')
    if not tr.valid <= tr.ack_high < tr.ack_low:
        raise ValueError('Invalid acknowledge order')
    return tr


def timing(inp, outs):
    """Use the same flit and full destination set; allow early buffered input release."""
    if len(outs) != 2 or {o.port for o in outs} != {'c2', 'c3'}:
        raise ValueError('Payload requires exactly one copy on C2 and C3')
    if any(o.word != inp.word or o.valid < inp.valid for o in outs):
        raise ValueError('Payload output is not the matching input flit')
    if inp.ack_high is None or inp.ack_low is None or not inp.valid <= inp.ack_high < inp.ack_low:
        raise ValueError('Input cycle requires both ordered acknowledge edges')
    last = max(o.valid for o in outs)
    return dict(cycle=inp.ack_low - inp.valid, forward=last - inp.valid,
                recovery=inp.ack_low - last)


def quiet_power(trace, start, stop):
    mask = (trace.t >= start) & (trace.t <= stop)
    if np.count_nonzero(mask) < 10:
        raise ValueError('Insufficient samples in isolated-payload idle boundary')
    expected = {}
    for pc in BUFFERS:
        for node, high in [('e', True), ('g', False), ('n', False), ('n__l__a', True),
                           ('inv__r__a', True), ('l_aa', False), ('r_aa', False)]:
            expected[f'xdut.x{pc}.{node}'] = high
    for name, high in expected.items():
        y = trace.col(name)[mask]
        if np.any(y < .9 * trace.vdd) if high else np.any(y > .1 * trace.vdd):
            raise ValueError('PCFB not empty/ready in energy boundary: ' + name)
    for name in trace.names:
        if name.startswith('xdut.') and np.ptp(trace.col(name)[mask]) > .02 * trace.vdd:
            raise ValueError('Saved internal node still settling: ' + name)
    for port, spec in trace.ports.items():
        for name in [*spec['t'].values(), *spec['f'].values(), port + '_aa']:
            if np.any(trace.col(name)[mask] > .1 * trace.vdd):
                raise ValueError('Public interface not idle in energy boundary: ' + name)
    middle = (start + stop) / 2
    p0 = trace.integral(start, middle) / (middle - start)
    p1 = trace.integral(middle, stop) / (stop - middle)
    if abs(p0 - p1) > max(.05 * abs(p1), 1e-9):
        raise ValueError('Supply current still settling at energy boundary')
    return trace.integral(start, stop) / (stop - start)


def isolated_energy(trace):
    index = 24
    inp = get(trace, 'i', index, payload_word(index))
    outs = [get(trace, port, 20, inp.word) for port in ('c2', 'c3')]
    timing(inp, outs)
    begin = [e['t'] for e in trace.events if e['kind'] == 'SIM_ENERGY_BEGIN' and int(e['input_index']) == index]
    end = [e['t'] for e in trace.events if e['kind'] == 'SIM_ENERGY_END' and int(e['input_index']) == index]
    if len(begin) != 1 or len(end) != 1:
        raise ValueError('Missing unique energy boundaries')
    a, b = begin[0], end[0]
    if not a <= inp.valid < max(o.valid for o in outs) < max(inp.ack_low, *(o.ack_low for o in outs)) < b:
        raise ValueError('Energy window does not include all matched handshakes')
    for port, trs in trace.transactions.items():
        for tr in trs:
            if tr is inp or any(tr is o for o in outs):
                continue
            if tr.valid < b and (tr.ack_low is None or tr.ack_low > a):
                raise ValueError('Unrelated transaction overlaps isolated energy window')
    before = quiet_power(trace, a - 1e-9, a - 10e-12)
    after = quiet_power(trace, b - 1e-9, b)
    if abs(after - before) > max(.05 * abs(before), 1e-9):
        raise ValueError('Idle power state changed across isolated nonterminal payload')
    gross = trace.integral(a, b); dynamic = gross - before * (b - a)
    if dynamic <= 0:
        raise ValueError('Nonpositive isolated dynamic energy')
    return dict(input=asdict(inp), outputs=[asdict(o) for o in outs], start=a, end=b,
                idle_before_w=before, idle_after_w=after, gross_j=gross, dynamic_j=dynamic,
                energy_per_bit=dynamic / 32, normalization_bits=32)


def batch(trace, input_spec, output_spec):
    ins = [get(trace, 'i', index, word) for index, word in input_spec]
    outs = [get(trace, port, index, word) for port, index, word in output_spec]
    a = ins[0].valid; b = max(o.valid for o in outs)
    if b <= a:
        raise ValueError('Invalid route batch boundaries')
    unrelated = [tr.index for tr in trace.transactions['i'] if tr.index not in {i.index for i in ins}
                 and tr.valid < b and (tr.ack_low is None or tr.ack_low > a)]
    gross = trace.integral(a, b)
    # Batch energy deliberately uses precisely the latency interval, as before.
    # The final settled leakage is retained as an explicitly stated estimate.
    leak = trace.leak.get('power')
    energy = gross - leak * (b - a) if leak is not None and not unrelated else None
    return dict(inputs=[asdict(i) for i in ins], outputs=[asdict(o) for o in outs],
                start=a, end=b, latency=b-a, gross_j=gross, dynamic_j=energy,
                leakage_w=leak, overlapping_unrelated_inputs=unrelated)


def measurements(trace):
    if {p: len(trace.transactions[p]) for p in ('i', 'c0', 'c1', 'c2', 'c3')} != dict(i=26, c0=2, c1=2, c2=22, c3=22):
        raise ValueError('Expected 26 input words and 48 output words')
    matched = []
    for index in range(16, 26):
        inp = get(trace, 'i', index, payload_word(index))
        outs = [get(trace, p, index - 4, inp.word) for p in ('c2', 'c3')]
        values = timing(inp, outs)
        nxt = trace.transactions['i'][index + 1] if index < 25 else None
        matched.append(dict(input=asdict(inp), outputs=[asdict(o) for o in outs], **values,
                            interarrival=nxt.valid - inp.valid if nxt else None,
                            source_response_gap=nxt.valid - inp.ack_low if nxt else None))
    samples = [m for m in matched if m['input']['index'] in SAMPLES]
    # SAMPLES must have immediate consecutive successors, excluding isolation gaps.
    if any(m['source_response_gap'] < -1e-15 or m['source_response_gap'] > 30e-12 for m in samples):
        raise ValueError('Payload cycle samples include an imposed producer wait')
    summary = {key: float(np.mean([m[key] for m in samples])) for key in ('cycle', 'forward', 'recovery', 'interarrival')}
    route = batch(trace, [(14, 0x348D6312), (15, 0x84100002)],
                  [('c2', 11, 0x4D318002), ('c3', 11, 0x86410002)])
    longer = batch(trace, [(8, 0x348C6312), (9, 0x84121482), (10, 0x44212003)],
                   [('c2', 6, 0x4C311212), ('c2', 7, 0x44200002),
                    ('c3', 6, 0x86844812), ('c3', 7, 0x20000002)])
    route_cycles = []
    for index in (14, 8, 9):
        inp, nxt = trace.transactions['i'][index:index+2]
        route_cycles.append(dict(index=index, word=hex(inp.word), start=inp.valid,
                                 ack_high=inp.ack_high, ack_low=inp.ack_low,
                                 cycle=inp.ack_low-inp.valid, next_valid=nxt.valid,
                                 interarrival=nxt.valid-inp.valid))
    return summary, matched, route, longer, route_cycles, isolated_energy(trace)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--waves', type=Path, default=DIRECTORY/'MltcUnit_waves.csv')
    parser.add_argument('--events', type=Path, default=DIRECTORY/'MltcUnit.log')
    parser.add_argument('--output', type=Path, default=DIRECTORY/'MltcUnit_perf.txt')
    modes = parser.add_mutually_exclusive_group()
    modes.add_argument('--simulate', action='store_true')
    modes.add_argument('--check-only', action='store_true')
    parser.add_argument('--control-path', type=Path)
    args = parser.parse_args()
    if args.control_path and not args.simulate:
        parser.error('--control-path requires --simulate')
    if args.simulate or args.check_only:
        if (args.waves != DIRECTORY/'MltcUnit_waves.csv' or args.events != DIRECTORY/'MltcUnit.log'
                or args.output != DIRECTORY/'MltcUnit_perf.txt'):
            parser.error('Simulation/check mode uses standard paths')
        command = [sys.executable, str(DIRECTORY.parents[1]/'run_suite.py'), 'MltcUnit',
                   '--threads', '4', '--hpp', '--timeout', '86400']
        if args.control_path:
            command += ['--control-path', str(args.control_path)]
        if args.check_only:
            command += ['--check-only']
        subprocess.run(command, check=True)
        return
    events = events_from(args.events)
    from perf_common import validate_campaign
    validate_campaign('MltcUnit', events)
    if not any(e['kind']=='SIM_PASS' for e in events) or any(e['kind'] in ('SIM_ERROR','SIM_FAIL') for e in events):
        raise ValueError('Performance extraction requires a complete functional PASS')
    if not any(e['kind']=='SIM_PROTOCOL' and e.get('name')==PROTOCOL for e in events):
        raise ValueError('Saved data predates this pipeline characterization protocol; rerun MltcUnit')
    trace = Trace(args.waves, events)
    validate_physical_words(trace, 'MltcUnit')
    if np.any(trace.col('tb_failed') >= trace.threshold):
        raise ValueError('Physical failure flag asserted')
    summary, matched, route, longer, route_cycles, energy = measurements(trace)
    campaign = next((e.get('campaign') for e in events if e['kind']=='SIM_RUN'), 'unspecified')
    lines = ['Module: MltcUnit', 'Status: COMPLETE - functional PASS', 'Measurement protocol: '+PROTOCOL,
             'Simulation campaign: '+campaign, 'Waveform: '+str(args.waves.resolve()),
             'Events: '+str(args.events.resolve()), 'Operating point: PTM65 TT, 1.1 V, 27 C.',
             'Topology: direct QR.OC/OD handshakes to Counter/Deserializer; 5 PCFB32 on IR.O1 and PD.C0..C3.',
             'Physical complete dual-rail validity and acknowledge crossings at VDD/2, linearly interpolated.',
             'Environment: zero imposed response delay, 10 ps polling and 10 ps slew; no subtraction of physical waits.',
             'Input cycle = own input valid -> own acknowledge-low after acknowledge-high.',
             'Consecutive-word interval = next input valid - current input valid; the small producer response is shown separately.',
             'Payload timing averages four interior nonterminal payloads I[19..22] in an eight-flit saturated burst.',
             'Forward = input valid -> last matching copy valid on C2/C3; both child destinations are included.',
             'Recovery = own input acknowledge-low - last matching copy valid (signed).',
             'A negative recovery means the buffered input was released before all output copies arrived; it is not a negative reset delay.',
             'Batch latency/energy use exactly first route-input valid -> last required route-output valid.',
             'Batch energy subtracts the measured final idle supply baseline; it excludes the recovery tail by definition.',
             'Payload energy uses isolated nonterminal I[24], after 20 ns drain/settling and through 20 ns after all external handshakes.',
             'All 5 payload PCFB empty/ready states, saved-node settling and supply stability are checked before/after that isolated transfer.',
             'Local pre-payload idle power is subtracted; whole-DUT multicast energy is counted once and divided by 32 input bits.',
             'Burst timing and isolated energy are separate experiments. Unsaved internal nodes are not directly observed.']
    def section(title):
        lines.extend(['', title, '-'*len(title)])
    section('Consecutive Input Words')
    lines.append('Traffic                       Input cycle (ns)   Valid-to-valid (ns)')
    lines.append(f'Payload, interior burst       {summary["cycle"]*1e9:16.6f}   {summary["interarrival"]*1e9:19.6f}')
    for row in route_cycles:
        lines.append(f'Route I[{row["index"]}] -> I[{row["index"]+1}]'.ljust(29)+f'{row["cycle"]*1e9:16.6f}   {row["interarrival"]*1e9:19.6f}')
    section('Multicast Route - Two Input Words')
    lines += ['I[14..15]: 348D6312, 84100002 -> C2=4D318002, C3=86410002.',
              'Second input contains three nonzero routing nibbles followed by termination/padding.',
              'Batch Latency: '+fmt(route['latency'],1e9,'ns'),
              'Batch Energy: '+fmt(route['dynamic_j'],1e12,'pJ')]
    section('Common Payload - Interior Nonterminal Flits')
    lines += ['Forward Time: '+fmt(summary['forward'],1e9,'ns'),
              'Recovery Time (signed): '+fmt(summary['recovery'],1e9,'ns'),
              'Energy per Bit (isolated nonterminal payload): '+fmt(energy['energy_per_bit'],1e15,'fJ/bit')]
    section('Additional Multicast Route - Two Full Words Plus Continuation')
    lines += ['I[8..10]: 348C6312, 84121482, 44212003.',
              'C2=4C311212,44200002; C3=86844812,20000002.',
              'Batch Latency: '+fmt(longer['latency'],1e9,'ns'),
              'Batch Energy: '+fmt(longer['dynamic_j'],1e12,'pJ')]
    if longer['overlapping_unrelated_inputs']:
        lines.append('Batch energy unavailable: unrelated inputs overlap the window: '+str(longer['overlapping_unrelated_inputs']))
    from perf_common import cycle_report
    lines += cycle_report({'module':'MltcUnit'}, trace, DIRECTORY.parents[1]/'MltcUnit/MltcUnit_environment.va')
    section('Reproducible Measurement Boundaries (SI units)')
    lines += ['LEAKAGE_AUDIT '+json.dumps(trace.leak,sort_keys=True)]
    lines += ['PIPELINE_PAYLOAD_AUDIT '+json.dumps(r,sort_keys=True) for r in matched]
    lines += ['PIPELINE_ROUTE_CYCLE_AUDIT '+json.dumps(r,sort_keys=True) for r in route_cycles]
    lines += ['PIPELINE_BATCH_AUDIT '+json.dumps(dict(name=n,**r),sort_keys=True) for n,r in [('primary',route),('long',longer)]]
    lines += ['PIPELINE_ENERGY_AUDIT '+json.dumps(energy,sort_keys=True)]
    temporary = args.output.with_suffix('.txt.tmp')
    temporary.write_text('\n'.join(lines)+'\n'); temporary.replace(args.output)
    print('MltcUnit: 26 inputs / 48 outputs PASS; route and payload performance -> '+str(args.output))
    return summary


if __name__ == '__main__':
    main()
