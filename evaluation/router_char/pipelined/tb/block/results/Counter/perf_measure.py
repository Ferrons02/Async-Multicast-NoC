#!/usr/bin/env python3
"""Dedicated physical performance cases for Counter; see tb/block/README.md."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from perf_common import run

CONFIG = {'module': 'Counter', 'mode': 'counter'}

if __name__ == '__main__':
    run(CONFIG, __file__)
