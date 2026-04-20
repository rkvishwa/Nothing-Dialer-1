import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Result of a voice-search attempt.
sealed class VoiceSearchResult {
  const VoiceSearchResult();
}

class VoiceSearchSuccess extends VoiceSearchResult {
  final String text;
  const VoiceSearchSuccess(this.text);
}

class VoiceSearchCancelled extends VoiceSearchResult {
  const VoiceSearchCancelled();
}

class VoiceSearchUnavailable extends VoiceSearchResult {
  final String message;
  const VoiceSearchUnavailable(this.message);
}

/// Launches Android's built-in speech recognizer (RecognizerIntent) and
/// returns a structured result.
class VoiceSearch {
  static const _channel = MethodChannel('nothing_dialer/control');

  static Future<VoiceSearchResult> listen() async {
    try {
      final result = await _channel.invokeMethod<String>('startVoiceSearch');
      final text = result?.trim();
      if (text == null || text.isEmpty) {
        return const VoiceSearchCancelled();
      }
      return VoiceSearchSuccess(text);
    } on PlatformException catch (e) {
      final msg = e.code == 'NO_RECOGNIZER'
          ? (e.message ??
              'Voice search is not available on this device.')
          : 'Voice search failed: ${e.message ?? e.code}';
      return VoiceSearchUnavailable(msg);
    }
  }

  /// Convenience helper: runs [listen] and shows a SnackBar on
  /// unavailability. Returns the recognized text or null.
  static Future<String?> listenWithFeedback(BuildContext context) async {
    final result = await listen();
    switch (result) {
      case VoiceSearchSuccess(:final text):
        return text;
      case VoiceSearchCancelled():
        return null;
      case VoiceSearchUnavailable(:final message):
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
              behavior: SnackBarBehavior.floating,
            ),
          );
        }
        return null;
    }
  }
}
