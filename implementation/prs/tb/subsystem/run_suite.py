#!/usr/bin/env python3
"""Run subsystem benches sequentially; write only results/<variant>/tb_<Module>.log."""
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
    # Same recovered-warning policy as tb/block/run_suite.py. Substitution is
    # expected for the CHP environment and the HSE mutex inside Arb2 only.
    diagnostics = [line for line in output.splitlines()
                   if re.search(r"WARNING:|FATAL:|ERROR:|ASSERTION failed|Assertion failed|"
                                r"CHP model:.*is X|Execution aborted|Parse error", line)
                   and "substituting chp model" not in line
                   and line != 'WARNING: ArbMutex<>: substituting hse model (requested prs, not found)']
    transient = re.compile(
        r"^\[\s*\d+\] (?:<[^>]+>\s+"
        r"WARNING: (?:weak-)?(?:unstable transition|interference) on "
        r"|<[^>]+>\s+CHP model: Boolean variable `(?:valid|spacer)' is X$)")
    warnings = [line for line in diagnostics if transient.search(line)]
    diagnostics = [line for line in diagnostics if not transient.search(line)]
    flags = {}
    names = ["done", "fail", "rounds", "issued", "tx_count", "tx_last", "tx_next"]
    names += [f"rx_{kind}[{i}]" for i in range(6) for kind in ("count", "last", "next")]
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


def run_one(path, results_dir, timeout, *, index=1, total=1):
    log_path = results_dir / path.parent.name / (path.stem + ".log")
    log_path.parent.mkdir(parents=True, exist_ok=True)
    env = os.environ.copy()
    # Resolve the original block sources without local import links.
    env["ACT_PATH"] = str(SOURCE / "block")
    timed_out, invocation_error, code = False, None, None
    started = time.monotonic()
    with show_progress(path, index, total), \
            (ROOT / "tb.cmd").open("rb") as commands, log_path.open("wb") as log:
        try:
            result = subprocess.run(["actsim", "-p", path.stem, path.name],
                                    cwd=path.parent, stdin=commands, stdout=log,
                                    stderr=subprocess.STDOUT, env=env, timeout=timeout)
            code = result.returncode
        except subprocess.TimeoutExpired:
            timed_out, code = True, -1
        except OSError as exc:
            invocation_error = str(exc)
            log.write(f"ACTsim invocation error: {exc}\n".encode())
    result = classify(log_path.read_text(errors="replace"), code, timed_out, invocation_error)
    result.update(variant=path.parent.name, module=path.stem.removeprefix("tb_"),
                  log=str(log_path.relative_to(ROOT)), wall_seconds=time.monotonic() - started)
    detail = ""
    if result["warnings"]:
        note = "non-fatal; see log" if result["status"] == "PASS" else "see log"
        detail = f' | Warnings: {len(result["warnings"])} ({note})'
    print(f'  {result["status"]} | {duration(result["wall_seconds"])} elapsed'
          f' | {result["variant"]} / {result["module"]}{detail}', flush=True)
    if result["status"] != "PASS":
        flags = result["flags"]
        print(f'  rounds={flags["rounds"]}, completed inputs={flags["tx_count"]}; '
              f'log: {log_path}', flush=True)
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--timeout", type=float, default=14400,
                        help="wall seconds per simulator; never shortens tb.cmd")
    parser.add_argument("--variant", choices=("all", "no_forks", "forks"), default="all")
    parser.add_argument("--bench", action="append", metavar="MODULE",
                        help="run only this module; repeat to select several")
    args = parser.parse_args()
    if args.timeout <= 0:
        parser.error("timeout must be positive")
    modules = {variant: sorted(p.stem for p in (SOURCE / "subsystem" / variant).glob("*.act"))
               for variant in ("no_forks", "forks")}
    if not modules["no_forks"] or modules["no_forks"] != modules["forks"]:
        parser.error("subsystem source module lists are empty or differ between variants")
    if args.bench and set(args.bench) - set(modules["no_forks"]):
        parser.error("unknown subsystem module requested")
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
    print(f"Subsystem suite | {total} tests | sequential", flush=True)
    for variant in variants:
        for path in expected[variant]:
            results.append(run_one(path, results_dir, args.timeout,
                                   index=len(results) + 1, total=total))
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
