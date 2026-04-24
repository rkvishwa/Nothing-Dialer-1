import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


/// A minimal but functional dial-pad screen.
/// Required for Default Dialer apps – otherwise the system will not grant
/// the Default Dialer role.
class DialerScreen extends StatefulWidget {
  const DialerScreen({super.key});

  @override
  State<DialerScreen> createState() => _DialerScreenState();
}

class _DialerScreenState extends State<DialerScreen> {
  String _digits = '';

  static const _dialPadKeys = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '9'],
    ['*', '0', '#'],
  ];

  void _onKey(String key) {
    HapticFeedback.lightImpact();
    setState(() => _digits += key);
  }

  void _onDelete() {
    if (_digits.isEmpty) return;
    HapticFeedback.lightImpact();
    setState(() => _digits = _digits.substring(0, _digits.length - 1));
  }

  Future<void> _placeCall() async {
    if (_digits.isEmpty) return;
    HapticFeedback.mediumImpact();

    // Permission is handled natively in MainActivity.kt.
    // This just fires the MethodChannel call — Kotlin takes care of
    // CALL_PHONE permission, TelecomManager, and fallback.
    try {
      await const MethodChannel('nothing_dialer/control')
          .invokeMethod('placeCall', _digits);
    } on PlatformException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Call error: ${e.message}'),
            backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),
            _buildDisplay(),
            const SizedBox(height: 32),
            _buildDialPad(),
            const SizedBox(height: 24),
            _buildActions(),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildDisplay() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              _digits.isEmpty ? 'Enter number' : _digits,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: _digits.isEmpty
                    ? Theme.of(context).colorScheme.onSurfaceVariant
                    : Theme.of(context).colorScheme.onSurface,
                fontSize: _digits.length > 12 ? 24 : 36,
                fontWeight: FontWeight.w300,
                letterSpacing: 2,
              ),
            ),
          ),
          if (_digits.isNotEmpty)
            GestureDetector(
              onTap: _onDelete,
              onLongPress: () => setState(() => _digits = ''),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.backspace_outlined,
                  color: Theme.of(context).colorScheme.outline,
                  size: 22,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildDialPad() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: _dialPadKeys.map((row) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(
              children: row.map((key) {
                return Expanded(
                  child: _DialKey(
                    label: key,
                    onTap: () => _onKey(key),
                  ),
                );
              }).toList(),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 80),
        // Call button
        GestureDetector(
          onTap: _placeCall,
          child: Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.call, color: Theme.of(context).colorScheme.surface, size: 32),
          ),
        ),
        const SizedBox(width: 80),
      ],
    );
  }
}

class _DialKey extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _DialKey({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 72,
        margin: const EdgeInsets.all(6),
        child: Material(
          color: Theme.of(context).colorScheme.surfaceContainerLow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
            side: BorderSide(
              color: Theme.of(context).colorScheme.surfaceContainerHigh,
              width: 1.5,
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: SizedBox.expand(
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
