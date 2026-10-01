# An Asynchronous Tree Network-on-Chip for Exact Hierarchical Multicast

Source code and evaluation tools accompanying [Marco Ferroni's master's thesis](Marco_Ferroni_Master_Thesis.pdf), ETH Zürich, 2026.

This project develops a fully asynchronous, quaternary-tree Network-on-Chip (NoC)
for exact multicast. Routers progressively consume hierarchical routing
information and replicate payloads only toward the intended destinations.
Batching lets source addresses sharing a destination set reuse one route.

The repository follows the design from Communicating Hardware Processes (CHP)
and Production Rules (PRS) to transistor-level characterization with predictive
65 nm CMOS models, then network simulation and Spiking Neural Network (SNN)
workloads. Start with the thesis for the architecture, methodology, and results.

## Repository guide

| Location | Contents |
| --- | --- |
| [`implementation/chp/`](implementation/chp/) | Behavioral Router descriptions, before and after decomposition. |
| [`implementation/prs/`](implementation/prs/tb/README.md) | PRS circuits and functional testbenches for the `forks` and `no_forks` variants. |
| [`evaluation/router_char/`](evaluation/router_char/pipelined/tb/README.md) | Pipelined and non-pipelined analog simulations, physical measurements, and Router lookup-table (LUT) extraction. |
| [`evaluation/network_char/`](evaluation/network_char/README.md) | Eight plots covering latency, energy, throughput, routing compression, and area. |
| [`evaluation/network_benchmarks/`](evaluation/network_benchmarks/README.md) | Four SNN comparison plots: our tree, an HBS tree, and a synchronous mesh. |
| [`evaluation/golden_model/`](evaluation/golden_model/) | Shared Python reference model, network simulator, and calibrated Router LUT. |

## Generate the figures

Use Python 3.9 or later and install Poppler (`pdfinfo` and `pdfimages`) through
your system package manager. From the repository root:

```bash
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install -r evaluation/network_char/requirements.txt
python3 evaluation/network_char/run.py
python3 evaluation/network_benchmarks/run.py
```

These commands redraw the saved data into each tool's `plots/` directory;
ACT and HSPICE are not needed. Add `--simulate` to recompute network experiments
from the included model and traces; see the linked READMEs for options.
Full sweeps can be lengthy, and the optional native mesh backend requires `g++`.

## Circuit simulation tools

**ACT / PRS simulation.** Install the open-source [ACT flow](https://github.com/asyncvlsi/actflow)
following its dependency and build instructions: clone with submodules, choose
an `ACT_HOME` installation directory, then run `./build`. Keep `ACT_HOME` set
and add `$ACT_HOME/bin` to your `PATH`. The repository's testbenches use
[`actsim`](https://avlsi.csl.yale.edu/act/doku.php?id=tools:actsim);
[`prsim`](https://avlsi.csl.yale.edu/act/doku.php?id=tools:prsim) is the deprecated
production-rule simulator. For example, from the repository root:

```bash
python3 implementation/prs/tb/top/run_suite.py --variant forks --bench Router
```

**HSPICE / analog simulation.** Obtain HSPICE through your institution's Synopsys
license and [SolvNetPlus](https://solvnetplus.synopsys.com/). Follow the official
[installation](https://www.synopsys.com/support/licensing-installation-computeplatforms/installation.html)
and [licensing](https://www.synopsys.com/support/licensing-installation-computeplatforms/licensing.html)
guides, then expose `hspice` on your `PATH`. The supplied runners target a remote
Caddy installation over SSH: adapt the host, environment modules, and PTM65
model include paths to your environment before running. See the
[pipelined](evaluation/router_char/pipelined/tb/README.md) and
[non-pipelined](evaluation/router_char/no_pipelined/tb/README.md) instructions.
Analog outputs are stored under `tb/<level>/results/<Module>/`.

The plotting LUT includes calibrated assumptions derived from circuit measurements.
Those assumptions and the comparison models' technology differences remain in
PDF metadata; network plots should not be read as matched-process silicon measurements.
