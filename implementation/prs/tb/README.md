# PRS Testbenches

ACTsim testbenches for blocks, subsystems, and the Router, in both `no_forks`
and `forks` variants. Requires Python 3.9+ and ACTsim on `PATH`, with the ACT
libraries installed. The HSE mutex is already integrated into the `Arb2` sources.

## Structure

```text
tb/
├── README.md
├── block/
├── subsystem/
└── top/
    ├── forks/
    ├── no_forks/
    ├── results/
    ├── run_suite.py
    ├── tb.cmd
    └── testbench_support.act
```

All three levels share the same structure. `block` contains 11 testbenches per
variant, `subsystem` contains `ChildRouter`, `ParentRouter`, and `MltcUnit`,
and `top` contains `Router`. Each testbench imports the DUT from `PRS/src`.

Block and subsystem stimuli and golden responses are embedded in each `tb_*.act`.
Each top variant contains `tb_Router.act`, `input/*.txt`, `golden/data.act`,
and the five input links `_infile_.0`…`_infile_.4` required by `sim::source_file`.
The golden file also contains packet destinations, labels, and lengths.

## Running the suites

From `implementation/prs/tb`:

```sh
python3 block/run_suite.py
python3 subsystem/run_suite.py
python3 top/run_suite.py
```

Each runner executes simulations **one at a time**, first `no_forks`, then
`forks`, and configures `ACT_PATH` automatically. It writes only
`results/<variant>/tb_<Module>.log` within its own level, overwriting the log
for each test it runs. The summary appears in the terminal; the exit code is 0
only if all selected tests pass and the source files remain unchanged.

While a test runs, the terminal shows its position in the suite, the current
variant and module, the log path, and a spinner with elapsed wall time. Each
result includes its duration, followed by the total suite duration. Redirected
output uses plain progress messages every 30 seconds instead of animation.

To select a single testbench:

The standalone `tb_Arb2` and `tb_Arb2_distinct` checks have a dedicated
[validation report and runner commands](block/forks/Arb2_validation.md).
The suite's `--bench Arb` selection below tests the complete arbiter tree.

```sh
python3 block/run_suite.py --variant forks --bench Arb
python3 subsystem/run_suite.py --variant no_forks --bench ChildRouter
python3 top/run_suite.py --variant forks --bench Router
```

`--bench` can be repeated. `--timeout` sets the maximum wall time per process
in seconds (default 14400), without shortening the simulated stress interval.
The top runner also supports `--max-log-mib` (default 16) and `--simulator`;
use `--help` to list the options.

## Running ACTsim directly

From `implementation/prs/tb`, set the absolute paths once:

```sh
export ACT_PATH="$(realpath ../src):$(realpath ../src/block)"
(cd block/forks && actsim -p tb_Arb tb_Arb.act < ../tb.cmd)
(cd subsystem/no_forks && actsim -p tb_ChildRouter tb_ChildRouter.act < ../tb.cmd)
(cd top/forks && actsim -p tb_Router tb_Router.act < ../tb.cmd)
```

Replace the variant and module to run other testbenches. Direct invocations
write to the terminal; use the runner to save the log and obtain the full
classification. `tb.cmd` uses seed 12345, delays of 1…100, a 10000-unit reset,
500000000 units of stress, and a 1000000-unit drain, with `random_choice off`.

Mismatches, deadlocks, final X states, and incomplete stress runs fail the test.
All three runners report `PASS` when the full stress interval completes with
checked data, a successful drain, and no final X states, even if ACTsim emits
transient wire-instability or completion-detector warnings. This includes recovered
CHP `valid`/`spacer` warnings regardless of the channel's printed instance name.
These messages remain in the
log and are counted as `Warnings: N (non-fatal; see log)` beside a passing result.
The historical Router/forks log therefore passes with 11 warnings, analyzed in
the [earlier report](../REPORT_first_reshuffle_attempt.md). Other runtime errors still fail the test.
HSE model selection is expected only for `ArbMutex`.
Explicit ACT `spec timing` violations still fail. The `no_forks` sources carry
the physical fork assumptions; their interpretation and validation are in the
[bubble reshuffling report](../REPORT_first_reshuffle_attempt.md#bubble-reshuffling-v2--10-september-2026).
The [v3 report](../REPORT_BUBBLE_RESHUFFLING_V3.md) documents the current
primitive derivations, SUpdate fork corrections and final verification.

## Reg4 extraction — 16 September 2026

The register previously embedded in `Deserializer/QBuffer.act` is now a separate
instance named `reg`. The request contained code placeholders, so this extraction
uses the existing register PRS in each implementation:

- [no_forks Reg4](../src/block/no_forks/commons/Reg4.act), used by
  [no_forks QBuffer](../src/block/no_forks/Deserializer/QBuffer.act).
- [forks Reg4](../src/block/forks/commons/Reg4.act), used by
  [forks QBuffer](../src/block/forks/Deserializer/QBuffer.act).
- [Analog Reg4](../../../evaluation/router_char/no_pipelined/src_prs/block/commons/Reg4.act), used by
  [analog QBuffer](../../../evaluation/router_char/no_pipelined/src_prs/block/Deserializer/QBuffer.act).

Each QBuffer connects `reg.W.t/f` to `I.t/f`, `reg.W.a` to `p_a`,
`reg.R.req` to `q_r`, and `reg.R.t/f` to `O.t/f`; reset is shared. These are
aliases. All existing register branch delays move with the register into
the forks Reg4. Control delays and `DELAY_CONTROL` remain in QBuffer.

The complete flattened PRS before and after extraction match, including delay
rules, after resolving aliases and removing only the new `reg` prefix from
internal register names:

| Configuration | Identical rules/directives |
| --- | ---: |
| Analog QBuffer | 76 |
| no_forks QBuffer | 44 |
| forks QBuffer, default | 140 |
| forks QBuffer, `DELAY_CONTROL=true` | 142 |

Executed from `implementation/prs`:

```sh
python3 tb/top/run_suite.py --bench Router
```

Both variants completed the standard `advance 500000000` stress and drain,
with seed 12345, random delays 1–100, `done=1`, `fail=0`, empty final X reports,
empty receive buffers, and all five producers stopped. Source integrity passed.

| Variant | Result | Completed rounds | Final matched count | Runtime warnings |
| --- | --- | ---: | ---: | ---: |
| [no_forks](top/results/no_forks/tb_Router.log) | PASS | 198 | 23622 | 0 |
| [forks](top/results/forks/tb_Router.log) | PASS | 81 | 9486 | 70 |

The fork warnings are 49 unstable transitions on `fd_a__w_1` in selector
instances, 20 on `dut.MU.IR.fd_a__p`, and one on `dut.MU.PD.cd1.fd_v__I_a`.
None occurs in QBuffer or Reg4. They are retained in the log and classified as
non-fatal by the existing runner: the full functional checks and final drain
pass. No additional fork correction was needed for this run.

The analog Deserializer alone was regenerated and simulated on Caddy: **PASS**,
16 input nibbles, three expected output words, completion at 151.39 ns including
reset. Reg4 has 158 MOS; each QBuffer including Reg4 remains 245 MOS, and the
Deserializer total remains 3301 MOS. See the
[analog simulation instructions](../../../evaluation/router_char/no_pipelined/tb/README.md).

## Known simulator bugs

The ACTsim build used for this project has two known issues:

1. **Spurious warnings on modeled wires.** A PRS rule modeling a wire delay
   has a pending transition, but the receiving functional guard is disabled
   and would remain disabled even if that transition arrived. The transition
   is therefore irrelevant and needs no acknowledgement. The circuit proceeds
   and changes the wire rule's input before the pending transition fires.
   ACTsim can then mark the wire output as unknown (`X`) and report instability,
   potentially disrupting the simulation despite the transition being
   functionally masked. See the [wire-warning explanation](../forks_instruction.md#2-ignore-simulator-artifact-warnings).

2. **Stale event pointers in PRS mutex arbitration.** The PRS/`mk_exclhi` path
   can cancel a queued mutex event without clearing its stored pointer. Once
   that event's memory is reused, a later cancellation through the stale
   pointer can remove an unrelated signal's pending event. The missing
   transition can deadlock the circuit, even without warnings or final X states.
   We bypass this bug by implementing only `ArbMutex` in HSE; the rest of
   `Arb2` and the surrounding design remain PRS in both variants. See the
   [mutex investigation](../REPORT_first_reshuffle_attempt.md#mutex-hse-integrato-nei-sorgenti-arb).

Design decisions, corrections, and historical results are collected in
[the earlier report](../REPORT_first_reshuffle_attempt.md) and the
[v3 report](../REPORT_BUBBLE_RESHUFFLING_V3.md).
