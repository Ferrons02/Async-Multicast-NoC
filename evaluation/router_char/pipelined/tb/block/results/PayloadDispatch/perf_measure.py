#!/usr/bin/env python3
"""Dedicated physical performance cases for PayloadDispatch; see tb/block/README.md."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from perf_common import run

CONFIG = {'module': 'PayloadDispatch',
 'mode': 'scalar',
 'inputs': ['i'],
 'outputs': ['c0', 'c1', 'c2', 'c3'],
 'destinations': {'c0': 'C', 'c1': 'C', 'c2': 'C', 'c3': 'C'},
 'phase_cases': {'i': [
     (0xFFFFFFFE, 'initial', False, 'first payload after Ch=A configuration; C0 and C2'),
     (0xFFFFFFFE, 'payload', False, 'intermediate payload; C0 and C2'),
     (0xFFFFFFFF, 'payload', True, 'final payload; C0 and C2'),
     (0xFFFFFFFF, 'initial', True, 'first and final payload after Ch=F configuration; all four children')]},
 'phase_control_words': {'ch': [0xA, 0xF]},
 'phase_representatives': {'initial': {'i': 0}, 'payload': {'i': 1}},
 'initial_title': 'Initial / First Payload After Configuration',
 'phase_notes': ['There is no header flit on I: the separate Ch channel configures the destination mask.',
                 'Initial measures the first payload after Ch=A, not Ch setup latency or energy. Payload uses the next nonterminal flit with the same mask.',
                 'Both tables include the same two destinations C0/C2 and one shared whole-DUT energy window.']}

if __name__ == '__main__':
    run(CONFIG, __file__)
