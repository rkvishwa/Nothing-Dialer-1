import 'dart:typed_data';

import 'package:flutter/foundation.dart' show compute;
import 'package:image/image.dart' as img;

const _maxPhotoDimension = 1024;
const _maxCropDimension = 1600;
const _jpegQuality = 85;
const _cropPrepQuality = 90;

Future<Uint8List> prepareContactPhotoForCropAsync(Uint8List raw) =>
    compute(prepareContactPhotoForCrop, raw);

Future<Uint8List> normalizeContactPhotoBytesAsync(Uint8List raw) =>
    compute(normalizeContactPhotoBytes, raw);

Future<Uint8List> centerSquareCropBytesAsync(Uint8List raw) =>
    compute(centerSquareCropBytes, raw);

/// Bakes EXIF orientation so the crop UI shows the image upright.
Uint8List prepareContactPhotoForCrop(Uint8List raw) {
  try {
    final decoded = img.decodeImage(raw);
    if (decoded == null) return raw;

    final oriented = img.bakeOrientation(decoded);
    final resized = _resizeToMax(oriented, _maxCropDimension);
    return Uint8List.fromList(img.encodeJpg(resized, quality: _cropPrepQuality));
  } catch (_) {
    return raw;
  }
}

/// Normalizes gallery JPEG orientation and re-encodes for contact storage.
///
/// Flutter's [Image.memory] ignores EXIF orientation, so photos must be
/// baked to pixel data before saving or displaying.
Uint8List normalizeContactPhotoBytes(Uint8List raw) {
  try {
    final decoded = img.decodeImage(raw);
    if (decoded == null) return raw;

    final oriented = img.bakeOrientation(decoded);
    final resized = _resizeToMax(oriented, _maxPhotoDimension);
    return Uint8List.fromList(img.encodeJpg(resized, quality: _jpegQuality));
  } catch (_) {
    return raw;
  }
}

/// Center square crop for picker recovery when interactive crop is unavailable.
Uint8List centerSquareCropBytes(Uint8List raw) {
  try {
    final decoded = img.decodeImage(raw);
    if (decoded == null) return normalizeContactPhotoBytes(raw);

    final oriented = img.bakeOrientation(decoded);
    final side = oriented.width < oriented.height
        ? oriented.width
        : oriented.height;
    final x = (oriented.width - side) ~/ 2;
    final y = (oriented.height - side) ~/ 2;
    final cropped = img.copyCrop(
      oriented,
      x: x,
      y: y,
      width: side,
      height: side,
    );
    final resized = _resizeToMax(cropped, _maxPhotoDimension);
    return Uint8List.fromList(img.encodeJpg(resized, quality: _jpegQuality));
  } catch (_) {
    return normalizeContactPhotoBytes(raw);
  }
}

img.Image _resizeToMax(img.Image image, int maxDimension) {
  final longest = image.width > image.height ? image.width : image.height;
  if (longest <= maxDimension) return image;

  if (image.width >= image.height) {
    return img.copyResize(image, width: maxDimension);
  }
  return img.copyResize(image, height: maxDimension);
}
