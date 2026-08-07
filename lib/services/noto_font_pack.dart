import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Pref key: multilingual Noto pack finished downloading at least once.
const String kNotoPackReadyPrefKey = 'noto_font_pack_ready';

/// Runtime family name used when [DialerFontChoice.noto] is selected.
const String kNotoFontFamily = 'NotoSans';

/// Downloads and caches Google Noto fonts so UI can render all app languages
/// (Latin, Indic, CJK, Arabic, Thai, etc.) even when Ndot/Serif lack glyphs.
class NotoFontPack {
  NotoFontPack._();

  static final ValueNotifier<bool> ready = ValueNotifier(false);
  static final ValueNotifier<bool> downloading = ValueNotifier(false);
  static final ValueNotifier<String?> lastError = ValueNotifier(null);

  /// 0.0–1.0 while [downloading]; 0 when idle.
  static final ValueNotifier<double> progress = ValueNotifier(0);

  /// Families finished in the current download pass.
  static final ValueNotifier<int> completedCount = ValueNotifier(0);

  /// Total families in the current download pass.
  static final ValueNotifier<int> totalCount = ValueNotifier(0);

  static Future<void> loadReadyFlag() async {
    final prefs = await SharedPreferences.getInstance();
    ready.value = prefs.getBool(kNotoPackReadyPrefKey) ?? false;
  }

  /// Families covering scripts used by [AppLocalizations.supportedLocales].
  static List<TextStyle> get _packStyles => [
        GoogleFonts.notoSans(),
        GoogleFonts.notoSansArabic(),
        GoogleFonts.notoSansDevanagari(),
        GoogleFonts.notoSansTamil(),
        GoogleFonts.notoSansTelugu(),
        GoogleFonts.notoSansKannada(),
        GoogleFonts.notoSansMalayalam(),
        GoogleFonts.notoSansGujarati(),
        GoogleFonts.notoSansGurmukhi(),
        GoogleFonts.notoSansBengali(),
        GoogleFonts.notoSansSinhala(),
        GoogleFonts.notoSansThai(),
        GoogleFonts.notoSansHebrew(),
        GoogleFonts.notoSansSc(),
        GoogleFonts.notoSansTc(),
        GoogleFonts.notoSansJp(),
        GoogleFonts.notoSansKr(),
        GoogleFonts.notoSansArmenian(),
        GoogleFonts.notoSansGeorgian(),
        GoogleFonts.notoSansKhmer(),
        GoogleFonts.notoSansLao(),
        GoogleFonts.notoSansMyanmar(),
      ];

  /// Fallback chain after a successful download (plus platform generics).
  static List<String> get fallbackFamilies => [
        'Noto Sans',
        'Noto Sans Arabic',
        'Noto Sans Devanagari',
        'Noto Sans Tamil',
        'Noto Sans Telugu',
        'Noto Sans Kannada',
        'Noto Sans Malayalam',
        'Noto Sans Gujarati',
        'Noto Sans Gurmukhi',
        'Noto Sans Bengali',
        'Noto Sans Sinhala',
        'Noto Sans Thai',
        'Noto Sans Hebrew',
        'Noto Sans SC',
        'Noto Sans TC',
        'Noto Sans JP',
        'Noto Sans KR',
        'Noto Sans Armenian',
        'Noto Sans Georgian',
        'Noto Sans Khmer',
        'Noto Sans Lao',
        'Noto Sans Myanmar',
        'Roboto',
        'sans-serif',
      ];

  static TextStyle textStyle({TextStyle? base}) {
    final b = base ?? const TextStyle();
    return GoogleFonts.notoSans(
      textStyle: b,
    ).copyWith(
      fontFamilyFallback: fallbackFamilies,
    );
  }

  static void _resetProgress() {
    progress.value = 0;
    completedCount.value = 0;
    totalCount.value = 0;
  }

  /// Ensures pack is on disk. Safe to call repeatedly.
  static Future<bool> ensureDownloaded({bool force = false}) async {
    if (ready.value && !force) {
      // Warm runtime cache even if pref says ready.
      try {
        await GoogleFonts.pendingFonts(_packStyles);
        return true;
      } catch (_) {
        // Fall through and re-download.
      }
    }
    if (downloading.value) return false;
    downloading.value = true;
    lastError.value = null;
    final styles = _packStyles;
    totalCount.value = styles.length;
    completedCount.value = 0;
    progress.value = 0;
    try {
      for (var i = 0; i < styles.length; i++) {
        await GoogleFonts.pendingFonts([styles[i]]);
        completedCount.value = i + 1;
        progress.value = (i + 1) / styles.length;
      }
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(kNotoPackReadyPrefKey, true);
      ready.value = true;
      return true;
    } catch (e) {
      lastError.value = e.toString();
      return false;
    } finally {
      downloading.value = false;
      if (!ready.value) {
        _resetProgress();
      } else {
        progress.value = 1;
        completedCount.value = totalCount.value;
      }
    }
  }
}
