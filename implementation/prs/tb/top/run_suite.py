#!/usr/bin/env python3
"""Run Router benches sequentially; write only results/<variant>/tb_Router.log."""
import argparse
from contextlib import contextmanager
import hashlib
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import threading
import time

ROOT = Path(__file__).resolve().parent
SOURCE = ROOT.parents[1] / "src"


def duration(seconds):
    minutes, seconds = divmod(int(seconds), 60)
    hours, minutes = divmod(minutes, 60)
    return f"{hours}:{minutes:02}:{seconds:02}" if hours else f"{minutes:02}:{seconds:02}"


@contextmanager
def show_progress(path, index, total):
    """Animate wall time, or print a heartbeat when output is redirected."""
    interactive = sys.stdout.isatty() and os.environ.get("TERM") != "dumb"
    started = time.monotonic()
    stopped = threading.Event()
    label = f"[{index}/{total}] {path.parent.name} / {path.stem.removeprefix('tb_')}"
    print(f"\n{label}", flush=True)
    print(f"  Log: results/{path.parent.name}/{path.stem}.log", flush=True)
    frames = "|/-\\"
    encoding = sys.stdout.encoding or "ascii"
    try:
        "⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏".encode(encoding)
        frames = "⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏"
    except UnicodeEncodeError:
        pass

    def render(frame):
        elapsed = duration(time.monotonic() - started)
        if interactive:
            line = f"  {frames[frame % len(frames)]} Running | {elapsed} elapsed"
            width = max(1, shutil.get_terminal_size().columns - 1)
            print("\r\033[2K" + line[:width], end="", flush=True)
        else:
            print(f"  Running | {elapsed} elapsed | {label}", flush=True)

    def refresh():
        frame = 1
        while not stopped.wait(0.1 if interactive else 30):
            render(frame)
            frame += 1

    render(0)
    worker = threading.Thread(target=refresh, daemon=True)
    worker.start()
    try:
        yield
    finally:
        stopped.set()
        worker.join()
        if interactive:
            print("\r\033[2K", end="", flush=True)


def hashes(root):
    return {str(p.relative_to(root)): hashlib.sha256(p.read_bytes()).hexdigest()
            for p in sorted(root.rglob("*")) if p.is_file()}


def classify(output, returncode, timed_out, invocation_error=None):
    # Only the environment uses CHP; the adopted u/v MUTEX alone uses HSE.
    environment_substitution = re.compile(
        r'^WARNING: (?:RouterInput|RouterCollector|RouterMatcher|RouterControl|'
        r'TbFailure|source_file)<.*>: substituting chp model')
    diagnostics = [line for line in output.splitlines()
                   if re.search(r"WARNING:|FATAL:|ERROR:|ASSERTION failed|Assertion failed|"
                                r"CHP model:.*is X|Execution aborted|Parse error|\*\* ERROR \*\*", line)
                   and not environment_substitution.match(line)
                   and line != 'WARNING: ArbMutex<>: substituting hse model (requested prs, not found)']
    # Timing and completion-detector warnings may recover in ACTsim. They do
    # not fail a full stress run with checked data, successful drain and no
    # final PRS X state, matching the block and subsystem runners.
    transient = re.compile(
        r"^\[\s*\d+\] (?:<[^>]+>\s+"
        r"WARNING: (?:weak-)?(?:unstable transition|interference) on "
        r"|<[^>]+>\s+CHP model: Boolean variable `(?:valid|spacer)' is X$)")
    warnings = [line for line in diagnostics if transient.search(line)]
    diagnostics = [line for line in diagnostics if not transient.search(line)]
    flags = {}
    names = ["done", "fail", "rounds", "matched_count"]
    names += [f"{kind}[{i}]" for i in range(5) for kind in
              ("tx_count", "tx_next", "tx_case", "rx_count", "rx_last", "buffered", "stopped")]
    for name in names:
        values = re.findall(rf"^{re.escape(name)}: (\d+|X)\b", output, re.M)
        flags[name] = values[-1] if values else None
    begin = re.search(r"^TB_STRESS_BEGIN (\d+)$", output, re.M)
    end = re.search(r"^TB_STRESS_END (\d+)$", output, re.M)
    elapsed = int(end[1]) - int(begin[1]) if begin and end else None
    unknowns = re.search(r"^TB_X_BEGIN\n(.*?)^TB_X_END$", output, re.M | re.S)
    final_x = unknowns[1].strip().splitlines() if unknowns else None
    if invocation_error:
        status = "ERROR (invocation)"
    elif timed_out:
        status = "TIMEOUT (wall timeout)"
    elif not begin:
        status = "ERROR (compilation/elaboration)"
    elif "golden mismatch" in output:
        status = "FAIL (golden mismatch)"
    elif "buffer overflow" in output:
        status = "FAIL (buffer overflow)"
    elif "unexpected output" in output:
        status = "FAIL (unexpected output)"
    elif final_x:
        status = "FAIL (persistent PRS X)"
    elif diagnostics or (returncode and not (returncode == 2 and "WRONG ASSERT:" in output)):
        status = "ERROR (runtime)"
    elif flags["done"] != "1":
        status = "FAIL (deadlock/non-termination)"
    elif flags["fail"] != "0" or "PASSED: rounds=" not in output:
        status = "FAIL (completion check)"
    elif unknowns is None:
        status = "ERROR (missing final X check)"
    elif (not flags["rounds"] or not flags["rounds"].isdigit()
          or int(flags["rounds"]) == 0 or elapsed is None
          or not 499999900 <= elapsed <= 500000000):
        status = "FAIL (incomplete stress run)"
    else:
        status = "PASS"
    return {"status": status, "flags": flags, "stress_time": elapsed,
            "diagnostics": diagnostics, "warnings": warnings, "final_x": final_x,
            "invocation_error": invocation_error, "returncode": returncode}


def run_one(path, results_dir, timeout, max_log_mib=16, simulator="actsim", *, index=1, total=1):
    log_path = results_dir / path.parent.name / (path.stem + ".log")
    log_path.parent.mkdir(parents=True, exist_ok=True)
    env = os.environ.copy()
    # All imports use the original sources; no workspace or model overlay.
    env["ACT_PATH"] = os.pathsep.join((str(SOURCE), str(SOURCE / "block")))
    command = [simulator, "-p", path.stem, path.name]
    timed_out, invocation_error, code = False, None, None
    log_limited = False
    started = time.monotonic()
    with show_progress(path, index, total), \
            (ROOT / "tb.cmd").open("rb") as commands, log_path.open("wb") as log:
        try:
            with subprocess.Popen(command,
                                  cwd=path.parent, stdin=commands, stdout=log,
                                  stderr=subprocess.STDOUT, env=env) as process:
                deadline = started + timeout
                while True:
                    try:
                        code = process.wait(timeout=min(0.1, max(0.001, deadline-time.monotonic())))
                        break
                    except subprocess.TimeoutExpired:
                        if log_path.stat().st_size >= max_log_mib*1024*1024:
                            log_limited = True
                        elif time.monotonic() >= deadline:
                            timed_out = True
                        else:
                            continue
                        process.terminate()
                        try:
                            code = process.wait(timeout=5)
                        except subprocess.TimeoutExpired:
                            process.kill()
                            code = process.wait()
                        break
        except subprocess.TimeoutExpired:
            timed_out, code = True, -1
        except OSError as exc:
            invocation_error = str(exc)
            log.write(f"ACTsim invocation error: {exc}\n".encode())
    result = classify(log_path.read_text(errors="replace"), code, timed_out, invocation_error)
    if log_limited:
        result["status"] = "FAIL (diagnostic log limit; see first timing fault)"
    result["log_limited"] = log_limited
    result["warning_count"] = len(result["warnings"])
    result["diagnostic_count"] = len(result["diagnostics"])
    result.update(variant=path.parent.name, module=path.stem.removeprefix("tb_"),
                  log=str(log_path.relative_to(ROOT)), wall_seconds=time.monotonic() - started)
    detail = ""
    if result["warnings"]:
        note = "non-fatal; see log" if result["status"] == "PASS" else "see log"
        detail = f' | Warnings: {result["warning_count"]} ({note})'
    print(f'  {result["status"]} | {duration(result["wall_seconds"])} elapsed'
          f' | {result["variant"]} / {result["module"]}{detail}', flush=True)
    if result["status"] != "PASS":
        flags = result["flags"]
        print(f'  rounds={flags["rounds"]}, matched sequences={flags["matched_count"]}; '
              f'log: {log_path}', flush=True)
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--timeout", type=float, default=14400,
                        help="wall seconds per simulator; never shortens tb.cmd")
    parser.add_argument("--max-log-mib", type=int, default=16,
                        help="stop and FAIL a warning flood after this much captured output")
    parser.add_argument("--variant", choices=("all", "no_forks", "forks"), default="all")
    parser.add_argument("--simulator", default="actsim",
                        help="ACTsim executable; defaults to the installed actsim on PATH")
    parser.add_argument("--bench", action="append", metavar="MODULE",
                        help="run only this module; repeat to select several")
    args = parser.parse_args()
    if args.timeout <= 0 or args.max_log_mib < 1:
        parser.error("timeout and max-log-mib must be positive")
    executable = shutil.which(args.simulator)
    if executable is None:
        parser.error(f"simulator not found or not executable: {args.simulator}")
    executable = str(Path(executable).resolve())
    modules = {variant: sorted(p.stem for p in (SOURCE / "top" / variant).glob("*.act"))
               for variant in ("no_forks", "forks")}
    if not modules["no_forks"] or modules["no_forks"] != modules["forks"]:
        parser.error("top-level source module lists are empty or differ between variants")
    if args.bench and set(args.bench) - set(modules["no_forks"]):
        parser.error("unknown top-level module requested")
    variants = ("no_forks", "forks") if args.variant == "all" else (args.variant,)
    expected = {v: [ROOT / v / f"tb_{m}.act" for m in modules[v]
                    if not args.bench or m in args.bench] for v in variants}
    for paths in expected.values():
        for path in paths:
            if not path.is_file():
                parser.error(f"missing testbench: {path}")
    results_dir = ROOT / "results"
    results_dir.mkdir(exist_ok=True)
    before = hashes(SOURCE)
    results = []
    total = sum(len(paths) for paths in expected.values())
    started = time.monotonic()
    print(f"Top suite | {total} tests | sequential", flush=True)
    for variant in variants:
        for path in expected[variant]:
            results.append(run_one(path, results_dir, args.timeout, args.max_log_mib,
                                   executable, index=len(results) + 1, total=total))
    unchanged = before == hashes(SOURCE)
    totals = {kind: sum(r["status"].split()[0] == kind for r in results)
              for kind in ("PASS", "FAIL", "TIMEOUT", "ERROR")}
    print(f"\nCompleted {len(results)}/{total} tests in {duration(time.monotonic() - started)}",
          flush=True)
    print("Results: " + ", ".join(f"{n} {kind}" for kind, n in totals.items()), flush=True)
    print(f"Source integrity: {'unchanged' if unchanged else 'CHANGED'}", flush=True)
    return 0 if unchanged and all(r["status"] == "PASS" for r in results) else 1


if __name__ == "__main__":
    raise SystemExit(main())
