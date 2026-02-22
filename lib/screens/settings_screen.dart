import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'blocked_numbers_screen.dart';
import '../main.dart' as main_app;

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _answerMethod = 'slide'; // 'slide' or 'button'
  String _themeMode = 'system'; // 'system', 'light', 'dark'

  String _glyphAnimationStyle = 'Breath & Progress';
  int _customInterval = 1500;
  int _glyphC1C4Interval = 1000;
  List<String> _customChannels = ['A1', 'B1', 'C-All', 'D-All', 'E1'];

  String _inCallAnimationStyle = 'Breath & Progress';
  int _inCallCustomInterval = 1500;
  int _inCallC1C4Interval = 1000;
  int _glyphBreathProgressDuration = 65000;
  int _glyphBreathProgressInterval = 100;
  int _inCallBreathProgressDuration = 65000;
  int _inCallBreathProgressInterval = 100;
  List<String> _inCallCustomChannels = ['A1', 'B1', 'C-All', 'D-All', 'E1'];

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _themeMode = prefs.getString('theme_mode') ?? 'system';
      _answerMethod = prefs.getString('answer_method') ?? 'slide';

      _glyphAnimationStyle =
          prefs.getString('glyph_animation_style') ?? 'Breath & Progress';
      _customInterval = prefs.getInt('glyph_custom_interval') ?? 1500;
      _glyphC1C4Interval = prefs.getInt('glyph_c1c4_interval') ?? 1000;
      _customChannels =
          prefs.getStringList('glyph_custom_channels') ??
          ['A1', 'B1', 'C-All', 'D-All', 'E1'];

      _inCallAnimationStyle =
          prefs.getString('in_call_animation_style') ?? 'Breath & Progress';
      _inCallCustomInterval = prefs.getInt('in_call_custom_interval') ?? 1500;
      _inCallC1C4Interval = prefs.getInt('in_call_c1c4_interval') ?? 1000;
      _glyphBreathProgressDuration =
          prefs.getInt('glyph_breath_progress_duration') ?? 65000;
      _glyphBreathProgressInterval =
          prefs.getInt('glyph_breath_progress_interval') ?? 100;
      _inCallBreathProgressDuration =
          prefs.getInt('in_call_breath_progress_duration') ?? 65000;
      _inCallBreathProgressInterval =
          prefs.getInt('in_call_breath_progress_interval') ?? 100;
      _inCallCustomChannels =
          prefs.getStringList('in_call_custom_channels') ??
          ['A1', 'B1', 'C-All', 'D-All', 'E1'];
    });
  }

  Future<void> _saveAnswerMethod(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('answer_method', value);
    setState(() => _answerMethod = value);
  }

  Future<void> _saveThemeMode(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme_mode', value);
    setState(() => _themeMode = value);
    main_app.themeModeNotifier.value = value;
  }

  Future<void> _saveGlyphAnimationStyle(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('glyph_animation_style', value);
    setState(() => _glyphAnimationStyle = value);
    main_app.glyphAnimationStyleNotifier.value = value;
  }

  Future<void> _saveInCallAnimationStyle(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('in_call_animation_style', value);
    setState(() => _inCallAnimationStyle = value);
    main_app.inCallAnimationStyleNotifier.value = value;
  }

  Future<void> _saveGlyphC1C4Interval(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('glyph_c1c4_interval', value);
    setState(() => _glyphC1C4Interval = value);
    main_app.glyphC1C4IntervalNotifier.value = value;
  }

  Future<void> _saveInCallC1C4Interval(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('in_call_c1c4_interval', value);
    setState(() => _inCallC1C4Interval = value);
    main_app.inCallC1C4IntervalNotifier.value = value;
  }

  Future<void> _saveGlyphBreathProgressDuration(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('glyph_breath_progress_duration', value);
    setState(() => _glyphBreathProgressDuration = value);
    main_app.glyphBreathProgressDurationNotifier.value = value;
  }

  Future<void> _saveGlyphBreathProgressInterval(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('glyph_breath_progress_interval', value);
    setState(() => _glyphBreathProgressInterval = value);
    main_app.glyphBreathProgressIntervalNotifier.value = value;
  }

  Future<void> _saveInCallBreathProgressDuration(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('in_call_breath_progress_duration', value);
    setState(() => _inCallBreathProgressDuration = value);
    main_app.inCallBreathProgressDurationNotifier.value = value;
  }

  Future<void> _saveInCallBreathProgressInterval(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('in_call_breath_progress_interval', value);
    setState(() => _inCallBreathProgressInterval = value);
    main_app.inCallBreathProgressIntervalNotifier.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        title: Text('Settings'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          _SectionHeader(title: 'General'),
          _SettingsTile(
            icon: Icons.palette_rounded,
            title: 'Theme',
            subtitle: _themeMode == 'system'
                ? 'System Default'
                : _themeMode == 'light'
                ? 'Light'
                : 'Dark',
            onTap: () => _showThemeModePicker(),
          ),
          _SettingsTile(
            icon: Icons.phone_callback_rounded,
            title: 'Answer method',
            subtitle: _answerMethod == 'slide'
                ? 'Slide to answer'
                : 'Button tap to answer',
            onTap: () => _showAnswerMethodPicker(),
          ),
          _SettingsTile(
            icon: Icons.block_rounded,
            title: 'Blocked numbers',
            subtitle: 'View and unblock numbers',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const BlockedNumbersScreen()),
              );
            },
          ),
          SizedBox(height: 16),
          _SectionHeader(
            title: 'Glyph Lights',
            trailing: GestureDetector(
              onTap: () => _showGlyphMapDialog(),
              child: Icon(
                Icons.info_outline_rounded,
                color: Theme.of(context).colorScheme.outline,
                size: 20,
              ),
            ),
          ),
          _SettingsTile(
            icon: Icons.flare_rounded,
            title: 'Glyph calling animation',
            subtitle: _glyphAnimationStyle,
            onTap: () => _showGlyphAnimationStylePicker(),
          ),
          if (_glyphAnimationStyle != 'None') ...[
            if (_glyphAnimationStyle == 'Breath')
              _SettingsTile(
                icon: Icons.tune_rounded,
                title: 'Breath Settings',
                subtitle:
                    '${_customChannels.length} lights, ${_customInterval}ms speed',
                onTap: () => _showBreathSettingsPicker(),
              ),
            if (_glyphAnimationStyle == 'Accumulate' ||
                _glyphAnimationStyle == 'Single')
              _SettingsTile(
                icon: Icons.timer_rounded,
                title: 'Speed Settings',
                subtitle: '${_glyphC1C4Interval}ms delay',
                onTap: () => _showC1C4SpeedPicker(isInCall: false),
              ),
            if (_glyphAnimationStyle == 'Breath & Progress')
              _SettingsTile(
                icon: Icons.speed_rounded,
                title: 'Duration & Speed',
                subtitle:
                    '${_glyphBreathProgressDuration ~/ 1000}s duration, ${_glyphBreathProgressInterval}ms speed',
                onTap: () => _showBreathProgressSpeedPicker(isInCall: false),
              ),
          ],
          const SizedBox(height: 24),
          _SettingsTile(
            icon: Icons.flare_rounded,
            title: 'Glyph ongoing call animation',
            subtitle: _inCallAnimationStyle,
            onTap: () => _showInCallAnimationStylePicker(),
          ),
          if (_inCallAnimationStyle != 'None') ...[
            if (_inCallAnimationStyle == 'Breath')
              _SettingsTile(
                icon: Icons.tune_rounded,
                title: 'Breath Settings',
                subtitle:
                    '${_inCallCustomChannels.length} lights, ${_inCallCustomInterval}ms speed',
                onTap: () => _showInCallBreathSettingsPicker(),
              ),
            if (_inCallAnimationStyle == 'Accumulate' ||
                _inCallAnimationStyle == 'Single')
              _SettingsTile(
                icon: Icons.timer_rounded,
                title: 'Speed Settings',
                subtitle: '${_inCallC1C4Interval}ms delay',
                onTap: () => _showC1C4SpeedPicker(isInCall: true),
              ),
            if (_inCallAnimationStyle == 'Breath & Progress')
              _SettingsTile(
                icon: Icons.speed_rounded,
                title: 'Duration & Speed',
                subtitle:
                    '${_inCallBreathProgressDuration ~/ 1000}s duration, ${_inCallBreathProgressInterval}ms speed',
                onTap: () => _showBreathProgressSpeedPicker(isInCall: true),
              ),
          ],
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  void _showBreathSettingsPicker() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) {
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 32,
                        height: 4,
                        margin: EdgeInsets.only(bottom: 24),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.outlineVariant,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    Text(
                      'Breath Settings',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Breath Speed',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: Slider(
                            value: _customInterval.toDouble(),
                            min: 100,
                            max: 3000,
                            divisions: 29,
                            activeColor: Theme.of(context).colorScheme.primary,
                            onChanged: (val) {
                              setModalState(
                                () => _customInterval = val.toInt(),
                              );
                              setState(() => _customInterval = val.toInt());
                            },
                            onChangeEnd: (val) async {
                              final prefs =
                                  await SharedPreferences.getInstance();
                              await prefs.setInt(
                                'glyph_custom_interval',
                                val.toInt(),
                              );
                              main_app.glyphCustomIntervalNotifier.value = val
                                  .toInt();
                            },
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          child: Text(
                            '${_customInterval}ms',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, bottom: 24),
                      child: Text(
                        'Lower = Blink, Higher = Slow Breath',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    Text(
                      'Active Lights',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: ['A1', 'B1', 'C-All', 'D-All', 'E1'].map((
                        channel,
                      ) {
                        final isSelected = _customChannels.contains(channel);
                        return FilterChip(
                          label: Text(
                            channel,
                            style: TextStyle(
                              color: isSelected
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(
                                      context,
                                    ).colorScheme.onSurfaceVariant,
                              fontSize: 12,
                            ),
                          ),
                          selected: isSelected,
                          checkmarkColor: Colors.white,
                          selectedColor: Theme.of(context).colorScheme.primary,
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.surfaceContainer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onSelected: (selected) async {
                            setModalState(() {
                              if (selected) {
                                _customChannels.add(channel);
                              } else {
                                if (_customChannels.length > 1) {
                                  _customChannels.remove(channel);
                                }
                              }
                            });
                            setState(() {}); // Update main screen subtitle
                            final prefs = await SharedPreferences.getInstance();
                            await prefs.setStringList(
                              'glyph_custom_channels',
                              _customChannels,
                            );
                            main_app.glyphCustomChannelsNotifier.value =
                                List.from(_customChannels);
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showInCallBreathSettingsPicker() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) {
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 32,
                        height: 4,
                        margin: EdgeInsets.only(bottom: 24),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.outlineVariant,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    Text(
                      'Breath Settings',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Breath Speed',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: Slider(
                            value: _inCallCustomInterval.toDouble(),
                            min: 100,
                            max: 3000,
                            divisions: 29,
                            activeColor: Theme.of(context).colorScheme.primary,
                            onChanged: (val) {
                              setModalState(
                                () => _inCallCustomInterval = val.toInt(),
                              );
                              setState(
                                () => _inCallCustomInterval = val.toInt(),
                              );
                            },
                            onChangeEnd: (val) async {
                              final prefs =
                                  await SharedPreferences.getInstance();
                              await prefs.setInt(
                                'in_call_custom_interval',
                                val.toInt(),
                              );
                              main_app.inCallCustomIntervalNotifier.value = val
                                  .toInt();
                            },
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          child: Text(
                            '${_inCallCustomInterval}ms',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, bottom: 24),
                      child: Text(
                        'Lower = Blink, Higher = Slow Breath',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    Text(
                      'Active Lights',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: ['A1', 'B1', 'C-All', 'D-All', 'E1'].map((
                        channel,
                      ) {
                        final isSelected = _inCallCustomChannels.contains(
                          channel,
                        );
                        return FilterChip(
                          label: Text(
                            channel,
                            style: TextStyle(
                              color: isSelected
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(
                                      context,
                                    ).colorScheme.onSurfaceVariant,
                              fontSize: 12,
                            ),
                          ),
                          selected: isSelected,
                          checkmarkColor: Colors.white,
                          selectedColor: Theme.of(context).colorScheme.primary,
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.surfaceContainer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onSelected: (selected) async {
                            setModalState(() {
                              if (selected) {
                                _inCallCustomChannels.add(channel);
                              } else {
                                if (_inCallCustomChannels.length > 1) {
                                  _inCallCustomChannels.remove(channel);
                                }
                              }
                            });
                            setState(() {}); // Update main screen subtitle
                            final prefs = await SharedPreferences.getInstance();
                            await prefs.setStringList(
                              'in_call_custom_channels',
                              _inCallCustomChannels,
                            );
                            main_app.inCallCustomChannelsNotifier.value =
                                List.from(_inCallCustomChannels);
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showAnswerMethodPicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Handle
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 8),
                  child: Container(
                    width: 32,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Text(
                  'Answer method',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _MethodOption(
                icon: Icons.swipe_right_rounded,
                label: 'Slide to answer',
                subtitle: 'Swipe up to answer, like Google Phone',
                selected: _answerMethod == 'slide',
                onTap: () {
                  _saveAnswerMethod('slide');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.touch_app_rounded,
                label: 'Button tap',
                subtitle: 'Tap answer or decline buttons',
                selected: _answerMethod == 'button',
                onTap: () {
                  _saveAnswerMethod('button');
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _showGlyphAnimationStylePicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 8),
                  child: Container(
                    width: 32,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Text(
                  'Outgoing Call Style',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _MethodOption(
                icon: Icons.block_rounded,
                label: 'None',
                subtitle: 'Disable Glyph lights for outgoing calls',
                selected: _glyphAnimationStyle == 'None',
                onTap: () {
                  _saveGlyphAnimationStyle('None');
                  importMainAndUpdate('None');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.flare_rounded,
                label: 'Breath & Progress',
                subtitle: 'Lights breathe while line fills up over 65s',
                selected: _glyphAnimationStyle == 'Breath & Progress',
                onTap: () {
                  _saveGlyphAnimationStyle('Breath & Progress');

                  // Also update notifier in main.dart so next call uses it
                  importMainAndUpdate('Breath & Progress');

                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.animation_rounded,
                label: 'Accumulate',
                subtitle: 'Accumulating animation on lights C1-C4',
                selected: _glyphAnimationStyle == 'Accumulate',
                onTap: () {
                  _saveGlyphAnimationStyle('Accumulate');
                  importMainAndUpdate('Accumulate');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.animation_rounded,
                label: 'Single',
                subtitle: 'Single light moving across C1-C4',
                selected: _glyphAnimationStyle == 'Single',
                onTap: () {
                  _saveGlyphAnimationStyle('Single');
                  importMainAndUpdate('Single');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.tune_rounded,
                label: 'Breath',
                subtitle: 'Pick lights and speed',
                selected: _glyphAnimationStyle == 'Breath',
                onTap: () {
                  _saveGlyphAnimationStyle('Breath');
                  importMainAndUpdate('Breath');
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _showInCallAnimationStylePicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 8),
                  child: Container(
                    width: 32,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Text(
                  'Ongoing Call Style',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _MethodOption(
                icon: Icons.block_rounded,
                label: 'None',
                subtitle: 'Disable Glyph lights while actively on call',
                selected: _inCallAnimationStyle == 'None',
                onTap: () {
                  _saveInCallAnimationStyle('None');
                  importMainAndInCallUpdate('None');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.flare_rounded,
                label: 'Breath & Progress',
                subtitle: 'Lights breathe while line fills up over 65s',
                selected: _inCallAnimationStyle == 'Breath & Progress',
                onTap: () {
                  _saveInCallAnimationStyle('Breath & Progress');
                  importMainAndInCallUpdate('Breath & Progress');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.flare_rounded,
                label: 'Accumulate',
                subtitle: 'Accumulating animation on lights C1-C4',
                selected: _inCallAnimationStyle == 'Accumulate',
                onTap: () {
                  _saveInCallAnimationStyle('Accumulate');
                  importMainAndInCallUpdate('Accumulate');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.animation_rounded,
                label: 'Single',
                subtitle: 'Single light moving across C1-C4',
                selected: _inCallAnimationStyle == 'Single',
                onTap: () {
                  _saveInCallAnimationStyle('Single');
                  importMainAndInCallUpdate('Single');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.tune_rounded,
                label: 'Breath',
                subtitle: 'Pick lights and speed',
                selected: _inCallAnimationStyle == 'Breath',
                onTap: () {
                  _saveInCallAnimationStyle('Breath');
                  importMainAndInCallUpdate('Breath');
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _showBreathProgressSpeedPicker({required bool isInCall}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) {
          final currentInterval = isInCall
              ? _inCallC1C4Interval
              : _glyphC1C4Interval;
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 32,
                        height: 4,
                        margin: const EdgeInsets.only(bottom: 24),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.outlineVariant,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    Text(
                      'Speed Settings',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Animation Delay (1s - 10s)',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: Slider(
                            value: currentInterval.toDouble().clamp(
                              1000,
                              10000,
                            ),
                            min: 1000,
                            max: 10000,
                            divisions: 90,
                            activeColor: Theme.of(context).colorScheme.primary,
                            onChanged: (val) {
                              setModalState(() {
                                if (isInCall) {
                                  _inCallC1C4Interval = val.toInt();
                                } else {
                                  _glyphC1C4Interval = val.toInt();
                                }
                              });
                              setState(() {});
                            },
                            onChangeEnd: (val) {
                              if (isInCall) {
                                _saveInCallC1C4Interval(val.toInt());
                              } else {
                                _saveGlyphC1C4Interval(val.toInt());
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          child: Text(
                            '${(currentInterval / 1000).toStringAsFixed(1)}s',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 24),
                      child: Text(
                        'Lower = Faster, Higher = Slower',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'Done',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showC1C4SpeedPicker({required bool isInCall}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) {
          final currentInterval = isInCall
              ? _inCallC1C4Interval
              : _glyphC1C4Interval;
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 32,
                        height: 4,
                        margin: EdgeInsets.only(bottom: 24),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.outlineVariant,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    Text(
                      'Speed Settings',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Animation Delay (1s - 10s)',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: Slider(
                            value: currentInterval.toDouble().clamp(
                              1000,
                              10000,
                            ),
                            min: 1000,
                            max: 10000,
                            divisions: 90,
                            activeColor: Theme.of(context).colorScheme.primary,
                            onChanged: (val) {
                              setModalState(() {
                                if (isInCall) {
                                  _inCallC1C4Interval = val.toInt();
                                } else {
                                  _glyphC1C4Interval = val.toInt();
                                }
                              });
                              setState(() {});
                            },
                            onChangeEnd: (val) {
                              if (isInCall) {
                                _saveInCallC1C4Interval(val.toInt());
                              } else {
                                _saveGlyphC1C4Interval(val.toInt());
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          child: Text(
                            '${(currentInterval / 1000).toStringAsFixed(1)}s',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, bottom: 24),
                      child: Text(
                        'Lower = Faster, Higher = Slower',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'Done',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showThemeModePicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Handle
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 8),
                  child: Container(
                    width: 32,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Text(
                  'Theme',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _MethodOption(
                icon: Icons.brightness_auto_rounded,
                label: 'System Default',
                subtitle: 'Follow system settings',
                selected: _themeMode == 'system',
                onTap: () {
                  _saveThemeMode('system');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.light_mode_rounded,
                label: 'Light',
                subtitle: 'Always use light theme',
                selected: _themeMode == 'light',
                onTap: () {
                  _saveThemeMode('light');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.dark_mode_rounded,
                label: 'Dark',
                subtitle: 'Always use dark theme',
                selected: _themeMode == 'dark',
                onTap: () {
                  _saveThemeMode('dark');
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _showGlyphMapDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Glyph Map Reference',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Image.asset(
                'assets/images/np1-layout.png',
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return SizedBox(
                    height: 300,
                    child: Center(
                      child: Text(
                        'Glyph Map Unavailable',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Close',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Ensure the main.dart notifier gets updated live if settings is open while a call comes in
void importMainAndUpdate(String style) {
  try {
    main_app.glyphAnimationStyleNotifier.value = style;
  } catch (e) {
    print('Dialer: Error updating main notifier - $e');
  }
}

void importMainAndInCallUpdate(String style) {
  try {
    main_app.inCallAnimationStyleNotifier.value = style;
  } catch (e) {
    print('Dialer: Error updating in-call notifier - $e');
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  final Widget? trailing;

  const _SectionHeader({required this.title, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24, 24, 24, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  _SettingsTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(
                  icon,
                  color: Theme.of(context).colorScheme.onSurface,
                  size: 20,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MethodOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  _MethodOption({
    required this.icon,
    required this.label,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Container(
            decoration: BoxDecoration(
              color: selected
                  ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.1)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: selected
                        ? Theme.of(
                            context,
                          ).colorScheme.primary.withValues(alpha: 0.15)
                        : Theme.of(context).colorScheme.surfaceContainerHighest,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    icon,
                    color: selected
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
                    size: 20,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 16,
                          fontWeight: selected
                              ? FontWeight.w600
                              : FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                if (selected)
                  Icon(
                    Icons.check_circle,
                    color: Theme.of(context).colorScheme.primary,
                    size: 22,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
