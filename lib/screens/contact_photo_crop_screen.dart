import 'dart:typed_data';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/material.dart';
import 'package:nothing_dialer/l10n/app_localizations.dart';

import '../extensions/dialer_text_style.dart';
import '../services/app_font_config.dart';
import '../services/contact_photo_processor.dart';

Future<Uint8List?> showContactPhotoCropScreen(
  BuildContext context, {
  required Uint8List imageBytes,
}) {
  return Navigator.of(context).push<Uint8List>(
    MaterialPageRoute(
      fullscreenDialog: true,
      builder: (_) => ContactPhotoCropScreen(imageBytes: imageBytes),
    ),
  );
}

class ContactPhotoCropScreen extends StatefulWidget {
  const ContactPhotoCropScreen({super.key, required this.imageBytes});

  final Uint8List imageBytes;

  @override
  State<ContactPhotoCropScreen> createState() => _ContactPhotoCropScreenState();
}

class _ContactPhotoCropScreenState extends State<ContactPhotoCropScreen> {
  final _cropController = CropController();
  late final Future<Uint8List> _preparedImage;
  var _isCropping = false;
  var _isReady = false;

  @override
  void initState() {
    super.initState();
    _preparedImage = prepareContactPhotoForCropAsync(widget.imageBytes);
  }

  void _onDone() {
    if (_isCropping || !_isReady) return;
    setState(() => _isCropping = true);
    _cropController.crop();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
        leading: TextButton(
          onPressed: _isCropping ? null : () => Navigator.of(context).pop(),
          child: Text(
            l10n.contactPhotoCropCancel,
            style: context.dialerTextStyle(
              DialerFontRole.primary,
              const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        leadingWidth: 88,
        title: Text(
          l10n.contactPhotoCropTitle,
          style: context.dialerTextStyle(
            DialerFontRole.pageTitle,
            const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: _isCropping || !_isReady ? null : _onDone,
            child: _isCropping
                ? SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: scheme.primary,
                    ),
                  )
                : Text(
                    l10n.contactPhotoCropDone,
                    style: context.dialerTextStyle(
                      DialerFontRole.primary,
                      TextStyle(
                        color: scheme.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
          ),
        ],
      ),
      body: SafeArea(
        child: FutureBuilder<Uint8List>(
          future: _preparedImage,
          builder: (context, snapshot) {
            final image = snapshot.data;
            if (image == null) {
              return Center(
                child: CircularProgressIndicator(color: scheme.primary),
              );
            }

            return Crop(
              image: image,
              controller: _cropController,
              aspectRatio: 1,
              interactive: true,
              fixCropRect: true,
              baseColor: Colors.black,
              maskColor: Colors.black.withValues(alpha: 0.62),
              radius: 0,
              initialRectBuilder: InitialRectBuilder.withSizeAndRatio(
                size: 0.8,
                aspectRatio: 1,
              ),
              cornerDotBuilder: (size, edgeAlignment) =>
                  const SizedBox.shrink(),
              onStatusChanged: (status) {
                final ready = status == CropStatus.ready;
                if (mounted && ready != _isReady) {
                  setState(() => _isReady = ready);
                }
              },
              onCropped: (result) {
                if (!mounted) return;
                switch (result) {
                  case CropSuccess(:final croppedImage):
                    Navigator.of(context).pop(croppedImage);
                  case CropFailure():
                    setState(() => _isCropping = false);
                }
              },
            );
          },
        ),
      ),
    );
  }
}
