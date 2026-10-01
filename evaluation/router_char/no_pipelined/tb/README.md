# Testbenches and Analog Simulations

This directory contains the HSPICE testbenches, simulation runners, and results
for the `no_pipelined` design. Simulations use the prepared netlists in
[`../src_spice/`](../src_spice/). PRS-to-SPICE rebuilding is also available through
the same runners; no external `analog_spice` scripts are required.

## Structure

```text
tb/
├── block/          # individual block tests
├── subsystem/      # ChildRouter, ParentRouter, and MltcUnit
├── top/            # complete Router
└── perf_common.py  # shared performance extraction
```

Each level contains `run_suite.py`, a `<Module>/` directory for each testbench
(`<Module>_tb.sp`) and its Verilog-A environment (`<Module>_environment.va`),
and `results/<Module>/` with the outputs and a dedicated `perf_measure.py` script.

## Running Simulations

Requirements: **Python 3, NumPy, and SSH access to Caddy**. Runners connect to
`ferroma@caddy.best.stanford.edu` and load HSPICE through the environment modules
`base/1.0 hspice/R-2020.12-SP1`. Authentication uses an SSH key or an interactive
password prompt.

Run these commands from the repository root:

```bash
cd evaluation/router_char/no_pipelined/tb

# Check files, includes, and pins locally without running simulations
python3 block/run_suite.py --all-levels --check-only

# Simulate one module at the selected level and collect its results
python3 block/run_suite.py ChildSel
python3 subsystem/run_suite.py ChildRouter
python3 top/run_suite.py Router
```

Omit the module name to run all tests at that level.
To submit a campaign that keeps running after the terminal closes:

```bash
python3 subsystem/run_suite.py --submit
python3 subsystem/run_suite.py --status /tmp/ferroma_analog_campaign_XXXXXXXX
python3 subsystem/run_suite.py --collect /tmp/ferroma_analog_campaign_XXXXXXXX --watch
```

Replace the example path with the one printed by `--submit`.
`--collect --watch` waits for completion and downloads the results.

## Rebuilding Netlists

With ACT `prs2net` installed, the runners can rebuild **ChildSel, ChildRouter,
ParentRouter, MltcUnit, and Router** from this variant's `src_prs`:

```bash
# Generate and validate without replacing netlists or simulating
python3 subsystem/run_suite.py ChildRouter ParentRouter --rebuild --check-only

# Replace the selected netlists after all checks pass; do not simulate
python3 subsystem/run_suite.py ChildRouter ParentRouter --build-only

# Rebuild before running the simulation
python3 block/run_suite.py ChildSel --rebuild
```

Rebuilding preserves accepted transistor dimensions and checks hierarchy, pins,
and the absence of pipeline buffers. Changed leaf topology is rejected before
any selected netlist is replaced. `--prs-root PATH` selects a matching PRS snapshot
when needed. The builder only rewrites existing `.sp` files; it adds no scripts
or build reports. Regular runs continue to use the prepared netlists.

The current `InputAnalyzer` PRS differs from the accepted SPICE topology, so
rebuilding `MltcUnit` or `Router` currently stops at that check. Their prepared
netlists remain available for simulation.

## Results and Performance

Results are saved in `<level>/results/<Module>/` and updated when a simulation
is rerun or its results are collected.

| File | Contents |
| --- | --- |
| `<Module>.log` | Events and functional checks; look for `SIM_PASS` and `FINAL RESULT: PASS`. |
| `<Module>.lis` | HSPICE listing for diagnosing errors. |
| `<Module>_waves.csv` | Waveforms, supply current, and power. |
| `<Module>_perf.txt` | Forward and recovery times, energy, and leakage power. |

Runners generate the performance report after a successful simulation.
To regenerate it from saved data, run the following from `tb`:

```bash
python3 block/results/ChildSel/perf_measure.py
```

Module-specific extractors use [`perf_common.py`](perf_common.py).
Timing and energy are calculated from waveforms; reports marked `PARTIAL`
contain provisional results. Measurement definitions are documented in
[`perf_common.py`](perf_common.py).
