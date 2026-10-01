#!/usr/bin/env python3
"""Dedicated physical performance cases for InputRouter; see tb/block/README.md."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from perf_common import run

CONFIG = {'module': 'InputRouter',
 'mode': 'scalar',
 'inputs': ['i'],
 'outputs': ['o0', 'o1'],
 'destinations': {'o0': 'C', 'o1': 'C'},
 'phase_cases': {'i': [
     (0xFFFFFFFE, 'header', False, 'first route/header word on O0'),
     (0xFFFFFFFE, 'header', False, 'route/header continuation on O0'),
     (0xFFFFFF0E, 'header', False, 'route/header terminator on O0'),
     (0xFFFFFFFE, 'payload', False, 'first payload on O1'),
     (0xFFFFFFFE, 'payload', False, 'intermediate payload on O1'),
     (0xFFFFFFFF, 'payload', True, 'final payload on O1')]},
 'phase_representatives': {'initial': {'i': 0}, 'payload': {'i': 4}},
 'phase_notes': ['Initial is the first route word on O0; payload is I[4] on O1. They intentionally use different output paths.',
                 'The header table measures one flit, not the complete three-word routing batch.']}

if __name__ == '__main__':
    run(CONFIG, __file__)
