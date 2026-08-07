#!/usr/bin/env python3
"""One-off helper: wrap screen Scaffolds with DialerFontScope and wire TextStyle roles."""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SCREENS = ROOT / "lib" / "screens"

IMPORT_BLOCK = """
import '../extensions/dialer_text_style.dart';
import '../services/app_font_config.dart';
import '../widgets/dialer_font_scope.dart';
"""

SURFACE_BY_FILE = {
    "recents_screen.dart": "DialerFontSurface.recents",
    "contacts_screen.dart": "DialerFontSurface.contacts",
    "settings_screen.dart": "DialerFontSurface.settings",
    "dialer_shell.dart": "DialerFontSurface.shell",
    "floating_dialpad.dart": "DialerFontSurface.dialpad",
    "default_dialer_screen.dart": "DialerFontSurface.defaultDialer",
    "favourites_screen.dart": "DialerFontSurface.favourites",
    "blocked_numbers_screen.dart": "DialerFontSurface.blocked",
    "contact_detail_screen.dart": "DialerFontSurface.contactDetail",
    "call_history_screen.dart": "DialerFontSurface.callHistory",
    "language_picker_sheet.dart": "DialerFontSurface.sheets",
    "sim_picker_sheet.dart": "DialerFontSurface.sheets",
    "icon_picker_screen.dart": "DialerFontSurface.sheets",
    "dialer_screen.dart": "DialerFontSurface.dialpad",
    "font_settings_sheet.dart": None,
}


def add_imports(text: str) -> str:
    if "dialer_font_scope.dart" in text:
        return text
    idx = text.rfind("import ")
    if idx == -1:
        return text
    line_end = text.find("\n", idx)
    return text[: line_end + 1] + IMPORT_BLOCK + text[line_end + 1 :]


def wrap_scaffold_returns(text: str, surface: str) -> str:
    if "DialerFontScope(" in text:
        return text
    pattern = re.compile(r"(\n[ \t]*)return Scaffold\(")
    count = 0

    def repl(m: re.Match[str]) -> str:
        nonlocal count
        count += 1
        indent = m.group(1)
        inner = indent + "  "
        return (
            f"{indent}return DialerFontScope(\n"
            f"{inner}surface: {surface},\n"
            f"{inner}child: Scaffold("
        )

    text = pattern.sub(repl, text)
    if count == 0:
        return text
    # Balance: add closing ) before semicolon that closes return Scaffold
    # Heuristic: for each wrap, find matching Scaffold close — skip for manual fix
    return text


def patch_text_styles(text: str) -> str:
    if "dialerTextStyle(" in text:
        return text

    def role_for_block(block: str) -> str:
        if re.search(r"fontSize:\s*48", block) or re.search(
            r"fontSize:\s*2[4-9]", block
        ):
            return "DialerFontRole.pageTitle"
        if re.search(r"fontSize:\s*1[0-2]", block) and re.search(
            r"letterSpacing:\s*1\.[0-9]", block
        ):
            return "DialerFontRole.sectionHeader"
        if re.search(r"fontSize:\s*1[0-2]", block) and "w600" in block:
            return "DialerFontRole.sectionHeader"
        if "FontWeight.bold" in block or re.search(r"fontSize:\s*1[48]", block):
            if re.search(r"fontSize:\s*3[0-9]", block):
                return "DialerFontRole.dialKey"
            return "DialerFontRole.button"
        if re.search(r"fontSize:\s*3[0-9]", block):
            return "DialerFontRole.dialKey"
        if re.search(r"fontSize:\s*1[0-3]", block):
            return "DialerFontRole.secondary"
        return "DialerFontRole.primary"

    def repl_style(m: re.Match[str]) -> str:
        prefix = m.group(1)
        rest = m.group(2)
        role = role_for_block(rest)
        return f"{prefix}style: context.dialerTextStyle({role}, TextStyle({rest}"

    text = re.sub(
        r"([ \t]*)style:\s*(const\s+)?TextStyle\(",
        repl_style,
        text,
    )
    return text


def main() -> None:
    for name, surface in SURFACE_BY_FILE.items():
        if surface is None:
            continue
        path = SCREENS / name
        if not path.exists():
            print(f"skip {name}")
            continue
        original = path.read_text(encoding="utf-8")
        text = add_imports(original)
        text = wrap_scaffold_returns(text, surface)
        text = patch_text_styles(text)
        if text != original:
            path.write_text(text, encoding="utf-8")
            print(f"updated {name}")
        else:
            print(f"unchanged {name}")


if __name__ == "__main__":
    main()
