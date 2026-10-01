#!/usr/bin/env python3
"""Dedicated physical performance cases for UpdownSel; see tb/block/README.md."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from perf_common import run

CONFIG = {'module': 'UpdownSel',
 'mode': 'scalar',
 'inputs': ['i'],
 'outputs': ['o0', 'o1'],
 'destinations': {'o0': 'C', 'o1': 'C'},
 'phase_cases': {'i': [
     (0xFFFFFFFE, 'header', False, 'upward routing header'),
     (0x0FFFFFFE, 'payload', False, 'intermediate upward payload'),
     (0xFFFFFFFF, 'payload', True, 'final upward payload'),
     (0x7FFFFFFE, 'header', False, 'downward routing header'),
     (0x1FFFFFFE, 'payload', False, 'intermediate downward payload'),
     (0xFFFFFFFF, 'payload', True, 'final downward payload')]},
 'phase_representatives': {'initial': {'i': 3}, 'payload': {'i': 4}},
 'phase_notes': ['Both displayed samples follow O1 in the same downward packet; final payload I[5] is excluded from the payload table.']}

if __name__ == '__main__':
    run(CONFIG, __file__)
