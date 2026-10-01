#!/usr/bin/env python3
"""Dedicated physical performance cases for Router; see tb/block/README.md."""
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from perf_common import run

CONFIG = {'module': 'Router',
 'mode': 'router',
 'notes': ['Pi -> Po is unsupported by this topology.',
           'TOP ENERGY WARNING: the supply is shared by five concurrent sources. Window energies '
           'cannot be assigned uniquely to a path or added as independent per-flit energies.',
           'Top multicast windows include contention with other cases; do not interpret the '
           'delay-corrected span as unloaded route-parser latency.']}

if __name__ == '__main__':
    run(CONFIG, __file__)
