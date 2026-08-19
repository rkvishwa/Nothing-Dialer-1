import 'package:shared_preferences/shared_preferences.dart';

/// SharedPreferences keys for call-screen display privacy (read by native InCallActivity).
const kHideContactNumberIncomingKey = 'hide_contact_number_incoming';
const kHideContactNumberOutgoingKey = 'hide_contact_number_outgoing';
const kHideContactNumberIncallKey = 'hide_contact_number_incall';
const kHideCallingSimIncomingKey = 'hide_calling_sim_incoming';
const kHideCallingSimOutgoingKey = 'hide_calling_sim_outgoing';
const kHideCallingSimIncallKey = 'hide_calling_sim_incall';

const _allCallDisplayPrefKeys = [
  kHideContactNumberIncomingKey,
  kHideContactNumberOutgoingKey,
  kHideContactNumberIncallKey,
  kHideCallingSimIncomingKey,
  kHideCallingSimOutgoingKey,
  kHideCallingSimIncallKey,
];

/// Per-surface call display privacy toggles.
class CallDisplaySettings {
  const CallDisplaySettings({
    this.hideContactNumberIncoming = false,
    this.hideContactNumberOutgoing = false,
    this.hideContactNumberIncall = false,
    this.hideCallingSimIncoming = false,
    this.hideCallingSimOutgoing = false,
    this.hideCallingSimIncall = false,
  });

  final bool hideContactNumberIncoming;
  final bool hideContactNumberOutgoing;
  final bool hideContactNumberIncall;
  final bool hideCallingSimIncoming;
  final bool hideCallingSimOutgoing;
  final bool hideCallingSimIncall;

  bool get isDefault =>
      !hideContactNumberIncoming &&
      !hideContactNumberOutgoing &&
      !hideContactNumberIncall &&
      !hideCallingSimIncoming &&
      !hideCallingSimOutgoing &&
      !hideCallingSimIncall;

  CallDisplaySettings copyWith({
    bool? hideContactNumberIncoming,
    bool? hideContactNumberOutgoing,
    bool? hideContactNumberIncall,
    bool? hideCallingSimIncoming,
    bool? hideCallingSimOutgoing,
    bool? hideCallingSimIncall,
  }) {
    return CallDisplaySettings(
      hideContactNumberIncoming:
          hideContactNumberIncoming ?? this.hideContactNumberIncoming,
      hideContactNumberOutgoing:
          hideContactNumberOutgoing ?? this.hideContactNumberOutgoing,
      hideContactNumberIncall:
          hideContactNumberIncall ?? this.hideContactNumberIncall,
      hideCallingSimIncoming:
          hideCallingSimIncoming ?? this.hideCallingSimIncoming,
      hideCallingSimOutgoing:
          hideCallingSimOutgoing ?? this.hideCallingSimOutgoing,
      hideCallingSimIncall: hideCallingSimIncall ?? this.hideCallingSimIncall,
    );
  }
}

CallDisplaySettings loadCallDisplaySettingsFromPrefs(SharedPreferences prefs) {
  return CallDisplaySettings(
    hideContactNumberIncoming:
        prefs.getBool(kHideContactNumberIncomingKey) ?? false,
    hideContactNumberOutgoing:
        prefs.getBool(kHideContactNumberOutgoingKey) ?? false,
    hideContactNumberIncall: prefs.getBool(kHideContactNumberIncallKey) ?? false,
    hideCallingSimIncoming: prefs.getBool(kHideCallingSimIncomingKey) ?? false,
    hideCallingSimOutgoing: prefs.getBool(kHideCallingSimOutgoingKey) ?? false,
    hideCallingSimIncall: prefs.getBool(kHideCallingSimIncallKey) ?? false,
  );
}

Future<void> saveCallDisplaySettingsToPrefs(
  SharedPreferences prefs,
  CallDisplaySettings settings,
) async {
  await prefs.setBool(
    kHideContactNumberIncomingKey,
    settings.hideContactNumberIncoming,
  );
  await prefs.setBool(
    kHideContactNumberOutgoingKey,
    settings.hideContactNumberOutgoing,
  );
  await prefs.setBool(
    kHideContactNumberIncallKey,
    settings.hideContactNumberIncall,
  );
  await prefs.setBool(
    kHideCallingSimIncomingKey,
    settings.hideCallingSimIncoming,
  );
  await prefs.setBool(
    kHideCallingSimOutgoingKey,
    settings.hideCallingSimOutgoing,
  );
  await prefs.setBool(kHideCallingSimIncallKey, settings.hideCallingSimIncall);
}

Future<void> clearCallDisplaySettingsPrefs(SharedPreferences prefs) async {
  for (final key in _allCallDisplayPrefKeys) {
    await prefs.remove(key);
  }
}
