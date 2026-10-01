#!/usr/bin/env python3
"""Generate the eight NoC characterization PDFs; optionally recompute the sweeps."""
import argparse
import json
from pathlib import Path
import sys
sys.dont_write_bytecode=True
sys.path.insert(0,str(Path(__file__).resolve().parents[2]))
ROOT=Path(__file__).resolve().parent


def main():
    if '--simulate' in sys.argv:
        sys.argv.remove('--simulate')
        from evaluation.network_char.src.experiments import main as simulate
        simulate()
        return
    parser=argparse.ArgumentParser(description=__doc__,epilog='Use --simulate --help for sweep and LUT options.')
    parser.add_argument('--output',type=Path,default=ROOT/'plots',help='PDF output directory')
    args=parser.parse_args()
    from evaluation.network_char.src.plotting import render
    figures=json.loads((ROOT/'data/figures.json').read_text())
    args.output.mkdir(parents=True,exist_ok=True)
    for name,data in sorted(figures.items()):render(args.output/name,data)
    print(f'Saved {len(figures)} PDFs in {args.output.resolve()}')


if __name__=='__main__':main()
