# Network Characterization

Generate eight vector PDFs: unicast and multicast latency, energy and throughput,
route compression, and Router area.

```text
run.py          # generate plots
src/            # implementation
data/           # saved figure inputs and required assets
plots/          # PDF output only
README.md
requirements.txt
```

From this directory:

```bash
python3 -m pip install -r requirements.txt
python3 run.py
```

The default redraws the saved figure data and writes only PDFs to `plots/`.
Use `--output PATH` to choose another output directory.

To recompute the benchmarks with the shared Router model and LUT:

```bash
python3 run.py --simulate --experiments unicast multicast area
python3 run.py --simulate --experiments all --traffic-backend native_mesh
python3 run.py --simulate --help
```

Full traffic sweeps can take a long time. The native mesh backend requires
`g++`; PDF validation requires Poppler (`pdfinfo` and `pdfimages`).

Both network tools share `../golden_model/router.py` and `router_luts.json`.
The LUT is a calibrated, measurement-derived model; interpolation and modeled
assumptions remain recorded in each PDF. Area uses the non-pipelined netlist in
`../router_char/`. Simulations do not overwrite the saved reference data or LUT.
