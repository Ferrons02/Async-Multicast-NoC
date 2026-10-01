#!/usr/bin/env python3
"""Dedicated physical performance cases for ParentRouter; see tb/block/README.md."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from perf_common import run

CONFIG = {'module': 'ParentRouter',
 'pipeline_cycles': True,
 'mode': 'standard',
 'inputs': ['i'],
 'outputs': ['m', 'c0', 'c1', 'c2', 'c3'],
 'destinations': {'m': 'M', 'c0': 'C', 'c1': 'C', 'c2': 'C', 'c3': 'C'},
 'payload_indices': [1, 3, 5, 7, 10, 13]}

if __name__ == '__main__':
    run(CONFIG, __file__)
