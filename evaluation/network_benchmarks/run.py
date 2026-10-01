#!/usr/bin/env python3
"""Generate the four SNN comparison PDFs; optionally rerun NoC simulations."""
import argparse
import json
from pathlib import Path
import sys
sys.dont_write_bytecode=True
sys.path.insert(0,str(Path(__file__).resolve().parents[2]))
from evaluation.golden_model.router import DEFAULT_LUT
from evaluation.network_benchmarks.src.plotting import render_figures
ROOT=Path(__file__).resolve().parent


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,default=ROOT/'plots',help='PDF output directory')
    parser.add_argument('--simulate',action='store_true',help='Recompute from frozen SNN traces instead of redrawing saved data')
    parser.add_argument('--samples',type=int,default=100,help='With --simulate: first N declared test samples per workload')
    parser.add_argument('--workers',type=int,default=4,help='With --simulate: parallel inference samples')
    parser.add_argument('--caps',type=int,nargs='+',default=[1,2,4,8,16,32,64,128,256,512])
    parser.add_argument('--lut',type=Path,default=DEFAULT_LUT,help='With --simulate: validated Router LUT')
    args=parser.parse_args()
    if not args.simulate and any(x in sys.argv for x in ('--samples','--workers','--caps','--lut')):
        parser.error('Simulation options require --simulate')
    data=json.loads((ROOT/'data/figures.json').read_text())
    if args.simulate:
        from evaluation.network_benchmarks.src.simulation import generate
        data=generate(data,args.samples,args.caps,args.workers,args.lut)
    render_figures(data,args.output)
    print(f'Saved 4 PDFs in {args.output.resolve()}')


if __name__=='__main__':main()
