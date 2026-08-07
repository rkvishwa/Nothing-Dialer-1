#!/usr/bin/env python3
"""Translate many locales in parallel (one process per locale)."""

from __future__ import annotations

import argparse
import subprocess
import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SCRIPT = ROOT / "tool" / "translate_all_locales.py"
TRANS = ROOT / "lib" / "l10n" / "translations"

# Import locale list without running main.
sys.path.insert(0, str(ROOT / "tool"))
from translate_all_locales import EN_COPY, GT_TARGET, load_en_strings  # noqa: E402


def needs_work(tag: str, en_count: int) -> bool:
    if tag in EN_COPY:
        path = TRANS / f"{tag}.json"
        return not path.exists()
    path = TRANS / f"{tag}.json"
    if not path.exists():
        return True
    try:
        import json

        data = json.loads(path.read_text(encoding="utf-8"))
        if len(data) < en_count * 0.95:
            return True
        # Still English for a common key?
        if data.get("settings") == "Settings" and tag not in {"en_AU", "en_CA", "en_GB", "en_IN"}:
            return True
    except Exception:  # noqa: BLE001
        return True
    return False


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--jobs", type=int, default=6)
    args = parser.parse_args()

    en_count = len(load_en_strings())
    tags = [t for t in sorted(set(GT_TARGET) | EN_COPY) if needs_work(t, en_count)]
    print(f"Locales to translate: {len(tags)} (jobs={args.jobs})", flush=True)
    if not tags:
        print("Nothing to do.")
        return 0

    pending = list(tags)
    running: dict[subprocess.Popen, str] = {}
    log_dir = Path("/tmp/l10n_workers")
    log_dir.mkdir(exist_ok=True)

    while pending or running:
        while pending and len(running) < args.jobs:
            tag = pending.pop(0)
            log = log_dir / f"{tag}.log"
            log_f = log.open("w")
            proc = subprocess.Popen(
                [sys.executable, "-u", str(SCRIPT), "--only", tag],
                cwd=str(ROOT),
                stdout=log_f,
                stderr=subprocess.STDOUT,
                start_new_session=True,
            )
            running[proc] = tag
            print(f"start {tag} (pid {proc.pid}) remaining={len(pending)}", flush=True)

        time.sleep(2)
        done = [p for p in running if p.poll() is not None]
        for p in done:
            tag = running.pop(p)
            print(f"done {tag} exit={p.returncode}", flush=True)

    print("All workers finished.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
