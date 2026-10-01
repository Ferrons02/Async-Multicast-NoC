#!/usr/bin/env python3
"""Run the prepared analog Router testbench."""
from pathlib import Path
import runpy


if __name__ == '__main__':
    shared = runpy.run_path(str(Path(__file__).resolve().parents[1] / 'block' / 'run_suite.py'))
    raise SystemExit(shared['main']('top'))
