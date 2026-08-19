import 'package:flutter/material.dart';
import 'package:nothing_dialer/l10n/app_localizations.dart';

import '../services/call_display_prefs.dart';
import '../widgets/settings_picker_sheet.dart';

Future<void> showCallDisplaySettingsSheet(
  BuildContext context, {
  required CallDisplaySettings initial,
  required Future<void> Function(CallDisplaySettings settings) onSave,
}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    enableDrag: true,
    backgroundColor: Colors.transparent,
    builder: (sheetContext) => _CallDisplaySettingsSheet(
      initial: initial,
      onSave: onSave,
    ),
  );
}

String callDisplaySettingsSubtitle(
  AppLocalizations l10n,
  CallDisplaySettings settings,
) {
  if (settings.isDefault) {
    return l10n.callDisplaySubtitleDefault;
  }

  final parts = <String>[];
  if (settings.hideContactNumberIncoming) {
    parts.add(l10n.callDisplaySubtitleNameOnlyIncoming);
  }
  if (settings.hideContactNumberOutgoing) {
    parts.add(l10n.callDisplaySubtitleNameOnlyOutgoing);
  }
  if (settings.hideContactNumberIncall) {
    parts.add(l10n.callDisplaySubtitleNameOnlyInCall);
  }
  if (settings.hideCallingSimIncoming) {
    parts.add(l10n.callDisplaySubtitleSimHiddenIncoming);
  }
  if (settings.hideCallingSimOutgoing) {
    parts.add(l10n.callDisplaySubtitleSimHiddenOutgoing);
  }
  if (settings.hideCallingSimIncall) {
    parts.add(l10n.callDisplaySubtitleSimHiddenInCall);
  }

  return parts.join(' · ');
}

class _CallDisplaySettingsSheet extends StatefulWidget {
  const _CallDisplaySettingsSheet({
    required this.initial,
    required this.onSave,
  });

  final CallDisplaySettings initial;
  final Future<void> Function(CallDisplaySettings settings) onSave;

  @override
  State<_CallDisplaySettingsSheet> createState() =>
      _CallDisplaySettingsSheetState();
}

class _CallDisplaySettingsSheetState extends State<_CallDisplaySettingsSheet> {
  late CallDisplaySettings _draft;

  @override
  void initState() {
    super.initState();
    _draft = widget.initial;
  }

  Future<void> _update(CallDisplaySettings next) async {
    setState(() => _draft = next);
    await widget.onSave(next);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return wrapSettingsPickerSheet(
      context,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SettingsPickerHandle(),
          SettingsPickerTitle(title: l10n.callDisplaySheetTitle),
          SettingsPickerSectionLabel(label: l10n.callDisplayHideNumberSection),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 4),
            child: Text(
              l10n.callDisplayHideNumberSectionSubtitle,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
          ),
          SettingsPickerSwitchRow(
            icon: Icons.call_received_rounded,
            label: l10n.callDisplayHideNumberIncoming,
            value: _draft.hideContactNumberIncoming,
            onChanged: (value) => _update(
              _draft.copyWith(hideContactNumberIncoming: value),
            ),
          ),
          SettingsPickerSwitchRow(
            icon: Icons.call_made_rounded,
            label: l10n.callDisplayHideNumberOutgoing,
            value: _draft.hideContactNumberOutgoing,
            onChanged: (value) => _update(
              _draft.copyWith(hideContactNumberOutgoing: value),
            ),
          ),
          SettingsPickerSwitchRow(
            icon: Icons.phone_in_talk_rounded,
            label: l10n.callDisplayHideNumberInCall,
            value: _draft.hideContactNumberIncall,
            onChanged: (value) => _update(
              _draft.copyWith(hideContactNumberIncall: value),
            ),
          ),
          const SizedBox(height: 8),
          SettingsPickerSectionLabel(label: l10n.callDisplayHideSimSection),
          SettingsPickerSwitchRow(
            icon: Icons.call_received_rounded,
            label: l10n.callDisplayHideSimIncoming,
            value: _draft.hideCallingSimIncoming,
            onChanged: (value) => _update(
              _draft.copyWith(hideCallingSimIncoming: value),
            ),
          ),
          SettingsPickerSwitchRow(
            icon: Icons.call_made_rounded,
            label: l10n.callDisplayHideSimOutgoing,
            value: _draft.hideCallingSimOutgoing,
            onChanged: (value) => _update(
              _draft.copyWith(hideCallingSimOutgoing: value),
            ),
          ),
          SettingsPickerSwitchRow(
            icon: Icons.phone_in_talk_rounded,
            label: l10n.callDisplayHideSimInCall,
            value: _draft.hideCallingSimIncall,
            onChanged: (value) => _update(
              _draft.copyWith(hideCallingSimIncall: value),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}