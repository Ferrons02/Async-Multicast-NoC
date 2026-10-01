#!/usr/bin/env python3
"""Dedicated physical performance cases for ChildSel; see tb/block/README.md."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from perf_common import run

CONFIG = {'module': 'ChildSel',
 'pipeline_cycles': True,
 'mode': 'scalar',
 'inputs': ['i'],
 'outputs': ['o0', 'o1', 'o2', 'o3'],
 'destinations': {'o0': 'C', 'o1': 'C', 'o2': 'C', 'o3': 'C'},
 'phase_cases': {'i': [
     (0xFFFFFFFE, 'header', False, 'routing header to O3'),
     (0xFFFFFFFE, 'payload', False, 'intermediate payload to O3'),
     (0xFFFFFFFF, 'payload', True, 'final payload to O3'),
     (0x7FFFFFFE, 'header', False, 'routing header to O1'),
     (0xFFFFFFFE, 'payload', False, 'intermediate payload to O1'),
     (0xFFFFFFFF, 'payload', True, 'final payload to O1')]},
 'phase_representatives': {'initial': {'i': 0}, 'payload': {'i': 1}},
 'phase_notes': ['Both displayed samples follow O3 in the same packet. Identical FFFFFFFE words at I[0] and I[1] have different protocol roles.']}

if __name__ == '__main__':
    run(CONFIG, __file__)
