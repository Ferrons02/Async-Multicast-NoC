# SNN Network Benchmarks

Compare our asynchronous tree, an HBS tree, and a synchronous mesh using frozen
MAP-SNN/N-MNIST, MAP-SNN/SHD, and LSM/N-MNIST inference traces.

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

The default redraws the saved results and generates exactly:
`energy.pdf`, `latency.pdf`, `batch_distribution.pdf`, and
`weighted_batch_distribution.pdf`. Use `--output PATH` for another destination.
Poppler (`pdfinfo` and `pdfimages`) is required to validate vector PDFs.

To rerun the NoC simulations from the included traces:

```bash
python3 run.py --simulate --workers 4
# Shorter run in a separate output directory
python3 run.py --simulate --samples 1 --caps 64 512 --output /tmp/snn-check
```

The full run uses 100 fixed samples per workload and batch caps from 1 to 512;
it can take a long time. No model training or downloads are needed.

The Router and LUT are shared through `../golden_model/`; PDF styling is shared
with `../network_char/`. Results retain their source/model assumptions in PDF
metadata. These are modeled NoC comparisons, not matched-process silicon
measurements. Runs write only PDFs and preserve the saved reference data.
