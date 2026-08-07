#!/usr/bin/env python3
"""Fix missing closing paren after dialerTextStyle(..., TextStyle(...))."""
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SCREENS = ROOT / "lib" / "screens"


def fix_file(text: str) -> str:
    needle = "context.dialerTextStyle("
    out: list[str] = []
    i = 0
    lines = text.split("\n")
    while i < len(lines):
        line = lines[i]
        if needle not in line:
            out.append(line)
            i += 1
            continue
        # Collect until TextStyle( ... ) closes — track paren depth from first TextStyle(
        block_start = i
        combined = line
        j = i
        if "TextStyle(" not in line:
            while j + 1 < len(lines) and "TextStyle(" not in lines[j + 1]:
                j += 1
                combined += "\n" + lines[j]
        ts_idx = combined.find("TextStyle(")
        if ts_idx == -1:
            out.append(line)
            i += 1
            continue
        depth = 0
        started = False
        k = ts_idx
        while k < len(combined):
            ch = combined[k]
            if ch == "(":
                depth += 1
                started = True
            elif ch == ")":
                depth -= 1
                if started and depth == 0:
                    # position k is closing paren of TextStyle
                    break
            k += 1
        else:
            out.append(line)
            i += 1
            continue
        # After TextStyle closes, expect optional whitespace and comma
        rest = combined[k + 1 :]
        if rest.lstrip().startswith(","):
            # insert ) before comma
            fixed = combined[: k + 1] + ")" + rest
            out.extend(fixed.split("\n"))
            i = j + 1
            continue
        out.append(line)
        i += 1
    return "\n".join(out)


def main() -> None:
    for path in SCREENS.glob("*.dart"):
        original = path.read_text(encoding="utf-8")
        if "dialerTextStyle(" not in original:
            continue
        fixed = fix_file(original)
        if fixed != original:
            path.write_text(fixed, encoding="utf-8")
            print("fixed", path.name)


if __name__ == "__main__":
    main()
