# Testbenches and Analog Simulations

This directory contains the HSPICE testbenches, simulation runners, and results
for the `pipelined` design. Simulations use the prepared netlists in
[`../src_spice/`](../src_spice/). PRS-to-SPICE rebuilding is also available through
the same runners; no external `analog_spice` scripts are required.

## Structure

```text
tb/
├── block/                 # individual block tests
├── subsystem/             # ChildRouter, ParentRouter, and MltcUnit
├── top/                   # complete Router and its LUT characterization
├── perf_common.py         # shared physical measurements and Router LUT extraction
├── performance_compare.py # optional comparison of available module reports
└── README.md
```

Each level has `run_suite.py`, `<Module>/` with the SPICE testbench and Verilog-A
environment, and `results/<Module>/` with outputs. Block and subsystem results
also contain their module-specific `perf_measure.py`. Router preparation,
validation, collection, and extraction are driven by `top/run_suite.py`.

## Running Simulations

Requirements: **Python 3, NumPy, and SSH access to Caddy**. Runners connect to
`ferroma@caddy.best.stanford.edu` and load `base/1.0 hspice/R-2020.12-SP1`.
Authentication uses an SSH key or an interactive password prompt.

From the repository root:

```bash
cd evaluation/router_char/pipelined/tb

# Check prepared inputs locally without simulating
python3 block/run_suite.py --all-levels --check-only

# Run a prepared test and collect its results
python3 block/run_suite.py ChildSel
python3 subsystem/run_suite.py ChildRouter
python3 top/run_suite.py Router
```

Omit the module name to run all tests at that level. Add `--submit` for a
campaign that continues after the terminal closes; use `--status CAMPAIGN`
or `--collect CAMPAIGN --watch` to monitor or collect it.

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
PCFB counts, and consecutive pipeline stages. Changed leaf topology is rejected
before any selected netlist is replaced. `--prs-root PATH` selects a matching PRS
snapshot when needed. The builder only rewrites existing `.sp` files; it adds no
scripts or build reports. Regular runs continue to use the prepared netlists.

The current `InputAnalyzer` PRS differs from the accepted SPICE topology, so
rebuilding `MltcUnit` or `Router` currently stops at that check. Their prepared
netlists remain available for simulation and Router LUT extraction.

## Router LUTs

The default command preserves the prepared testbench, which may cover only a
subset of cases. To prepare **all supported LUT cases** and submit the campaign:

```bash
python3 top/run_suite.py Router --prepare-luts --submit --threads 8 --hpp
python3 top/run_suite.py --collect /tmp/ferroma_analog_campaign_XXXXXXXX --watch
```

Replace the example path with the one printed by `--submit`. Preparation updates
`top/Router/Router_environment.va`, `Router_tb.sp`, and `lut_manifest.json`.
The runner records submitted input hashes in `lut_campaign.json` and automatically
extracts timing, initiation intervals, handshake durations, energy, leakage, and
parser measurements. No additional Python command is needed to produce the LUTs.

## Results and Performance

Results are saved in `<level>/results/<Module>/` and updated when collected.

| File | Contents |
| --- | --- |
| `<Module>.log` | Events and functional checks; look for `SIM_PASS` and `FINAL RESULT: PASS`. |
| `<Module>.lis` | HSPICE listing for diagnosing errors. |
| `<Module>_waves.csv` | Block/subsystem waveforms, supply current, and power. |
| `Router.tr0.gz` | Router native waveforms, retained without expanding to a large CSV. |
| `<Module>_perf.txt` | Physical performance report and validation status. |
| `Router_luts.json` | Router LUTs, individual measurements, coverage, and rejected cases. |
| `campaign.json` | Submitted campaign identity and input hashes. |

To regenerate the Router report and LUTs from collected data:

```bash
python3 top/run_suite.py Router --report-only
```

Keep the waveforms, log, and matching Router manifest/campaign records for
re-extraction. **Functional PASS does not imply a usable LUT**: check
`metadata.usable` and `validation` in the JSON. Missing coverage or failed
physical checks remain explicit; measurements are never invented to fill gaps.

`performance_compare.py` is optional and writes
`top/results/performance_comparison.txt`; simulation runners do not call it.
