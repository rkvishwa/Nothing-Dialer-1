import 'package:in_app_review/in_app_review.dart';

/// Google Play in-app review with listing fallback when the native sheet is unavailable.
class PlayStoreReview {
  PlayStoreReview._();

  static final InAppReview _review = InAppReview.instance;

  /// Requests the Play in-app review flow when available; otherwise opens the store listing.
  static Future<bool> requestReviewWithFallback() async {
    try {
      if (await _review.isAvailable()) {
        await _review.requestReview();
        return true;
      }
      await _review.openStoreListing();
      return true;
    } catch (_) {
      return false;
    }
  }
}
