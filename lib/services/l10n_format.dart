import 'package:flutter/material.dart';
import 'package:nothing_dialer/l10n/app_localizations.dart';

import 'launcher_icon_manager.dart';
import 'package:call_log/call_log.dart';

/// Maps persisted Glyph animation style keys to localized labels.
String glyphStyleLabel(AppLocalizations l10n, String storedStyle) {
  switch (storedStyle) {
    case 'None':
      return l10n.glyphNone;
    case 'Breath & Progress':
      return l10n.glyphBreathProgress;
    case 'Accumulate':
      return l10n.glyphAccumulate;
    case 'Single':
      return l10n.glyphSingle;
    case 'Breath':
      return l10n.glyphBreath;
    case 'Steady':
      return l10n.glyphSteady;
    default:
      return storedStyle;
  }
}

String themeModeLabel(AppLocalizations l10n, String mode) {
  switch (mode) {
    case 'light':
      return l10n.themeLight;
    case 'dark':
      return l10n.themeDark;
    default:
      return l10n.themeSystemDefault;
  }
}

String torchModeLabel(AppLocalizations l10n, String mode) {
  if (mode == 'off') return l10n.torchOff;
  return l10n.torchFixedInterval;
}

String frequentPeriodLabel(AppLocalizations l10n, String period) {
  switch (period) {
    case 'day':
      return l10n.periodLast24Hours;
    case 'week':
      return l10n.periodLast7Days;
    case 'month':
      return l10n.periodLast30Days;
    case 'all':
      return l10n.periodAllTime;
    default:
      return l10n.periodLast12Months;
  }
}

String launcherIconLabel(AppLocalizations l10n, LauncherIconVariant variant) {
  switch (variant.id) {
    case 'default':
      return l10n.launcherClassicBlack;
    case 'light':
      return l10n.launcherLight;
    case 'red':
      return l10n.launcherNothingRed;
    case 'grey':
      return l10n.launcherDarkGrey;
    case 'cream':
      return l10n.launcherCream;
    case 'old_phone':
      return l10n.launcherRetroPhone;
    case 'old_phone_light':
      return l10n.launcherRetroPhoneLight;
    default:
      return variant.label;
  }
}

String glyphStyleOutgoingSubtitle(AppLocalizations l10n, String storedStyle) {
  switch (storedStyle) {
    case 'None':
      return l10n.glyphNoneOutgoingSubtitle;
    case 'Breath & Progress':
      return l10n.glyphBreathProgressSubtitle;
    case 'Accumulate':
      return l10n.glyphAccumulateSubtitle;
    case 'Single':
      return l10n.glyphSingleSubtitle;
    case 'Breath':
      return l10n.glyphBreathSubtitle;
    case 'Steady':
      return l10n.glyphSteadySubtitle;
    default:
      return storedStyle;
  }
}

String glyphStyleInCallSubtitle(AppLocalizations l10n, String storedStyle) {
  if (storedStyle == 'None') return l10n.glyphNoneInCallSubtitle;
  return glyphStyleOutgoingSubtitle(l10n, storedStyle);
}

String callTypeLabel(AppLocalizations l10n, CallType? type) {
  switch (type) {
    case CallType.missed:
      return l10n.callTypeMissed;
    case CallType.rejected:
      return l10n.callTypeRejected;
    case CallType.incoming:
    case CallType.wifiIncoming:
      return l10n.callTypeIncoming;
    case CallType.outgoing:
    case CallType.wifiOutgoing:
      return l10n.callTypeOutgoing;
    default:
      return '';
  }
}

String answerMethodSubtitle(AppLocalizations l10n, String method) {
  switch (method) {
    case 'button':
      return l10n.answerButtonTapSubtitle;
    case 'huawei':
      return l10n.answerHuaweiTileSubtitle;
    default:
      return l10n.answerSlide;
  }
}

String frequentPeriodSubtitle(AppLocalizations l10n, String period) {
  switch (period) {
    case 'day':
      return l10n.periodLast24HoursSubtitle;
    case 'week':
      return l10n.periodLast7DaysSubtitle;
    case 'month':
      return l10n.periodLast30DaysSubtitle;
    case 'all':
      return l10n.periodAllTimeSubtitle;
    default:
      return l10n.periodLast12MonthsSubtitle;
  }
}

String torchModePickerSubtitle(AppLocalizations l10n, String mode, {required bool incoming, required bool ongoing}) {
  if (mode == 'interval') return l10n.torchFixedIntervalSubtitle;
  if (ongoing) return l10n.torchOffOngoingSubtitle;
  if (incoming) return l10n.torchOffIncomingSubtitle;
  return l10n.torchOffOutgoingSubtitle;
}

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
