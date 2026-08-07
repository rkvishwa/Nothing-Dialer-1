import 'package:flutter/material.dart';
import 'package:nothing_dialer/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart' as main_app;
import '../services/app_locale.dart';
import '../widgets/settings_picker_sheet.dart';

Future<void> showLanguagePickerSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    enableDrag: true,
    backgroundColor: Colors.transparent,
    builder: (sheetContext) => _LanguagePickerSheet(parentContext: context),
  );
}

class _LanguagePickerSheet extends StatefulWidget {
  const _LanguagePickerSheet({required this.parentContext});

  final BuildContext parentContext;

  @override
  State<_LanguagePickerSheet> createState() => _LanguagePickerSheetState();
}

class _LanguagePickerSheetState extends State<_LanguagePickerSheet> {
  final _searchController = TextEditingController();
  String _query = '';
  late String _selectedPref;

  @override
  void initState() {
    super.initState();
    _selectedPref = main_app.localeNotifier.value;
    _searchController.addListener(() {
      setState(() => _query = _searchController.text.trim().toLowerCase());
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _select(String prefValue) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(kAppLocalePrefKey, prefValue);
    main_app.localeNotifier.value = prefValue;
    if (!mounted) return;
    setState(() => _selectedPref = prefValue);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(widget.parentContext);
    final scheme = Theme.of(context).colorScheme;
    final locales = kAppLanguagePickerLocales.where((locale) {
      if (_query.isEmpty) return true;
      final tag = prefTagFromLocale(locale);
      final name = nativeLanguageName(tag).toLowerCase();
      return name.contains(_query) || tag.toLowerCase().contains(_query);
    }).toList();

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.85,
      minChildSize: 0.45,
      maxChildSize: 0.95,
      builder: (_, scrollController) {
        return SettingsPickerFontScope(
          child: Container(
            decoration: settingsPickerSheetDecoration(context),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SettingsPickerHandle(),
                  SettingsPickerTitle(title: l10n.languagePickerTitle),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: l10n.languageSearchHint,
                        prefixIcon: const Icon(Icons.search_rounded),
                        filled: true,
                        fillColor: scheme.surfaceContainerHighest.withValues(
                          alpha: 0.45,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      controller: scrollController,
                      padding: const EdgeInsets.only(bottom: 16),
                      children: [
                        SettingsPickerOption(
                          icon: Icons.smartphone_rounded,
                          label: l10n.languageDeviceDefault,
                          subtitle: '',
                          selected: _selectedPref == kAppLocaleSystem,
                          onTap: () => _select(kAppLocaleSystem),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(24, 12, 24, 4),
                          child: Divider(height: 1),
                        ),
                        ...locales.map((locale) {
                          final tag = prefTagFromLocale(locale);
                          final name = nativeLanguageName(tag);
                          return SettingsPickerOption(
                            icon: Icons.translate_rounded,
                            label: name,
                            subtitle: tag,
                            selected: _selectedPref == tag,
                            onTap: () => _select(tag),
                          );
                        }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
