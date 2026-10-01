#!/usr/bin/env python3
"""Dedicated physical performance cases for MltcSel; see tb/block/README.md."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from perf_common import run

CONFIG = {'module': 'MltcSel',
 'mode': 'scalar',
 'inputs': ['i'],
 'outputs': ['o0', 'o1'],
 'destinations': {'o0': 'C', 'o1': 'C'},
 'phase_cases': {'i': [
     (0xFFFFFFFE, 'header', False, 'multicast routing header'),
     (0xFFFFFFFF, 'payload', True, 'final multicast payload'),
     (0xFFFFFFFC, 'header', False, 'unicast routing header'),
     (0xFFFFFFFF, 'payload', True, 'final unicast payload')]},
 'phase_representatives': {'initial': {'i': 2}, 'payload': {'i': 3}},
 'phase_notes': ['Both displayed samples follow O1 in the same unicast packet.',
                 'No intermediate payload is present; the payload table uses a final-flit fallback.']}

if __name__ == '__main__':
    run(CONFIG, __file__)
