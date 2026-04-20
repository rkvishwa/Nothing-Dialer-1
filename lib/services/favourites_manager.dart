import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A starred favourite contact (one entry per phone number).
class FavouriteEntry {
  final String id;
  final String number;
  final String name;

  const FavouriteEntry({
    required this.id,
    required this.number,
    required this.name,
  });

  Map<String, String> toJson() => {
        'id': id,
        'number': number,
        'name': name,
      };

  factory FavouriteEntry.fromJson(Map<String, dynamic> m) {
    return FavouriteEntry(
      id: (m['id'] as String?) ?? '',
      number: (m['number'] as String?) ?? '',
      name: (m['name'] as String?) ?? '',
    );
  }
}

/// Persists ordered favourites for the horizontal Recents strip.
class FavouritesManager {
  static const _prefsKey = 'favourites_v1';
  static const _prefsShowStripKey = 'show_favourites_strip';

  static final ValueNotifier<List<FavouriteEntry>> favouritesNotifier =
      ValueNotifier<List<FavouriteEntry>>([]);

  /// When true, show the horizontal favourites row on Recents (if search is empty).
  static final ValueNotifier<bool> showFavouritesStripOnRecents =
      ValueNotifier<bool>(false);

  static String normalize(String number) =>
      number.replaceAll(RegExp(r'[^\d+]'), '');

  static Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    // Always load strip preference (do not skip when favourites JSON is empty).
    showFavouritesStripOnRecents.value =
        prefs.getBool(_prefsShowStripKey) ?? false;

    final raw = prefs.getString(_prefsKey);
    if (raw == null || raw.isEmpty) {
      favouritesNotifier.value = [];
      return;
    }
    try {
      final list = jsonDecode(raw) as List<dynamic>;
      final entries = list
          .map((e) => FavouriteEntry.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList();
      favouritesNotifier.value = entries;
    } catch (e) {
      debugPrint('FavouritesManager: load error $e');
      favouritesNotifier.value = [];
    }
  }

  /// Updates strip visibility immediately, then persists.
  static Future<void> setShowFavouritesStripOnRecents(bool value) async {
    showFavouritesStripOnRecents.value = value;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_prefsShowStripKey, value);
  }

  static Future<void> _save() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonStr = jsonEncode(
      favouritesNotifier.value.map((e) => e.toJson()).toList(),
    );
    await prefs.setString(_prefsKey, jsonStr);
  }

  static bool isFavourite(String number) {
    final target = normalize(number);
    if (target.isEmpty) return false;
    for (final e in favouritesNotifier.value) {
      if (normalize(e.number) == target) return true;
      if (target.length >= 9 && normalize(e.number).length >= 9) {
        final ta = target.substring(target.length - 9);
        final tb = normalize(e.number).substring(normalize(e.number).length - 9);
        if (ta == tb) return true;
      }
    }
    return false;
  }

  static Future<void> addFavourite(FavouriteEntry entry) async {
    final target = normalize(entry.number);
    if (target.isEmpty) return;
    final list = List<FavouriteEntry>.from(favouritesNotifier.value);
    list.removeWhere((e) => normalize(e.number) == target);
    list.insert(0, entry);
    favouritesNotifier.value = list;
    await _save();
  }

  static Future<void> removeFavourite(String number) async {
    final target = normalize(number);
    if (target.isEmpty) return;
    final list = favouritesNotifier.value
        .where((e) => normalize(e.number) != target)
        .toList();
    favouritesNotifier.value = list;
    await _save();
  }

  static Future<void> reorder(int oldIndex, int newIndex) async {
    final list = List<FavouriteEntry>.from(favouritesNotifier.value);
    if (oldIndex < 0 || oldIndex >= list.length) return;
    if (newIndex < 0 || newIndex > list.length) return;
    var insert = newIndex;
    if (insert > oldIndex) insert--;
    final item = list.removeAt(oldIndex);
    list.insert(insert, item);
    favouritesNotifier.value = list;
    await _save();
  }
}
