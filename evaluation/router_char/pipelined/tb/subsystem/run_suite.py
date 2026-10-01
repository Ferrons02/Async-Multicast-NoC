#!/usr/bin/env python3
"""Run all prepared analog subsystem testbenches, or select module names."""
from pathlib import Path
import runpy


if __name__ == '__main__':
    shared = runpy.run_path(str(Path(__file__).resolve().parents[1] / 'block' / 'run_suite.py'))
    raise SystemExit(shared['main']('subsystem'))
