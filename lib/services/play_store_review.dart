import 'package:in_app_review/in_app_review.dart';

/// Opens the Google Play Store listing for rating.
class PlayStoreReview {
  PlayStoreReview._();

  static final InAppReview _review = InAppReview.instance;

  /// Opens the app's Play Store listing page.
  static Future<bool> openStoreListing() async {
    try {
      await _review.openStoreListing();
      return true;
    } catch (_) {
      return false;
    }
  }
}
