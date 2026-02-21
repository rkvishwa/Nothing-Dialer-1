import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomeScreen extends StatefulWidget {
  final ValueNotifier<bool> glyphConnectedNotifier;
  final ValueNotifier<bool> isPhone1Notifier;
  final ValueNotifier<bool> glyphEnabledNotifier;

  const HomeScreen({
    super.key,
    required this.glyphConnectedNotifier,
    required this.isPhone1Notifier,
    required this.glyphEnabledNotifier,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  bool _isDefault = false;
  bool _loading = true;
  String _answerMethod = 'slide';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    // React to glyph connection changes via ValueNotifier (no stream needed).
    widget.glyphConnectedNotifier.addListener(_onGlyphChanged);
    widget.isPhone1Notifier.addListener(_onGlyphChanged);
    widget.glyphEnabledNotifier.addListener(_onGlyphChanged);

    // Listen for "onResume" pushes from native MainActivity.
    _controlChannel.setMethodCallHandler((call) async {
      if (call.method == 'onDefaultDialerStatus') {
        final isDefault = call.arguments as bool;
        if (mounted) setState(() => _isDefault = isDefault);
      }
    });

    _init();
  }

  static const _controlChannel = MethodChannel('nothing_dialer/control');

  void _onGlyphChanged() {
    if (mounted) setState(() {});
  }

  Future<void> _init() async {
    final bool isDefault =
        await _controlChannel.invokeMethod<bool>('isDefaultDialer') ??
            false;
    final prefs = await SharedPreferences.getInstance();
    if (mounted) {
      setState(() {
        _isDefault = isDefault;
        _answerMethod = prefs.getString('answer_method') ?? 'slide';
        _loading = false;
      });
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) _init();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    widget.glyphConnectedNotifier.removeListener(_onGlyphChanged);
    widget.isPhone1Notifier.removeListener(_onGlyphChanged);
    widget.glyphEnabledNotifier.removeListener(_onGlyphChanged);
    super.dispose();
  }

  Future<void> _requestDefaultDialer() async {
    await _controlChannel.invokeMethod('requestDefaultDialer');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loading
          ? const Center(
              child: CircularProgressIndicator(color: Color(0xFFE8E8E8)))
          : _buildBody(),
    );
  }

  Widget _buildBody() {
    final bool glyphConnected = widget.glyphConnectedNotifier.value;
    final bool isPhone1 = widget.isPhone1Notifier.value;

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 32),
            if (!_isDefault) _buildDefaultDialerBanner(),
            if (!_isDefault) const SizedBox(height: 24),
            _buildStatusCards(glyphConnected, isPhone1),
            const SizedBox(height: 24),
            _buildGlyphSettings(),
            const SizedBox(height: 24),
            _buildCallSettings(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.call, color: Colors.black, size: 22),
            ),
            const SizedBox(width: 12),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nothing Dialer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                  ),
                ),
                Text(
                  'Glyph Call Trigger',
                  style: TextStyle(
                    color: Color(0xFF888888),
                    fontSize: 12,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 24),
        Container(height: 1, color: const Color(0xFF222222)),
      ],
    );
  }

  Widget _buildDefaultDialerBanner() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFFFFFFF), width: 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.warning_amber_rounded, color: Colors.white, size: 20),
              SizedBox(width: 8),
              Text(
                'Action Required',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Set Nothing Dialer as your Default Dialer to enable Glyph call detection.\n\nThis grants access to precise call states needed to control the Glyph interface.',
            style:
                TextStyle(color: Color(0xFFAAAAAA), fontSize: 13, height: 1.5),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _requestDefaultDialer,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Set as Default Dialer',
                style:
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusCards(bool glyphConnected, bool isPhone1) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'STATUS',
          style: TextStyle(
            color: Color(0xFF555555),
            fontSize: 11,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        _StatusTile(
          label: 'Default Dialer',
          active: _isDefault,
          activeText: 'Active',
          inactiveText: 'Not Set',
        ),
        const SizedBox(height: 8),
        _StatusTile(
          label: 'Glyph Service',
          active: glyphConnected,
          activeText: 'Connected',
          inactiveText: 'Disconnected',
        ),
        const SizedBox(height: 8),
        _StatusTile(
          label: 'Device',
          active: isPhone1,
          activeText: 'Nothing Phone 1 ✓',
          inactiveText: 'Phone 1 not detected',
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF111111),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFF222222)),
          ),
          child: Row(
            children: [
              const Icon(Icons.info_outline,
                  color: Color(0xFF555555), size: 16),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  _isDefault
                      ? 'Ready. Place an outgoing call to activate Glyph lights during dialing.'
                      : 'Enable debug mode on device:\nadb shell settings put global nt_glyph_interface_debug_enable 1',
                  style: const TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 12,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildGlyphSettings() {
    final bool enabled = widget.glyphEnabledNotifier.value;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'GLYPH SETTINGS',
          style: TextStyle(
            color: Color(0xFF555555),
            fontSize: 11,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),

        // ── Glyph On/Off Toggle ──
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFF111111),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFF222222)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Glyph Lights',
                style: TextStyle(color: Color(0xFFCCCCCC), fontSize: 14),
              ),
              Switch(
                value: enabled,
                onChanged: (val) {
                  widget.glyphEnabledNotifier.value = val;
                },
                activeThumbColor: Colors.white,
                activeTrackColor: const Color(0xFF444444),
                inactiveThumbColor: const Color(0xFF666666),
                inactiveTrackColor: const Color(0xFF222222),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCallSettings() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'CALL SETTINGS',
          style: TextStyle(
            color: Color(0xFF555555),
            fontSize: 11,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFF111111),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFF222222)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Answer method',
                style: TextStyle(color: Color(0xFFCCCCCC), fontSize: 14),
              ),
              DropdownButton<String>(
                value: _answerMethod,
                dropdownColor: const Color(0xFF1C1B1F),
                underline: const SizedBox(),
                style: const TextStyle(color: Color(0xFFD0BCFF), fontSize: 14),
                items: const [
                  DropdownMenuItem(value: 'slide', child: Text('Slide')),
                  DropdownMenuItem(value: 'button', child: Text('Button')),
                ],
                onChanged: (val) async {
                  if (val == null) return;
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('answer_method', val);
                  setState(() => _answerMethod = val);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _StatusTile extends StatelessWidget {
  final String label;
  final bool active;
  final String activeText;
  final String inactiveText;

  const _StatusTile({
    required this.label,
    required this.active,
    required this.activeText,
    required this.inactiveText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF111111),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF222222)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style:
                const TextStyle(color: Color(0xFFCCCCCC), fontSize: 14),
          ),
          Row(
            children: [
              Container(
                width: 7,
                height: 7,
                decoration: BoxDecoration(
                  color: active ? Colors.white : const Color(0xFF444444),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                active ? activeText : inactiveText,
                style: TextStyle(
                  color: active ? Colors.white : const Color(0xFF555555),
                  fontSize: 13,
                  fontWeight:
                      active ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
