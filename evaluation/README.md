# Router and Network Benchmarks

| Directory | Purpose |
| --- | --- |
| [`router_char/`](router_char/pipelined/tb/README.md) | Analog simulations and physical Router LUT extraction; pipelined and non-pipelined variants. |
| [`network_char/`](network_char/README.md) | General NoC characterization: eight latency, energy, throughput, compression, and area plots. |
| [`network_benchmarks/`](network_benchmarks/README.md) | Four SNN comparison plots for our tree, an HBS tree, and a synchronous mesh. |
| [`golden_model/`](golden_model/router.py) | One shared Python Router/NoC model and its validated calibrated LUT. |

From the repository root:

```bash
python3 -m pip install -r evaluation/network_char/requirements.txt
python3 evaluation/network_char/run.py
python3 evaluation/network_benchmarks/run.py
```

Each network tool writes only PDFs to its own `plots/` directory. The default
redraws saved data; add `--simulate` to recompute benchmarks. Both use the same
`src/`, `data/`, and `plots/` layout. See their short READMEs for options.
Poppler (`pdfinfo` and `pdfimages`) is required.

Keep these directories together: both network tools share the Router model and
LUT, and the analog Router testbench uses the same functional oracle. A new
analog campaign does not automatically replace the calibrated plotting LUT.
See the [pipelined](router_char/pipelined/tb/README.md) or
[non-pipelined](router_char/no_pipelined/tb/README.md) instructions to run HSPICE.
