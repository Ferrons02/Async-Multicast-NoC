#!/usr/bin/env python3
"""Dedicated physical performance cases for Arb; see tb/block/README.md."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from perf_common import run

CONFIG = {'module': 'Arb',
 'mode': 'arb',
 'inputs': ['c0', 'c1', 'c2', 'c3', 'p', 'm'],
 'outputs': ['o'],
 'destinations': {'o': 'O'},
 'arb_isolated_start': 2,
 'arb_paths': {
     'c0': [('ar0', True), ('ar2', True), ('ar4', True)],
     'c1': [('ar0', False), ('ar2', True), ('ar4', True)],
     'c2': [('ar1', True), ('ar2', False), ('ar4', True)],
     'c3': [('ar1', False), ('ar2', False), ('ar4', True)],
     'p': [('ar3', True), ('ar4', False)],
     'm': [('ar3', False), ('ar4', False)]},
 'phase_cases': {port: [
     (0xFFFFFFFE, 'excluded', False, 'concurrent header: response reported separately'),
     (0xFFFFFFFF, 'excluded', True, 'concurrent terminal payload: response reported separately'),
     (((0x1000+32*source+2)<<16)|0x55AA, 'header', False, 'tagged uncontended header'),
     (((0x1000+32*source+3)<<16)|0xAA54, 'payload', False, 'tagged uncontended nonterminal payload'),
     (((0x1000+32*source+4)<<16)|0x55AB, 'payload', True, 'tagged uncontended terminal payload')]
     for source,port in enumerate(['c0', 'c1', 'c2', 'c3', 'p', 'm'])},
 'phase_notes': ['Main tables use the tagged single-source characterization after the concurrent stress test.',
                 'Every energy window is checked for overlapping input and output transfers.',
                 'Payload tables use the nonterminal flit; terminal samples remain in the audit.',
                 'Concurrent arrival-to-output response includes contention and is reported separately, not as intrinsic forward latency.'],
 'notes': ['The DUT and sizing are unchanged. Isolated results use one active input at a time.',
           'Energy spans the matched flit only: input valid through both source and output handshake completion.',
           'Concurrent stress has one aggregate energy integral; its supply cannot identify per-source energy.']}

if __name__ == '__main__':
    run(CONFIG, __file__)
