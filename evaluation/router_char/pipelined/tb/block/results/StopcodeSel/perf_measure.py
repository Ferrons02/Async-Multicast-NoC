#!/usr/bin/env python3
"""Dedicated physical performance cases for StopcodeSel; see tb/block/README.md."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from perf_common import run

CONFIG = {'module': 'StopcodeSel',
 'mode': 'scalar',
 'inputs': ['i'],
 'outputs': ['o0', 'o1'],
 'destinations': {'o0': 'C', 'o1': 'C'},
 'phase_cases': {'i': [
     (0x80001FFE, 'header', False, 'consumed stopcode header'),
     (0xFFFFFFFF, 'payload', True, 'final payload after consumed stopcode'),
     (0xFFFFFFFE, 'header', False, 'forwarded non-stopcode header'),
     (0xFFFFFFFF, 'payload', True, 'final payload after forwarded header')]},
 'phase_representatives': {'initial': {'i': 2}, 'payload': {'i': 3}},
 'phase_notes': ['I[0] is consumed: it has no matching forwarded output. The header table uses I[2] on O1.',
                 'Both observed payloads terminate their packet; the payload table therefore uses a final-flit fallback.']}

if __name__ == '__main__':
    run(CONFIG, __file__)
