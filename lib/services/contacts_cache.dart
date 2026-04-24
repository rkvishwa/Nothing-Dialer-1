import 'package:flutter_contacts/flutter_contacts.dart';

/// In-memory contacts for the session (avoids re-querying CP on every tab switch).
class ContactsCache {
  static List<Contact>? _cached;
  static Future<List<Contact>>? _inFlight;

  static List<Contact>? get snapshot => _cached;

  static bool get hasData => _cached != null;

  static void invalidate() {
    _cached = null;
    _inFlight = null;
  }

  /// Loads contacts once per session unless [forceRefresh] or [invalidate].
  static Future<List<Contact>> load({
    required Future<List<Contact>> Function() fetch,
    bool forceRefresh = false,
  }) async {
    if (forceRefresh) {
      _cached = null;
      _inFlight = null;
    }
    if (_cached != null) {
      return _cached!;
    }
    if (_inFlight != null) {
      return _inFlight!;
    }
    _inFlight = fetch().then((list) {
      _cached = list;
      _inFlight = null;
      return list;
    });
    return _inFlight!;
  }
}
