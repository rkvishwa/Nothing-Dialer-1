// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'Τίποτα Dialer';

  @override
  String get settings => 'Ρυθμίσεις';

  @override
  String get settingsSearchHint => 'Ρυθμίσεις αναζήτησης';

  @override
  String get settingsSearchNoResults => 'Δεν βρέθηκαν ρυθμίσεις';

  @override
  String get general => 'Γενικός';

  @override
  String get appearanceSection => 'Appearance';

  @override
  String get inCallScreenSection => 'In-call screen';

  @override
  String get simAndCallsSection => 'SIM & calls';

  @override
  String get callListsSection => 'Call lists';

  @override
  String get contactsAndRecentsSection => 'Contacts & recents';

  @override
  String get glyphCallingSection => 'Glyph — calling';

  @override
  String get glyphOngoingSection => 'Glyph — during call';

  @override
  String get torchIncomingGroup => 'Incoming';

  @override
  String get torchOutgoingGroup => 'Outgoing';

  @override
  String get torchDuringCallGroup => 'During call';

  @override
  String get theme => 'Θέμα';

  @override
  String get themeSystemDefault => 'Προεπιλογή συστήματος';

  @override
  String get themeLight => 'Φως';

  @override
  String get themeDark => 'Σκοτάδι';

  @override
  String get themeFollowSystem => 'Ακολουθήστε τις ρυθμίσεις συστήματος';

  @override
  String get themeAlwaysLight => 'Να χρησιμοποιείτε πάντα ανοιχτό θέμα';

  @override
  String get themeAlwaysDark => 'Να χρησιμοποιείτε πάντα σκούρο θέμα';

  @override
  String get language => 'Γλώσσα';

  @override
  String get languageDeviceDefault => 'Προεπιλογή συσκευής';

  @override
  String get languagePickerTitle => 'Γλώσσα';

  @override
  String get languageSearchHint => 'Αναζήτηση γλωσσών';

  @override
  String get font => 'Γραμματοσειρά';

  @override
  String get fontSystem => 'Προεπιλογή συστήματος';

  @override
  String get fontNdot => 'Τίποτα (ΝΔ)';

  @override
  String get fontSerif => 'Roboto Serif';

  @override
  String get fontNoto => 'Noto';

  @override
  String get fontNotoInfo =>
      'Some fonts don’t include every writing system. Download this pack so all languages display correctly.';

  @override
  String get fontNotoAlreadyDownloaded =>
      'These fonts are already downloaded on this device.';

  @override
  String get fontNotoDownload => 'Multilingual fonts';

  @override
  String get fontNotoDownloading => 'Downloading…';

  @override
  String get fontNotoReady => 'Downloaded';

  @override
  String get fontNotoDownloadFailed =>
      'Η λήψη γραμματοσειράς απέτυχε. Ελέγξτε τη σύνδεσή σας και δοκιμάστε ξανά.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Γραμματοσειρά';

  @override
  String get fontPreviewSample => 'Τίποτα Dialer';

  @override
  String get fontAppWide => 'Γραμματοσειρά εφαρμογής';

  @override
  String get fontApplyTo => 'Εφαρμογή σε';

  @override
  String get fontApplyEntireApp => 'Ολόκληρη η εφαρμογή';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Ίδια γραμματοσειρά παντού, συμπεριλαμβανομένης της κλήσης';

  @override
  String get fontApplyTitlesOnly => 'Τίτλοι & κεφαλίδες';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Μόνο μεγάλοι τίτλοι και κεφαλίδες ενοτήτων';

  @override
  String get fontApplyCustomize => 'Προσαρμογή';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Επιλέξτε γραμματοσειρά ανά οθόνη και τύπο κειμένου';

  @override
  String get fontCustomizeSection => 'Προσαρμογή κατά οθόνη';

  @override
  String get fontCustomizeScreenHint =>
      'Choose a font for each text style. Unchanged styles use the app font above.';

  @override
  String get fontResetScreen => 'Reset';

  @override
  String get fontUsesAppDefault => 'Same as app font';

  @override
  String fontCustomizeRolesCount(int count) {
    return '$count custom styles';
  }

  @override
  String get fontCustomizeGroupCalls => 'Calls & people';

  @override
  String get fontCustomizeGroupDialer => 'Dialer';

  @override
  String get fontCustomizeGroupApp => 'App & system';

  @override
  String get fontCustomizeEditScreens => 'Edit per-screen fonts';

  @override
  String get fontCustomizeEditScreensSubtitle =>
      'Tap a screen, then adjust text styles';

  @override
  String fontCustomizeScreensCount(int count) {
    return '$count screens customized';
  }

  @override
  String fontRolePickerTitle(String role) {
    return 'Font for $role';
  }

  @override
  String get fontChipSystem => 'System';

  @override
  String get fontChipNdot => 'NDot';

  @override
  String get fontChipSerif => 'Serif';

  @override
  String get fontChipNoto => 'Noto';

  @override
  String get fontRolePageTitle => 'Τίτλος σελίδας';

  @override
  String get fontRoleSectionHeader => 'Κεφαλίδα ενότητας';

  @override
  String get fontRolePrimary => 'Πρωτεύον κείμενο';

  @override
  String get fontRoleSecondary => 'Δευτερεύον κείμενο';

  @override
  String get fontRoleButton => 'Κουμπιά';

  @override
  String get fontRoleDialKey => 'Πλήκτρα πληκτρολογίου κλήσης';

  @override
  String get fontSurfaceRecents => 'Πρόσφατα';

  @override
  String get fontSurfaceContacts => 'Επαφές';

  @override
  String get fontSurfaceSettings => 'Ρυθμίσεις';

  @override
  String get fontSurfaceDialpad => 'Πληκτρολόγιο κλήσης';

  @override
  String get fontSurfaceShell => 'Πλοήγηση';

  @override
  String get fontSurfaceDefaultDialer => 'Προτροπή προεπιλεγμένης κλήσης';

  @override
  String get fontSurfaceFavourites => 'Αγαπημένα';

  @override
  String get fontSurfaceBlocked => 'Μπλοκαρισμένοι αριθμοί';

  @override
  String get fontSurfaceContactDetail => 'Στοιχεία επικοινωνίας';

  @override
  String get fontSurfaceCallHistory => 'Ιστορικό κλήσεων';

  @override
  String get fontSurfaceSheets => 'Φύλλα & επιλογείς';

  @override
  String get fontSurfaceInCall => 'Οθόνη κατά την κλήση';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — ολόκληρη η εφαρμογή';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — μόνο τίτλοι';
  }

  @override
  String get fontSubtitleCustomize => 'Προσαρμογή ανά οθόνη';

  @override
  String get background => 'Φόντο';

  @override
  String get accent => 'Προφορά';

  @override
  String get lightBackground => 'Ανοιχτό φόντο';

  @override
  String get lightAccent => 'Ελαφριά προφορά';

  @override
  String get darkBackground => 'Σκούρο φόντο';

  @override
  String get darkAccent => 'Σκοτεινή προφορά';

  @override
  String get callBackground => 'Φόντο κλήσης';

  @override
  String get contactPhotos => 'Contact photos';

  @override
  String get contactPhotoDisplayMode => 'Display mode';

  @override
  String get contactPhotoModeOff => 'Off';

  @override
  String get contactPhotoModeOffSubtitle =>
      'Show initials only, no contact photos';

  @override
  String get contactPhotoModeAvatar => 'Avatar';

  @override
  String get contactPhotoModeAvatarSubtitle =>
      'Show photos clipped to a shape in lists and calls';

  @override
  String get contactPhotoModeFullscreen => 'Full screen';

  @override
  String get contactPhotoModeFullscreenSubtitle =>
      'Use contact photo as background on detail and in-call screens';

  @override
  String get contactAvatarShape => 'Avatar shape';

  @override
  String get contactAvatarShapeSubtitle =>
      'Shape used for avatars in contacts, favourites, and on the call screen';

  @override
  String get contactAvatarShapeCircle => 'Circle';

  @override
  String get contactAvatarShapeRoundedSquare => 'Rounded square';

  @override
  String get contactAvatarShapeSquircle => 'Squircle';

  @override
  String get contactAvatarShapeDiamond => 'Diamond';

  @override
  String get contactAvatarShapeHexagon => 'Hexagon';

  @override
  String get contactAvatarShapeOctagon => 'Octagon';

  @override
  String get contactAvatarShapeStar => 'Star';

  @override
  String get contactAvatarShapeShield => 'Shield';

  @override
  String get contactAvatarShapePentagon => 'Pentagon';

  @override
  String get recentsContactPhotosSection => 'Recents';

  @override
  String get recentsShowContactPhotos => 'Show photos in Recents';

  @override
  String get recentsShowContactPhotosSubtitle =>
      'Display contact photos on the Recents screen. Off by default.';

  @override
  String get recentsAvatarShape => 'Recents avatar shape';

  @override
  String get recentsAvatarShapeSubtitle =>
      'Shape used for avatars on the Recents screen only';

  @override
  String get contactPhotoPreviewContacts => 'Contacts';

  @override
  String get contactPhotoPreviewRecents => 'Recents';

  @override
  String get contactPhotoPreviewBothOn =>
      'Photos shown in contacts and Recents';

  @override
  String get contactPhotoPreviewRecentsOff =>
      'Photos in contacts only — Recents shows initials';

  @override
  String get contactPhotoPickFromGallery => 'Choose from gallery';

  @override
  String get contactPhotoRemove => 'Remove photo';

  @override
  String get contactPhotoUpdated => 'Contact photo updated';

  @override
  String get contactPhotoRemoved => 'Contact photo removed';

  @override
  String get contactPhotoPickError => 'Could not update contact photo';

  @override
  String get contactPhotoCropTitle => 'Crop photo';

  @override
  String get contactPhotoCropDone => 'Done';

  @override
  String get contactPhotoCropCancel => 'Cancel';

  @override
  String get appIcon => 'Εικονίδιο εφαρμογής';

  @override
  String get answerMethod => 'Μέθοδος απάντησης';

  @override
  String get answerSlide => 'Σύρετε για να απαντήσετε';

  @override
  String get answerSlideSubtitle =>
      'Σύρετε αριστερά/δεξιά στη γραμμή, όπως το Google Phone';

  @override
  String get answerButton => 'Πατήστε το κουμπί';

  @override
  String get answerButtonSubtitle => 'Πατήστε τα κουμπιά απάντησης ή απόρριψης';

  @override
  String get answerHuawei => 'Στυλ Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Σύρετε τον κύκλο στο πράσινο τηλέφωνο για να απαντήσετε';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — σύρετε σε πράσινο / κόκκινο';

  @override
  String get calling => 'Κλήση';

  @override
  String get callDisplay => 'Call display';

  @override
  String get callDisplaySubtitleDefault => 'Show name and number';

  @override
  String get callDisplaySubtitleNameOnlyIncoming => 'Name only on incoming';

  @override
  String get callDisplaySubtitleNameOnlyOutgoing => 'Name only on outgoing';

  @override
  String get callDisplaySubtitleNameOnlyInCall => 'Name only during call';

  @override
  String get callDisplaySubtitleSimHiddenIncoming => 'SIM hidden on incoming';

  @override
  String get callDisplaySubtitleSimHiddenOutgoing => 'SIM hidden on outgoing';

  @override
  String get callDisplaySubtitleSimHiddenInCall => 'SIM hidden during call';

  @override
  String get callDisplaySheetTitle => 'Call display';

  @override
  String get callDisplayHideNumberSection => 'Hide number';

  @override
  String get callDisplayHideNumberSectionSubtitle =>
      'For saved contacts only. Unknown numbers still show the number.';

  @override
  String get callDisplayHideSimSection => 'Hide calling SIM';

  @override
  String get callDisplayHideNumberIncoming => 'Incoming calls';

  @override
  String get callDisplayHideNumberOutgoing => 'Outgoing calls';

  @override
  String get callDisplayHideNumberInCall => 'During call';

  @override
  String get callDisplayHideSimIncoming => 'Incoming calls';

  @override
  String get callDisplayHideSimOutgoing => 'Outgoing calls';

  @override
  String get callDisplayHideSimInCall => 'During call';

  @override
  String get defaultSim => 'Προεπιλεγμένη SIM';

  @override
  String get simIconColor => 'SIM icon colors';

  @override
  String simIconColorFor(String label) {
    return '$label icon color';
  }

  @override
  String get simIconColorSubtitle => 'Badge on call history';

  @override
  String get simIconColorDefault => 'Theme default';

  @override
  String get simIconStyleOutline => 'Outline';

  @override
  String get simIconStyleFill => 'Fill';

  @override
  String get simIconStyleSection => 'Style';

  @override
  String get simIconBadgeColor => 'Color';

  @override
  String get customSimIconColorPicker => 'Custom SIM icon color';

  @override
  String get askEveryTime => 'Ρωτήστε κάθε φορά';

  @override
  String get askEveryTimeSubtitle =>
      'Εμφάνιση του εργαλείου επιλογής SIM πριν από κάθε κλήση';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Δεν βρέθηκαν κάρτες SIM';

  @override
  String couldNotLoadSims(String error) {
    return 'Δεν ήταν δυνατή η φόρτωση των SIM: $error';
  }

  @override
  String get allFavourites => 'Όλα τα αγαπημένα';

  @override
  String get allFavouritesSubtitle =>
      'Αναδιάταξη, αφαίρεση και προσθήκη από τις επαφές';

  @override
  String get blockedNumbers => 'Μπλοκαρισμένοι αριθμοί';

  @override
  String get blockedNumbersSubtitle =>
      'Προβολή και κατάργηση αποκλεισμού αριθμών';

  @override
  String get soundsAndVibration => 'Ήχοι και δόνηση';

  @override
  String get soundsAndVibrationSubtitle =>
      'Ήχοι κλήσης, δόνηση, ήχοι πληκτρολογίου κλήσης';

  @override
  String couldNotOpenSettings(String error) {
    return 'Δεν ήταν δυνατό το άνοιγμα των ρυθμίσεων: $error';
  }

  @override
  String get frequentlyContacted => 'Συχνή επικοινωνία';

  @override
  String get numberOfRecords => 'Αριθμός εγγραφών';

  @override
  String get timePeriod => 'Χρονική περίοδος';

  @override
  String get periodLast24Hours => 'Τελευταίες 24 ώρες';

  @override
  String get periodLast24HoursSubtitle => 'Κλήσεις από την προηγούμενη μέρα';

  @override
  String get periodLast7Days => 'Τελευταίες 7 μέρες';

  @override
  String get periodLast7DaysSubtitle => 'Κλήσεις από την περασμένη εβδομάδα';

  @override
  String get periodLast30Days => 'Τελευταίες 30 ημέρες';

  @override
  String get periodLast30DaysSubtitle => 'Κλήσεις από τον προηγούμενο μήνα';

  @override
  String get periodLast12Months => 'Τελευταίοι 12 μήνες';

  @override
  String get periodLast12MonthsSubtitle => 'Κλήσεις από το προηγούμενο έτος';

  @override
  String get periodAllTime => 'Όλο το χρόνο';

  @override
  String get periodAllTimeSubtitle => 'Ολόκληρο το ιστορικό κλήσεων';

  @override
  String get frequentMaxOff => 'Μακριά από';

  @override
  String frequentMaxCount(int count) {
    return '$count επαφές';
  }

  @override
  String get torchBlink => 'Αναβοσβήνει ο φακός';

  @override
  String get torchIncomingCall => 'Φακός εισερχόμενης κλήσης';

  @override
  String get torchOutgoingCall => 'Φακός εξερχόμενης κλήσης';

  @override
  String get torchOngoingCall => 'Φακός συνεχούς κλήσης';

  @override
  String get torchIncomingInterval => 'Εισερχόμενο διάστημα αναλαμπής';

  @override
  String get torchOutgoingInterval => 'Μεσοδιάστημα εξερχόμενων αναλαμπών';

  @override
  String get torchOngoingInterval => 'Συνεχές διάστημα αναλαμπής';

  @override
  String get torchOff => 'Μακριά από';

  @override
  String get torchOffIncomingSubtitle => 'Χωρίς δάδα ενώ κουδουνίζει';

  @override
  String get torchOffOutgoingSubtitle => 'Χωρίς φακό κατά την κλήση';

  @override
  String get torchOffOngoingSubtitle => 'Χωρίς φακό κατά την ενεργή κλήση';

  @override
  String get torchFixedInterval => 'Σταθερό διάστημα';

  @override
  String get torchFixedIntervalSubtitle =>
      'Αναβοσβήνει με καθορισμένη ταχύτητα';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds αναβοσβήνει';
  }

  @override
  String get flashlightUnavailable =>
      'Ο φακός δεν είναι διαθέσιμος σε αυτήν τη συσκευή';

  @override
  String get glyphLights => 'Γλυφικά φώτα';

  @override
  String get glyphCallingAnimation => 'Κινούμενα σχέδια κλήσης γλυφών';

  @override
  String get glyphOngoingAnimation => 'Κινούμενο σχέδιο κλήσης σε εξέλιξη';

  @override
  String get glyphNone => 'Κανένας';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Απενεργοποιήστε τα φώτα Glyph για εξερχόμενες κλήσεις';

  @override
  String get glyphNoneInCallSubtitle =>
      'Απενεργοποιήστε τα φώτα Glyph ενώ είστε ενεργά σε κλήση';

  @override
  String get glyphBreathProgress => 'Ανάσα & Πρόοδος';

  @override
  String get glyphBreathProgressSubtitle =>
      'Τα φώτα αναπνέουν ενώ η γραμμή γεμίζει πάνω από 65 δευτερόλεπτα';

  @override
  String get glyphAccumulate => 'Συσσωρεύω';

  @override
  String get glyphAccumulateSubtitle =>
      'Συσσώρευση κινούμενων εικόνων στα φώτα C1-C4';

  @override
  String get glyphSingle => 'Μονόκλινο';

  @override
  String get glyphSingleSubtitle =>
      'Μονό φως που κινείται κατά μήκος του C1-C4';

  @override
  String get glyphBreath => 'Αναπνοή';

  @override
  String get glyphBreathSubtitle => 'Επιλέξτε φώτα και ταχύτητα';

  @override
  String get glyphSteady => 'Σταθερός';

  @override
  String get glyphSteadySubtitle => 'Τα επιλεγμένα φώτα παραμένουν αναμμένα';

  @override
  String get breathSettings => 'Ρυθμίσεις αναπνοής';

  @override
  String get activeLights => 'Ενεργά Φώτα';

  @override
  String lightsCount(int count) {
    return '$count φώτα';
  }

  @override
  String get speedSettings => 'Ρυθμίσεις ταχύτητας';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms καθυστέρηση';
  }

  @override
  String get durationAndSpeed => 'Διάρκεια & Ταχύτητα';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Διάρκεια ${duration}s, διάστημα ${interval}ms';
  }

  @override
  String get cancel => 'Ματαίωση';

  @override
  String get done => 'Γινώμενος';

  @override
  String get save => 'Εκτός';

  @override
  String get block => 'Φραγμός';

  @override
  String get delete => 'Διαγράφω';

  @override
  String get recents => 'Πρόσφατα';

  @override
  String get contacts => 'Επαφές';

  @override
  String get hideFavouritesOnRecents => 'Απόκρυψη αγαπημένων στα Πρόσφατα';

  @override
  String get showFavouritesOnRecents => 'Εμφάνιση αγαπημένων στα Πρόσφατα';

  @override
  String get ongoingCall => 'Συνεχής κλήση';

  @override
  String get setAsDefaultTitle => 'ΟΡΙΣΤΕ ΩΣ\nΠΡΟΕΠΙΛΟΓΗ';

  @override
  String get setAsDefaultBody =>
      'Για να χρησιμοποιήσετε το Nothing Dialer, πρέπει να οριστεί ως η προεπιλεγμένη εφαρμογή τηλεφώνου σας. Αυτό σας επιτρέπει να διαχειρίζεστε κλήσεις, να προβάλλετε το ιστορικό και να χρησιμοποιείτε κινούμενα σχέδια Glyph.';

  @override
  String get setAsDefaultButton => 'ΡΥΘΜΙΣΗ ΩΣ ΠΡΟΕΠΙΛΟΓΗ';

  @override
  String get nothingDialerBrand => 'ΤΙΠΟΤΑ DIALER 1';

  @override
  String get favourites => 'Αγαπημένα';

  @override
  String get addFavourite => 'Προσθέστε το αγαπημένο';

  @override
  String get favouritesDrawerHint =>
      'Χρησιμοποιήστε το μενού για να προσθέσετε επαφές. Πατήστε έξω από το συρτάρι ή σύρετέ το για να κλείσει. αστέρι σε μια επαφή από τα στοιχεία της ή πατήστε παρατεταμένα μια κλήση στα Πρόσφατα.';

  @override
  String get menu => 'Μενού';

  @override
  String get noFavouritesYet =>
      'Δεν υπάρχουν ακόμα αγαπημένα.\nΑνοίξτε το μενού για να προσθέσετε μία ή με αστέρι σε μια επαφή.';

  @override
  String get contactsPermissionNeeded => 'Απαιτείται άδεια επαφών';

  @override
  String get chooseContact => 'Επιλέξτε επαφή';

  @override
  String get noPhone => 'Κανένα τηλέφωνο';

  @override
  String get pickNumber => 'Διάλεξε αριθμό';

  @override
  String get contactHasNoPhone => 'Αυτή η επαφή δεν έχει αριθμό τηλεφώνου';

  @override
  String get blockNumber => 'Αριθμός μπλοκ';

  @override
  String get enterPhoneNumber => 'Εισαγάγετε τον αριθμό τηλεφώνου';

  @override
  String unblockedDisplay(String display) {
    return 'Ξεμπλοκαρίστηκε $display';
  }

  @override
  String get couldNotUnblockNumber =>
      'Δεν ήταν δυνατός ο ξεμπλοκαρισμός του αριθμού';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked αποκλεισμένο • $matched ταιριάζει';
  }

  @override
  String get contactsPermissionMissing =>
      'Λείπει η άδεια επαφών. Πατήστε για επιδιόρθωση.';

  @override
  String get noBlockedNumbers => 'Δεν υπάρχουν αποκλεισμένοι αριθμοί';

  @override
  String get unknownContact => 'Άγνωστη επαφή';

  @override
  String get unblock => 'Ξεβουλώνω';

  @override
  String get permissionNeeded => 'Απαιτείται άδεια';

  @override
  String get grantPhonePermission =>
      'Παραχωρήστε άδεια στο τηλέφωνο για να δει το ιστορικό κλήσεων.';

  @override
  String get grantContactsPermission =>
      'Παραχωρήστε στις επαφές άδεια να δουν το βιβλίο διευθύνσεών σας.';

  @override
  String get openSettings => 'Ανοίξτε τις Ρυθμίσεις';

  @override
  String get tryAgain => 'Προσπαθήστε ξανά';

  @override
  String get couldNotLoadContacts => 'Δεν ήταν δυνατή η φόρτωση των επαφών';

  @override
  String get contactsLoadError =>
      'Κάτι πήγε στραβά κατά την ανάγνωση του βιβλίου διευθύνσεών σας.';

  @override
  String get noContactsFound => 'Δεν βρέθηκαν επαφές';

  @override
  String get contactsEmptySubtitle =>
      'Οι επαφές από τη συσκευή σας θα εμφανιστούν εδώ.';

  @override
  String get searchContacts => 'Αναζήτηση επαφών…';

  @override
  String get searchRecentCalls => 'Αναζήτηση πρόσφατων κλήσεων';

  @override
  String get fromContacts => 'Από τις επαφές';

  @override
  String get recentsSearchSection => 'Πρόσφατη αναζήτηση';

  @override
  String get recentsSearchShowContacts => 'Εμφάνιση επαφών στην αναζήτηση';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Κατά την αναζήτηση στα Πρόσφατα, εμφανίστε επίσης άτομα που ταιριάζουν από το βιβλίο διευθύνσεών σας κάτω από τα αποτελέσματα του ιστορικού κλήσεων.';

  @override
  String get voiceSearch => 'Φωνητική αναζήτηση';

  @override
  String get createNewContact => 'Δημιουργία νέας επαφής';

  @override
  String callError(String error) {
    return 'Σφάλμα κλήσης: $error';
  }

  @override
  String get noRecentCalls => 'Δεν υπάρχουν πρόσφατες κλήσεις';

  @override
  String get callHistoryEmpty => 'Το ιστορικό κλήσεων θα εμφανιστεί εδώ.';

  @override
  String get loadMore => 'Φορτώστε περισσότερα';

  @override
  String get frequentlyContactedHeader => 'Συχνή επικοινωνία';

  @override
  String get recentHistory => 'Πρόσφατη ιστορία';

  @override
  String get noFavouritesRecentsHint =>
      'Δεν υπάρχουν ακόμα αγαπημένα. αστέρι σε μια επαφή, πατήστε παρατεταμένα μια κλήση ή χρησιμοποιήστε την καρτέλα Αγαπημένα.';

  @override
  String get copyNumber => 'Αριθμός αντιγραφής';

  @override
  String get editNumberBeforeCall => 'Επεξεργασία αριθμού πριν από την κλήση';

  @override
  String get removeFromFavourites => 'Αφαίρεση από τα αγαπημένα';

  @override
  String get addToFavourites => 'Προσθήκη στα αγαπημένα';

  @override
  String get blockNumberQuestion => 'Αριθμός αποκλεισμού;';

  @override
  String blockNumberConfirm(String number) {
    return 'Δεν θα λαμβάνετε πλέον κλήσεις ή μηνύματα από το $number.';
  }

  @override
  String get blocked => 'Αποκλεισμένος';

  @override
  String get couldNotBlock => 'Δεν ήταν δυνατός ο αποκλεισμός';

  @override
  String get contactNotOnDevice =>
      'Η επαφή δεν έχει αποθηκευτεί σε αυτήν τη συσκευή';

  @override
  String get unblocked => 'Ξεμπλοκαρισμένο';

  @override
  String get numberCopied => 'Ο αριθμός αντιγράφηκε';

  @override
  String get showLess => 'Δείξτε λιγότερα';

  @override
  String get showAllTimes => 'Εμφάνιση όλων των εποχών';

  @override
  String mostRecent(String time) {
    return 'Πιο πρόσφατο · $time';
  }

  @override
  String get videoCall => 'Βιντεοκλήση';

  @override
  String get couldNotPlaceVideoCall =>
      'Δεν ήταν δυνατή η πραγματοποίηση βιντεοκλήσης';

  @override
  String get message => 'Μήνυμα';

  @override
  String get couldNotOpenMessaging =>
      'Δεν ήταν δυνατό το άνοιγμα της εφαρμογής ανταλλαγής μηνυμάτων';

  @override
  String get history => 'Ιστορία';

  @override
  String get viewContact => 'Προβολή επαφής';

  @override
  String get addToContact => 'Προσθήκη στην επαφή';

  @override
  String get callTypeMissed => 'Χάθηκε';

  @override
  String get callTypeRejected => 'Απορρίφθηκε';

  @override
  String get callTypeIncoming => 'Εισερχόμενος';

  @override
  String get callTypeOutgoing => 'Εξερχόμενος';

  @override
  String get today => 'Σήμερα';

  @override
  String get yesterday => 'Εχθές';

  @override
  String get justNow => 'Μόλις τώρα';

  @override
  String minutesAgo(int count) {
    return 'Πριν από $count λεπτά';
  }

  @override
  String hoursAgo(int count) {
    return 'Πριν από $count ώρες';
  }

  @override
  String get filterAll => 'Ολοι';

  @override
  String get filterMissed => 'Χάθηκε';

  @override
  String get filterContacts => 'Επαφές';

  @override
  String get filterNonContacts => 'Μη επαφές';

  @override
  String get iconUpdated =>
      'Το εικονίδιο ενημερώθηκε. Η αρχική οθόνη σας μπορεί να χρειαστεί λίγο χρόνο για να ανανεωθεί.';

  @override
  String get iconSavedRelease =>
      'Η επιλογή αποθηκεύτηκε. Το εικονίδιο της αρχικής οθόνης ενημερώνεται στις εκδόσεις εκδόσεων.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Δεν ήταν δυνατή η αλλαγή του εικονιδίου: $error';
  }

  @override
  String get launcherClassicBlack => 'Κλασικό (μαύρο)';

  @override
  String get launcherLight => 'Φως';

  @override
  String get launcherNothingRed => 'Τίποτα κόκκινο';

  @override
  String get launcherDarkGrey => 'Σκούρο γκρι';

  @override
  String get launcherCream => 'Κρέμα';

  @override
  String get launcherRetroPhone => 'Ρετρό τηλέφωνο';

  @override
  String get launcherRetroPhoneLight => 'Ρετρό τηλέφωνο (ελαφρύ)';

  @override
  String get voiceSearchUnavailable =>
      'Η φωνητική αναζήτηση δεν είναι διαθέσιμη σε αυτήν τη συσκευή.';

  @override
  String voiceSearchFailed(String error) {
    return 'Η φωνητική αναζήτηση απέτυχε: $error';
  }

  @override
  String get customColor => 'Εθιμο';

  @override
  String get selectColor => 'Επιλέξτε χρώμα';

  @override
  String get reset => 'Επαναφορά';

  @override
  String get simPickerTitle => 'Επιλέξτε SIM';

  @override
  String get simChooseForCall => 'Επιλέξτε SIM για αυτήν την κλήση';

  @override
  String get defaultSimAsk => 'Ρωτήστε κάθε φορά';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Στοιχεία επικοινωνίας';

  @override
  String get call => 'Κλήση';

  @override
  String get share => 'Μερίδιο';

  @override
  String get favourite => 'Ευνοούμενος';

  @override
  String get unfavourite => 'Μη αγαπημένος';

  @override
  String get blockContact => 'Αποκλεισμός επαφής';

  @override
  String get unblockContact => 'Ξεμπλοκάρισμα επαφής';

  @override
  String get deleteContact => 'Διαγραφή επαφής';

  @override
  String get phone => 'Τηλέφωνο';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Ήχος κλήσης';

  @override
  String get defaultRingtone => 'Αθέτηση';

  @override
  String get simForContact => 'SIM για αυτήν την επαφή';

  @override
  String get callHistoryTitle => 'Ιστορικό κλήσεων';

  @override
  String get noCallsWithNumber => 'Δεν υπάρχουν κλήσεις με αυτόν τον αριθμό';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Γλυφικά κινούμενα σχέδια';

  @override
  String get inCallGlyphAnimationStyle => 'In-call Glyph animation';

  @override
  String get recordsOff => 'Μακριά από';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Προεπιλεγμένη SIM';

  @override
  String get nothingPhoneOnly => 'Τίποτα μόνο τηλέφωνο';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Οι λειτουργίες γλυφών απαιτούν τηλέφωνο Nothing';

  @override
  String get custom => 'Εθιμο';

  @override
  String presetColorHex(String hex) {
    return 'Προεπιλογή · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Προσαρμοσμένο · $hex';
  }

  @override
  String get oneContact => '1 επαφή';

  @override
  String upToContacts(int count) {
    return 'Έως $count επαφές';
  }

  @override
  String get answerButtonTapSubtitle => 'Πατήστε το κουμπί για απάντηση';

  @override
  String get filterCalls => 'Φιλτράρισμα κλήσεων';

  @override
  String get filterTooltip => 'Φίλτρο';

  @override
  String get settingsTooltip => 'Ρυθμίσεις';

  @override
  String get filterAllSubtitle => 'Ολόκληρο το αρχείο κλήσεων';

  @override
  String get filterMissedSubtitle => 'Χάθηκε και απορρίφθηκε';

  @override
  String get filterContactsSubtitle =>
      'Οι κλήσεις αντιστοιχίζονται σε μια αποθηκευμένη επαφή';

  @override
  String get filterNonContactsSubtitle =>
      'Αριθμοί που δεν βρίσκονται στο βιβλίο διευθύνσεών σας';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Σε εξέλιξη κλήση: $detail';
  }

  @override
  String get defaultSimForCalls => 'Προεπιλεγμένη SIM για κλήσεις';

  @override
  String get blinkInterval => 'Μεσοδιάστημα αναβοσβήνει';

  @override
  String get close => 'Κοντά';

  @override
  String get frequentlyContactedInfoBody =>
      'Εμφανίζει τους αριθμούς τηλεφώνου σας με τις περισσότερες κλήσεις στο επάνω μέρος της καρτέλας Πρόσφατα, με βάση πόσες εισερχόμενες, εξερχόμενες, αναπάντητες ή απορριφθείσες κλήσεις είχατε με κάθε αριθμό στη χρονική περίοδο που επιλέγετε.\n\nΑριθμός εγγραφών: ορίστε το 0 για να το απενεργοποιήσετε. Χρησιμοποιήστε 1–20 για να δείξετε ότι πολλές κορυφαίες επαφές.\n\nΗ χρονική περίοδος ισχύει μόνο όταν εμφανίζεται τουλάχιστον μία επαφή.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count φώτα, ${ms}ms ταχύτητα';
  }

  @override
  String get deleteContactQuestion => 'Διαγραφή επαφής;';

  @override
  String get deleteContactBody =>
      'Αυτή η επαφή θα διαγραφεί οριστικά από τη συσκευή σας.';

  @override
  String get blockContactQuestion => 'Αποκλεισμός επαφής;';

  @override
  String get unblockContactQuestion => 'Κατάργηση αποκλεισμού επαφής;';

  @override
  String get blockContactBody =>
      'Δεν θα λαμβάνετε πλέον κλήσεις ή μηνύματα από αυτήν την επαφή.';

  @override
  String get unblockContactBody =>
      'Θα αρχίσετε να λαμβάνετε κλήσεις και μηνύματα από αυτήν την επαφή.';

  @override
  String get contactBlocked => 'Η επαφή μπλοκαρίστηκε';

  @override
  String get contactUnblocked => 'Η επαφή ξεμπλοκαρίστηκε';

  @override
  String get noPhoneNumbersToBlock =>
      'Δεν υπάρχουν αριθμοί τηλεφώνου για αποκλεισμό';

  @override
  String get simSameAsSystem => 'Το ίδιο με το σύστημα';

  @override
  String get simSameAsSystemSubtitle =>
      'Ακολουθεί την Προεπιλεγμένη SIM στις Ρυθμίσεις';

  @override
  String get simAskEveryTimeForContact =>
      'Να εμφανίζεται πάντα το εργαλείο επιλογής SIM για αυτήν την επαφή';

  @override
  String get ringtoneSetForContact =>
      'Ο ήχος κλήσης ορίστηκε παγκοσμίως για αυτήν την επαφή';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Αποτυχία επιλογής ήχου κλήσης: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Σφάλμα: $error';
  }

  @override
  String get noCallHistoryFound => 'Δεν βρέθηκε ιστορικό κλήσεων';

  @override
  String get speedDialVoicemail => 'Ταχεία κλήση: Τηλεφωνητής';

  @override
  String shareContactSubject(String name) {
    return 'Επικοινωνία: $name';
  }

  @override
  String get contactInfo => 'Στοιχεία επικοινωνίας';

  @override
  String get dontAskAgainSim => 'Μην ξαναρωτήσεις';

  @override
  String get simDontAskAgainSubtitle =>
      'Χρησιμοποιήστε αυτήν την κάρτα SIM ως προεπιλογή (αλλαγή στις Ρυθμίσεις)';

  @override
  String get addContact => 'Προσθήκη επαφής';

  @override
  String get createContact => 'Δημιουργία επαφής';

  @override
  String get paste => 'Πάστα';

  @override
  String get clear => 'Σαφής';

  @override
  String get returnToCall => 'Επιστροφή στην κλήση';

  @override
  String get numberOfRecordsTitle => 'Αριθμός εγγραφών';

  @override
  String get recordsPickerSubtitle =>
      'Πόσες καταχωρήσεις με συχνές επαφές για εμφάνιση (0 = απενεργοποίηση)';

  @override
  String get torchInfoTitle => 'Ο φακός αναβοσβήνει';

  @override
  String get torchInfoBody =>
      'Αναβοσβήνει το φλας της κάμερας κατά τη διάρκεια εισερχόμενων, εξερχόμενων ή εξερχόμενων κλήσεων. Ανεξάρτητο από τα φώτα γλυφών.';

  @override
  String get glyphMapTitle => 'Διάταξη γλυφών';

  @override
  String get glyphMapBody =>
      'Τίποτα Τηλέφωνο 1 Ζώνες LED Glyph. Τα κινούμενα σχέδια εξερχόμενων και κατά την κλήση χρησιμοποιούν αυτά τα κανάλια.';

  @override
  String get answerMethodTitle => 'Μέθοδος απάντησης';

  @override
  String get glyphOutgoingCallStyleTitle => 'Στυλ εξερχόμενης κλήσης';

  @override
  String get glyphInCallAnimationTitle => 'Glyph in-call animation';

  @override
  String get themePickerTitle => 'Θέμα';

  @override
  String get torchIncomingTitle => 'Φακός εισερχόμενης κλήσης';

  @override
  String get torchOutgoingTitle => 'Φακός εξερχόμενης κλήσης';

  @override
  String get torchOngoingTitle => 'Φακός συνεχούς κλήσης';

  @override
  String get timePeriodTitle => 'Χρονική περίοδος';

  @override
  String get ok => 'εντάξει';

  @override
  String get confirmDeleteCall => 'Διαγραφή αυτής της κλήσης από το ιστορικό;';

  @override
  String get confirmDeleteAllCalls =>
      'Διαγραφή όλων των κλήσεων με αυτόν τον αριθμό;';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Στείλτε ένα μήνυμα';

  @override
  String get addToExistingContactAction => 'Προσθήκη σε επαφή';

  @override
  String get mobileLabel => 'Κινητός';

  @override
  String get callingSimForContactTitle => 'Κλήση SIM για αυτήν την επαφή';

  @override
  String get contactSettings => 'Ρυθμίσεις επαφών';

  @override
  String get setCallingSim => 'Ρύθμιση κλήσης SIM';

  @override
  String get contactRingtone => 'Ήχος κλήσης επαφής';

  @override
  String get shareContact => 'Κοινή χρήση επαφής';

  @override
  String get blockNumbers => 'Αποκλεισμός αριθμών';

  @override
  String get unblockNumbers => 'Ξεμπλοκάρισμα αριθμών';

  @override
  String get connectedApps => 'Συνδεδεμένες εφαρμογές';

  @override
  String get simNotSet => 'Δεν έχει οριστεί';

  @override
  String get ringtoneDefault => 'Αθέτηση';

  @override
  String get customRingtone => 'Εθιμο';

  @override
  String get aboutSection => 'Για';

  @override
  String get aboutFeedbackSection => 'Σχετικά και σχόλια';

  @override
  String get aboutDescription =>
      'Το Nothing Dialer είναι ανοιχτού κώδικα. Εάν είστε προγραμματιστής, μπορείτε να εξερευνήσετε τον κώδικα και να συνεισφέρετε.';

  @override
  String get aboutViewSource => 'Προβολή στο GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink =>
      'Δεν ήταν δυνατό το άνοιγμα του συνδέσμου';

  @override
  String get reviewSection => 'Κριτική';

  @override
  String get reviewDescription =>
      'Απολαμβάνετε Nothing Dialer; Η αξιολόγησή σας στο Google Play βοηθά άλλους να βρουν την εφαρμογή.';

  @override
  String get reviewRateOnPlay => 'Βαθμολογήστε στο Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Δεν ήταν δυνατό το άνοιγμα του Google Play';

  @override
  String get breathSpeed => 'Ταχύτητα αναπνοής';

  @override
  String get breathSpeedBlinkHint =>
      'Χαμηλότερο = Αναβοσβήνει, Υψηλότερο = Αργή Αναπνοή';

  @override
  String get speedSliderHint =>
      'Χαμηλότερο = Πιο γρήγορα, Υψηλότερο = Πιο αργό';

  @override
  String get swatchDefault => 'Αθέτηση';

  @override
  String get customAccentColorPicker => 'Προσαρμοσμένο χρώμα έμφασης';

  @override
  String get customLightBackgroundPicker => 'Προσαρμοσμένο ανοιχτό φόντο';

  @override
  String get customDarkBackgroundPicker => 'Προσαρμοσμένο σκούρο φόντο';

  @override
  String get customCallBackgroundPicker => 'Προσαρμοσμένο φόντο κλήσης';

  @override
  String get ongoingCallStyleTitle => 'Στυλ συνεχούς κλήσης';

  @override
  String get glyphMapUnavailable => 'Ο χάρτης γλυφών δεν είναι διαθέσιμος';

  @override
  String get animationDelayRange => 'Καθυστέρηση κινουμένων σχεδίων (1s - 10s)';

  @override
  String get animationDelayRangeSingle =>
      'Καθυστέρηση κινουμένων σχεδίων (0,1 δευτ. - 10 δευτ.)';

  @override
  String get inCallMute => 'Βουβός';

  @override
  String get inCallKeypad => 'Πληκτρολόγιο';

  @override
  String get inCallSpeaker => 'Ομιλητής';

  @override
  String get inCallMore => 'Περισσότερο';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Τηλέφωνο';

  @override
  String get inCallAddCall => 'Προσθήκη κλήσης';

  @override
  String get inCallChangeSim => 'Αλλαγή SIM';

  @override
  String get inCallDecline => 'Πτώση';

  @override
  String get inCallAnswer => 'Απάντηση';

  @override
  String get inCallMessage => 'Μήνυμα';

  @override
  String get inCallCalling => 'Κλήση…';

  @override
  String get inCallIncoming => 'Εισερχόμενη κλήση';

  @override
  String get inCallSelectSim => 'Επιλέξτε SIM…';

  @override
  String get inCallSwitchingSim => 'Εναλλαγή SIM…';

  @override
  String get inCallCallEnded => 'Η κλήση έληξε';

  @override
  String inCallCallingVia(String sim) {
    return 'Κλήση μέσω $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Κλήση μέσω <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Επιλέξτε SIM για αυτήν την κλήση';

  @override
  String get inCallDragAnswerDecline =>
      'Σύρετε δεξιά για απάντηση · Σύρετε αριστερά για απόρριψη';

  @override
  String inCallMobileNumber(String number) {
    return 'Κινητό $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Τρέχον)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Καλέστε μέσω <b>$sim</b> από';
  }

  @override
  String get inCallCallFrom => 'Καλέστε από';

  @override
  String get inCallUnknown => 'Αγνωστος';

  @override
  String get selectContactRingtone => 'Επιλέξτε ήχο κλήσης επαφής';

  @override
  String get speakToSearchPrompt => 'Μιλήστε για αναζήτηση';

  @override
  String get phonePermissionRequired => 'Απαιτείται άδεια τηλεφώνου';

  @override
  String callFailed(String error) {
    return 'Η κλήση απέτυχε: $error';
  }

  @override
  String get callPermissionDenied => 'Η άδεια κλήσης απορρίφθηκε';

  @override
  String get alreadyDefaultDialer =>
      'Έχει ήδη οριστεί ως προεπιλεγμένο πρόγραμμα κλήσης';

  @override
  String get resetCustomization => 'Reset customization';

  @override
  String get resetCustomizationSubtitle =>
      'Restore selected settings to defaults';

  @override
  String get resetCustomizationInfoTitle => 'What gets reset';

  @override
  String get resetCustomizationInfoBody =>
      'These return to their defaults:\n\n• Language (device default)\n• Theme, background, accent, and call background colors\n• Fonts and app icon\n• SIM badge colors and styles\n• Answer method\n• Torch blink during calls\n• Glyph calling and in-call animations\n• Frequently contacted (count and time period)\n\nNot changed: default SIM, blocked numbers, recents search, and favourites.';

  @override
  String get resetCustomizationConfirmTitle => 'Reset customization?';

  @override
  String get resetCustomizationConfirmBody =>
      'Selected settings will return to their defaults. Default SIM, blocked numbers, recents, and favourites stay as they are.';

  @override
  String get resetCustomizationDone => 'Settings reset to defaults';
}
