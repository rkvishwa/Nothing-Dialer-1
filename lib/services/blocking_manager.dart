import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class BlockingManager {
  static const _channel = MethodChannel('nothing_dialer/control');

  static final ValueNotifier<List<String>> blockedNumbersNotifier =
      ValueNotifier<List<String>>([]);

  static Set<String> _normalizedSet = {};
  static Set<String> _suffixSet = {};

  /// Normalizes a phone number by removing all characters except digits and '+'.
  static String normalize(String number) {
    return number.replaceAll(RegExp(r'[^\d+]'), '');
  }

  static void _applyBlockedNumbers(List<String> originalList) {
    final newNormalizedSet = <String>{};
    final newSuffixSet = <String>{};

    for (final num in originalList) {
      final norm = normalize(num);
      if (norm.isNotEmpty) {
        newNormalizedSet.add(norm);
        if (norm.length >= 9) {
          newSuffixSet.add(norm.substring(norm.length - 9));
        }
      }
    }

    _normalizedSet = newNormalizedSet;
    _suffixSet = newSuffixSet;
    blockedNumbersNotifier.value = List<String>.from(originalList);
  }

  static Future<void> refreshBlockedNumbers() async {
    try {
      final List<dynamic>? result = await _channel.invokeMethod<List<dynamic>>(
        'getBlockedNumbers',
      );
      if (result != null) {
        // Preserve original strings for unblocking, but compare normalized.
        final originalList = result.map((e) => e.toString()).toList();
        _applyBlockedNumbers(originalList);
        debugPrint(
          'BlockingManager: Refreshed ${originalList.length} numbers (original formats maintained)',
        );
      }
    } catch (e) {
      debugPrint('Error fetching blocked numbers: $e');
    }
  }

  static bool isBlocked(String number) {
    final target = normalize(number);
    if (target.isEmpty) return false;

    // 1. Exact normalized match
    if (_normalizedSet.contains(target)) return true;

    // 2. Suffix match (last 9 digits)
    if (target.length >= 9) {
      final tSuffix = target.substring(target.length - 9);
      if (_suffixSet.contains(tSuffix)) return true;
    }

    return false;
  }

  static Future<void> blockNumber(String number) async {
    final normalized = normalize(number);
    debugPrint('BlockingManager: Blocking $number (normalized: $normalized)');
    await _channel.invokeMethod('blockNumber', {'number': normalized});
    await refreshBlockedNumbers();
  }

  static Future<void> unblockNumber(String number) async {
    final target = normalize(number);
    final blockedList = blockedNumbersNotifier.value;

    // Find all original strings that match this number.
    final matches = blockedList.where((blocked) {
      final normalizedBlocked = normalize(blocked);
      if (normalizedBlocked == target) return true;
      if (target.length >= 9 && normalizedBlocked.length >= 9) {
        return target.substring(target.length - 9) ==
            normalizedBlocked.substring(normalizedBlocked.length - 9);
      }
      return false;
    }).toList();

    if (matches.isEmpty) {
      debugPrint(
        'BlockingManager: No matches found in system for $number, trying normalized unblock anyway',
      );
      await _channel.invokeMethod('unblockNumber', {'number': target});
    } else {
      for (final match in matches) {
        debugPrint(
          'BlockingManager: Unblocking original system string: "$match"',
        );
        await _channel.invokeMethod('unblockNumber', {'number': match});
      }
    }

    // Optimistic local sync so other screens (e.g. Recents) update immediately.
    final optimisticRemaining = blockedList.where((blocked) {
      final normalizedBlocked = normalize(blocked);
      if (normalizedBlocked == target) return false;
      if (target.length >= 9 && normalizedBlocked.length >= 9) {
        return target.substring(target.length - 9) !=
            normalizedBlocked.substring(normalizedBlocked.length - 9);
      }
      return true;
    }).toList();

    if (optimisticRemaining.length != blockedList.length) {
      _applyBlockedNumbers(optimisticRemaining);
    }

    await refreshBlockedNumbers();
  }
}
