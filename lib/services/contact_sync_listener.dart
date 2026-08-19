import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/services.dart';

import '../main.dart' as main_app;
import 'contact_photo_cache.dart';
import 'contacts_cache.dart';

/// Listens for Android ContactsProvider changes and refreshes cached photos.
class ContactSyncListener {
  ContactSyncListener._();

  static const EventChannel _channel = EventChannel('nothing_dialer/contacts');

  static StreamSubscription<dynamic>? _subscription;
  static Timer? _resumeDebounce;

  static void start() {
    if (kIsWeb || !Platform.isAndroid) return;
    _subscription?.cancel();
    _subscription = _channel.receiveBroadcastStream().listen(
      (_) => _handleContactsChanged(),
      onError: (_) {},
    );
  }

  static void stop() {
    _resumeDebounce?.cancel();
    _resumeDebounce = null;
    unawaited(_subscription?.cancel());
    _subscription = null;
  }

  /// Fallback when returning from Google Contacts without a provider event.
  static void onAppResumed() {
    if (kIsWeb || !Platform.isAndroid) return;
    _resumeDebounce?.cancel();
    _resumeDebounce = Timer(const Duration(milliseconds: 300), () {
      _handleContactsChanged();
    });
  }

  static void _handleContactsChanged() {
    ContactPhotoCache.clear();
    ContactsCache.invalidate();
    main_app.recentsRefreshTickNotifier.value++;
    main_app.contactsRefreshTickNotifier.value++;
  }
}
