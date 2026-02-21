import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class BlockingManager {
  static const _channel = MethodChannel('nothing_dialer/control');
  
  static final ValueNotifier<List<String>> blockedNumbersNotifier = ValueNotifier<List<String>>([]);

  /// Normalizes a phone number by removing all characters except digits and '+'.
  static String normalize(String number) {
    return number.replaceAll(RegExp(r'[^\d+]'), '');
  }

  static Future<void> refreshBlockedNumbers() async {
    try {
      final List<dynamic>? result = await _channel.invokeMethod<List<dynamic>>('getBlockedNumbers');
      if (result != null) {
        // PRESERVE original strings for unblocking, but they are internally compared normalized
        final originalList = result.map((e) => e.toString()).toList();
        blockedNumbersNotifier.value = originalList;
        debugPrint('BlockingManager: Refreshed ${originalList.length} numbers (original formats maintained)');
      }
    } catch (e) {
      debugPrint('Error fetching blocked numbers: $e');
    }
  }

  static bool isBlocked(String number) {
    final target = normalize(number);
    if (target.isEmpty) return false;

    final blockedList = blockedNumbersNotifier.value;
    
    for (final blocked in blockedList) {
      final normalizedBlocked = normalize(blocked);
      
      // 1. Exact normalized match
      if (normalizedBlocked == target) {
        debugPrint('BlockingManager: isBlocked($number) -> Exact matched with "$blocked"');
        return true;
      }

      // 2. Suffix match (last 9 digits) - handles country codes/zeroes
      if (target.length >= 9 && normalizedBlocked.length >= 9) {
        final tSuffix = target.substring(target.length - 9);
        final bSuffix = normalizedBlocked.substring(normalizedBlocked.length - 9);
        if (tSuffix == bSuffix) {
          debugPrint('BlockingManager: isBlocked($number) -> Suffix matched with "$blocked"');
          return true;
        }
      }
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
    
    // Find ALL original strings that match this number
    final matches = blockedList.where((blocked) {
      final normalizedBlocked = normalize(blocked);
      if (normalizedBlocked == target) return true;
      if (target.length >= 9 && normalizedBlocked.length >= 9) {
        return target.substring(target.length - 9) == normalizedBlocked.substring(normalizedBlocked.length - 9);
      }
      return false;
    }).toList();

    if (matches.isEmpty) {
      debugPrint('BlockingManager: No matches found in system for $number, trying normalized unblock anyway');
      await _channel.invokeMethod('unblockNumber', {'number': target});
    } else {
      for (final match in matches) {
        debugPrint('BlockingManager: Unblocking original system string: "$match"');
        await _channel.invokeMethod('unblockNumber', {'number': match});
      }
    }
    
    await refreshBlockedNumbers();
  }
}
