#!/usr/bin/env python3
"""Dedicated physical performance cases for Serializer; see tb/block/README.md."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from perf_common import run

CONFIG = {'module': 'Serializer', 'mode': 'serializer'}

if __name__ == '__main__':
    run(CONFIG, __file__)
