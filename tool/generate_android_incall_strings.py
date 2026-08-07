#!/usr/bin/env python3
"""Generate translated android/app/src/main/res/values-*/strings.xml for in-call UI."""

from __future__ import annotations

import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
L10N = ROOT / "lib" / "l10n"
VALUES = ROOT / "android" / "app" / "src" / "main" / "res"
TRANS = L10N / "translations"

# Android resource name -> Flutter ARB key (when names differ, map explicitly).
ANDROID_TO_ARB: dict[str, str] = {
    "in_call_mute": "inCallMute",
    "in_call_keypad": "inCallKeypad",
    "in_call_speaker": "inCallSpeaker",
    "in_call_more": "inCallMore",
    "in_call_bluetooth": "inCallBluetooth",
    "in_call_phone": "inCallPhone",
    "in_call_add_call": "inCallAddCall",
    "in_call_change_sim": "inCallChangeSim",
    "in_call_decline": "inCallDecline",
    "in_call_answer": "inCallAnswer",
    "in_call_message": "inCallMessage",
    "in_call_calling": "inCallCalling",
    "in_call_incoming": "inCallIncoming",
    "in_call_select_sim": "inCallSelectSim",
    "in_call_switching_sim": "inCallSwitchingSim",
    "in_call_call_ended": "inCallCallEnded",
    "in_call_calling_via": "inCallCallingVia",
    "in_call_calling_via_html": "inCallCallingViaHtml",
    "in_call_choose_sim": "inCallChooseSim",
    "in_call_drag_answer_decline": "inCallDragAnswerDecline",
    "in_call_mobile_number": "inCallMobileNumber",
    "in_call_audio_route_current": "inCallAudioRouteCurrent",
    "in_call_call_via_from": "inCallCallViaFrom",
    "in_call_call_from": "inCallCallFrom",
    "in_call_unknown": "inCallUnknown",
    "in_call_sim_slot": "simSlot",
    "native_select_contact_ringtone": "selectContactRingtone",
    "native_speak_to_search": "speakToSearchPrompt",
    "native_phone_permission_required": "phonePermissionRequired",
    "native_call_failed": "callFailed",
    "native_call_permission_denied": "callPermissionDenied",
    "native_already_default_dialer": "alreadyDefaultDialer",
}

def stem_to_android_folder(stem: str) -> str | None:
    """Map app_*.arb / translations stem to Android values-* folder suffix."""
    if stem.startswith("en"):
        return None  # default values/
    if "_" not in stem:
        return stem
    lang, region = stem.split("_", 1)
    # Legacy: lang-rXX only when region is exactly two ISO letters (e.g. zh_CN → zh-rCN).
    if len(region) == 2 and region.isalpha():
        return f"{lang}-r{region}"
    # BCP 47 with numeric/script subtags (e.g. es_419 → b+es+419). es-r419 is invalid.
    return f"b+{lang}+{region}"


def discover_locales() -> dict[str, str]:
    """folder suffix -> translation stem for every non-English translation JSON."""
    out: dict[str, str] = {}
    if not TRANS.exists():
        return out
    for path in sorted(TRANS.glob("*.json")):
        if path.name.endswith("_by_locale.json"):
            continue
        stem = path.stem
        folder = stem_to_android_folder(stem)
        if folder:
            out[folder] = stem
    return out


# Locales: folder suffix -> translation json stem / app_XX.arb stem
LOCALES = discover_locales()

DEFAULT_EN = (VALUES / "values" / "strings.xml").read_text(encoding="utf-8")
STRING_RE = re.compile(
    r'<string name="(?P<name>[^"]+)"(?: formatted="false")?>(?P<body>.*?)</string>',
    re.DOTALL,
)
ENTRIES = {m.group("name"): m.group("body") for m in STRING_RE.finditer(DEFAULT_EN)}


def escape_xml(s: str) -> str:
    return (
        s.replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")
        .replace("'", "\\'")
        .replace('"', "&quot;")
    )


def format_sim_slot(text: str) -> str:
    """ARB simSlot uses {slot}; Android uses %1$d."""
    return text.replace("{slot}", "%1$d")


def format_with_placeholders(android_name: str, text: str) -> str:
    text = format_sim_slot(text)
    if android_name == "in_call_mobile_number":
        return text.replace("{number}", "%1$s")
    if android_name == "in_call_audio_route_current":
        return text.replace("{label}", "%1$s")
    if android_name in (
        "in_call_calling_via",
        "in_call_calling_via_html",
    ):
        text = text.replace("{sim}", "%1$s")
        return text.replace("<b>", "&lt;b&gt;").replace("</b>", "&lt;/b&gt;")
    if android_name == "in_call_call_via_from":
        t = text.replace("{sim}", "%1$s")
        return t.replace("<b>", "&lt;b&gt;").replace("</b>", "&lt;/b&gt;")
    if android_name == "native_call_failed":
        return text.replace("{error}", "%1$s")
    return text


def load_translation_json(stem: str) -> dict[str, str]:
    path = TRANS / f"{stem}.json"
    if not path.exists():
        return {}
    return json.loads(path.read_text(encoding="utf-8"))


def load_arb_strings(stem: str) -> dict[str, str]:
    arb_path = L10N / f"app_{stem}.arb"
    if not arb_path.exists():
        return {}
    data = json.loads(arb_path.read_text(encoding="utf-8"))
    return {k: v for k, v in data.items() if isinstance(v, str) and not k.startswith("@")}


def resolve_string(android_name: str, stem: str, overrides: dict[str, str], arb: dict[str, str]) -> str:
    en_body = ENTRIES[android_name]
    arb_key = ANDROID_TO_ARB.get(android_name)
    if not arb_key:
        return en_body
    if arb_key in overrides:
        return format_with_placeholders(android_name, overrides[arb_key])
    if arb_key in arb:
        return format_with_placeholders(android_name, arb[arb_key])
    return en_body


def main() -> None:
    for folder, stem in LOCALES.items():
        overrides = load_translation_json(stem)
        arb = load_arb_strings(stem)
        out_dir = VALUES / f"values-{folder}"
        out_dir.mkdir(parents=True, exist_ok=True)
        lines = ['<?xml version="1.0" encoding="utf-8"?>', "<resources>"]
        for name in ENTRIES:
            body = resolve_string(name, stem, overrides, arb)
            lines.append(f'    <string name="{name}">{escape_xml(body)}</string>')
        lines.append("</resources>")
        lines.append("")
        (out_dir / "strings.xml").write_text("\n".join(lines), encoding="utf-8")
        print(f"Wrote values-{folder}/strings.xml")


if __name__ == "__main__":
    main()
