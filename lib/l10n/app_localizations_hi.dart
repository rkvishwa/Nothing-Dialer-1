// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'Nothing Dialer';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get settingsSearchHint => 'सेटिंग खोजें';

  @override
  String get settingsSearchNoResults => 'कोई सेटिंग नहीं मिली';

  @override
  String get general => 'सामान्य';

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
  String get theme => 'थीम';

  @override
  String get themeSystemDefault => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get themeLight => 'लाइट';

  @override
  String get themeDark => 'डार्क';

  @override
  String get themeFollowSystem => 'सिस्टम सेटिंग्स का पालन करें';

  @override
  String get themeAlwaysLight => 'हमेशा लाइट थीम का प्रयोग करें';

  @override
  String get themeAlwaysDark => 'हमेशा डार्क थीम का इस्तेमाल करें';

  @override
  String get language => 'भाषा';

  @override
  String get languageDeviceDefault => 'डिवाइस डिफ़ॉल्ट';

  @override
  String get languagePickerTitle => 'भाषा';

  @override
  String get languageSearchHint => 'भाषाएँ खोजें';

  @override
  String get font => 'फ़ॉन्ट';

  @override
  String get fontSystem => 'प्रणालीगत चूक';

  @override
  String get fontNdot => 'कुछ नहीं (एनडीओटी)';

  @override
  String get fontSerif => 'रोबोटो सेरिफ़';

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
      'फ़ॉन्ट डाउनलोड विफल रहा. अपना कनेक्शन जांचें और पुनः प्रयास करें।';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'फ़ॉन्ट';

  @override
  String get fontPreviewSample => 'कुछ भी नहीं डायलर';

  @override
  String get fontAppWide => 'ऐप फ़ॉन्ट';

  @override
  String get fontApplyTo => 'पर लागू';

  @override
  String get fontApplyEntireApp => 'संपूर्ण ऐप';

  @override
  String get fontApplyEntireAppSubtitle => 'इन-कॉल सहित, हर जगह एक ही फ़ॉन्ट';

  @override
  String get fontApplyTitlesOnly => 'शीर्षक और शीर्षलेख';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'केवल बड़े शीर्षक और अनुभाग शीर्षलेख';

  @override
  String get fontApplyCustomize => 'अनुकूलित करें';

  @override
  String get fontApplyCustomizeSubtitle =>
      'प्रति स्क्रीन और टेक्स्ट प्रकार के अनुसार फ़ॉन्ट चुनें';

  @override
  String get fontCustomizeSection => 'स्क्रीन द्वारा अनुकूलित करें';

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
  String get fontRolePageTitle => 'पृष्ठ शीर्षक';

  @override
  String get fontRoleSectionHeader => 'अनुभाग शीर्षलेख';

  @override
  String get fontRolePrimary => 'प्राथमिक पाठ';

  @override
  String get fontRoleSecondary => 'द्वितीयक पाठ';

  @override
  String get fontRoleButton => 'बटन';

  @override
  String get fontRoleDialKey => 'डायलपैड कुंजियाँ';

  @override
  String get fontSurfaceRecents => 'हाल ही';

  @override
  String get fontSurfaceContacts => 'संपर्क';

  @override
  String get fontSurfaceSettings => 'सेटिंग्स';

  @override
  String get fontSurfaceDialpad => 'पैड डायल';

  @override
  String get fontSurfaceShell => 'मार्गदर्शन';

  @override
  String get fontSurfaceDefaultDialer => 'डिफ़ॉल्ट डायलर प्रॉम्प्ट';

  @override
  String get fontSurfaceFavourites => 'पसंदीदा';

  @override
  String get fontSurfaceBlocked => 'ब्लॉक किए गए नंबर';

  @override
  String get fontSurfaceContactDetail => 'संपर्क विवरण';

  @override
  String get fontSurfaceCallHistory => 'कॉल इतिहास';

  @override
  String get fontSurfaceSheets => 'चादरें और बीनने वाले';

  @override
  String get fontSurfaceInCall => 'इन-कॉल स्क्रीन';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font - संपूर्ण ऐप';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font - केवल शीर्षक';
  }

  @override
  String get fontSubtitleCustomize => 'प्रति स्क्रीन कस्टम';

  @override
  String get background => 'पृष्ठभूमि';

  @override
  String get accent => 'लहज़ा';

  @override
  String get lightBackground => 'हल्की पृष्ठभूमि';

  @override
  String get lightAccent => 'हल्का उच्चारण';

  @override
  String get darkBackground => 'गहरे रंग की पृष्ठभूमि';

  @override
  String get darkAccent => 'गहरा उच्चारण';

  @override
  String get callBackground => 'कॉल पृष्ठभूमि';

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
  String get appIcon => 'ऐप आइकन';

  @override
  String get answerMethod => 'उत्तर विधि';

  @override
  String get answerSlide => 'उत्तर देने के लिए स्लाइड करें';

  @override
  String get answerSlideSubtitle =>
      'Google फ़ोन की तरह, बार पर बाएँ/दाएँ स्वाइप करें';

  @override
  String get answerButton => 'बटन टैप करें';

  @override
  String get answerButtonSubtitle => 'उत्तर या अस्वीकार बटन टैप करें';

  @override
  String get answerHuawei => 'हुआवेई शैली';

  @override
  String get answerHuaweiSubtitle =>
      'उत्तर देने के लिए वृत्त को हरे फ़ोन की ओर खींचें';

  @override
  String get answerHuaweiTileSubtitle => 'हुआवेई - हरे/लाल रंग में खींचें';

  @override
  String get calling => 'कॉलिंग';

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
  String get defaultSim => 'डिफ़ॉल्ट सिम';

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
  String get askEveryTime => 'हर बार पूछो';

  @override
  String get askEveryTimeSubtitle => 'प्रत्येक कॉल से पहले सिम पिकर दिखाएं';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'कोई सिम कार्ड नहीं मिला';

  @override
  String couldNotLoadSims(String error) {
    return 'सिम लोड नहीं हो सका: $error';
  }

  @override
  String get allFavourites => 'सभी पसंदीदा';

  @override
  String get allFavouritesSubtitle =>
      'संपर्कों को पुनः व्यवस्थित करें, हटाएँ और जोड़ें';

  @override
  String get blockedNumbers => 'ब्लॉक किए गए नंबर';

  @override
  String get blockedNumbersSubtitle => 'नंबर देखें और अनब्लॉक करें';

  @override
  String get soundsAndVibration => 'ध्वनियाँ और कंपन';

  @override
  String get soundsAndVibrationSubtitle => 'रिंगटोन, कंपन, डायल पैड टोन';

  @override
  String couldNotOpenSettings(String error) {
    return 'सेटिंग नहीं खुल सकी: $error';
  }

  @override
  String get frequentlyContacted => 'बार-बार संपर्क किया गया';

  @override
  String get numberOfRecords => 'अभिलेखों की संख्या';

  @override
  String get timePeriod => 'समय सीमा';

  @override
  String get periodLast24Hours => 'पिछले 24 घंटे';

  @override
  String get periodLast24HoursSubtitle => 'पिछले दिन से कॉल';

  @override
  String get periodLast7Days => 'पिछले 7 दिन';

  @override
  String get periodLast7DaysSubtitle => 'पिछले सप्ताह से कॉल';

  @override
  String get periodLast30Days => 'पिछले 30 दिन';

  @override
  String get periodLast30DaysSubtitle => 'पिछले महीने से कॉल';

  @override
  String get periodLast12Months => 'पिछले 12 महीने';

  @override
  String get periodLast12MonthsSubtitle => 'पिछले वर्ष से कॉल';

  @override
  String get periodAllTime => 'पूरे समय';

  @override
  String get periodAllTimeSubtitle => 'संपूर्ण कॉल इतिहास';

  @override
  String get frequentMaxOff => 'बंद';

  @override
  String frequentMaxCount(int count) {
    return '$count संपर्क';
  }

  @override
  String get torchBlink => 'मशाल झपकाना';

  @override
  String get torchIncomingCall => 'इनकमिंग कॉल टॉर्च';

  @override
  String get torchOutgoingCall => 'आउटगोइंग कॉल टॉर्च';

  @override
  String get torchOngoingCall => 'चालू कॉल टॉर्च';

  @override
  String get torchIncomingInterval => 'इनकमिंग ब्लिंक अंतराल';

  @override
  String get torchOutgoingInterval => 'आउटगोइंग ब्लिंक अंतराल';

  @override
  String get torchOngoingInterval => 'चल रहे पलक झपकाने का अंतराल';

  @override
  String get torchOff => 'बंद';

  @override
  String get torchOffIncomingSubtitle => 'बजते समय कोई टॉर्च नहीं';

  @override
  String get torchOffOutgoingSubtitle => 'डायल करते समय कोई टॉर्च नहीं';

  @override
  String get torchOffOngoingSubtitle => 'सक्रिय कॉल के दौरान कोई टॉर्च नहीं';

  @override
  String get torchFixedInterval => 'निश्चित अंतराल';

  @override
  String get torchFixedIntervalSubtitle => 'निर्धारित गति से पलकें झपकाएँ';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds एस';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds झपकाना';
  }

  @override
  String get flashlightUnavailable => 'इस डिवाइस पर फ़्लैशलाइट उपलब्ध नहीं है';

  @override
  String get glyphLights => 'ग्लिफ़ लाइट्स';

  @override
  String get glyphCallingAnimation => 'ग्लिफ़ कॉलिंग एनीमेशन';

  @override
  String get glyphOngoingAnimation => 'ग्लिफ़ चालू कॉल एनीमेशन';

  @override
  String get glyphNone => 'कोई नहीं';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'आउटगोइंग कॉल के लिए ग्लिफ़ लाइट अक्षम करें';

  @override
  String get glyphNoneInCallSubtitle =>
      'सक्रिय रूप से कॉल पर रहते हुए ग्लिफ़ लाइट अक्षम करें';

  @override
  String get glyphBreathProgress => 'सांस और प्रगति';

  @override
  String get glyphBreathProgressSubtitle =>
      'रोशनी सांस लेती है जबकि लाइन 65 से अधिक भर जाती है';

  @override
  String get glyphAccumulate => 'जमा करो';

  @override
  String get glyphAccumulateSubtitle => 'रोशनी C1-C4 पर एनीमेशन जमा हो रहा है';

  @override
  String get glyphSingle => 'अकेला';

  @override
  String get glyphSingleSubtitle => 'एकल प्रकाश C1-C4 पर घूम रहा है';

  @override
  String get glyphBreath => 'साँस';

  @override
  String get glyphBreathSubtitle => 'रोशनी और गति चुनें';

  @override
  String get glyphSteady => 'नियमित';

  @override
  String get glyphSteadySubtitle => 'चयनित लाइटें जलती रहती हैं';

  @override
  String get breathSettings => 'सांस सेटिंग';

  @override
  String get activeLights => 'सक्रिय रोशनी';

  @override
  String lightsCount(int count) {
    return '$count रोशनी';
  }

  @override
  String get speedSettings => 'गति सेटिंग्स';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms विलंब';
  }

  @override
  String get durationAndSpeed => 'अवधि और गति';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s अवधि, ${interval}ms अंतराल';
  }

  @override
  String get cancel => 'रद्द करें';

  @override
  String get done => 'हो गया';

  @override
  String get save => 'बचाना';

  @override
  String get block => 'ब्लॉक';

  @override
  String get delete => 'हटाएँ';

  @override
  String get recents => 'हालिया';

  @override
  String get contacts => 'संपर्क';

  @override
  String get hideFavouritesOnRecents => 'हाल ही में पसंदीदा छिपाएँ';

  @override
  String get showFavouritesOnRecents => 'हाल ही में पसंदीदा दिखाएं';

  @override
  String get ongoingCall => 'चल रही कॉल';

  @override
  String get setAsDefaultTitle => 'डिफ़ॉल्ट\nबनाएँ';

  @override
  String get setAsDefaultBody =>
      'नथिंग डायलर का उपयोग करने के लिए, इसे आपके डिफ़ॉल्ट फ़ोन ऐप के रूप में सेट किया जाना चाहिए। यह आपको कॉल प्रबंधित करने, इतिहास देखने और ग्लिफ़ एनिमेशन का उपयोग करने की अनुमति देता है।';

  @override
  String get setAsDefaultButton => 'डिफ़ॉल्ट बनाएँ';

  @override
  String get nothingDialerBrand => 'कुछ नहीं डायलर 1';

  @override
  String get favourites => 'पसंदीदा';

  @override
  String get addFavourite => 'पसंदीदा जोड़ें';

  @override
  String get favouritesDrawerHint =>
      'संपर्क जोड़ने के लिए मेनू का उपयोग करें. दराज के बाहर टैप करें या स्वाइप करके इसे बंद कर दें। किसी संपर्क को उनके विवरण से तारांकित करें, या हाल ही में किसी कॉल को देर तक दबाकर रखें।';

  @override
  String get menu => 'मेनू';

  @override
  String get noFavouritesYet =>
      'अभी तक कोई पसंदीदा नहीं.\nकिसी एक को जोड़ने या किसी संपर्क को तारांकित करने के लिए मेनू खोलें।';

  @override
  String get contactsPermissionNeeded => 'संपर्क अनुमति की आवश्यकता है';

  @override
  String get chooseContact => 'संपर्क चुनें';

  @override
  String get noPhone => 'फोन नहीं';

  @override
  String get pickNumber => 'नंबर चुनें';

  @override
  String get contactHasNoPhone => 'इस संपर्क का कोई फ़ोन नंबर नहीं है';

  @override
  String get blockNumber => 'ब्लॉक संख्या';

  @override
  String get enterPhoneNumber => 'फ़ोन नंबर दर्ज करें';

  @override
  String unblockedDisplay(String display) {
    return 'अनब्लॉक किया गया $display';
  }

  @override
  String get couldNotUnblockNumber => 'नंबर अनब्लॉक नहीं किया जा सका';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked अवरुद्ध • $matched मिलान हुआ';
  }

  @override
  String get contactsPermissionMissing =>
      'संपर्क अनुमति अनुपलब्ध है. ठीक करने के लिए टैप करें.';

  @override
  String get noBlockedNumbers => 'कोई अवरुद्ध संख्या नहीं';

  @override
  String get unknownContact => 'अज्ञात संपर्क';

  @override
  String get unblock => 'अनब्लॉक';

  @override
  String get permissionNeeded => 'अनुमति की आवश्यकता है';

  @override
  String get grantPhonePermission =>
      'अपना कॉल इतिहास देखने के लिए फ़ोन को अनुमति दें।';

  @override
  String get grantContactsPermission =>
      'संपर्कों को अपनी पता पुस्तिका देखने की अनुमति दें।';

  @override
  String get openSettings => 'खुली सेटिंग';

  @override
  String get tryAgain => 'पुनः प्रयास करें';

  @override
  String get couldNotLoadContacts => 'संपर्क लोड नहीं किये जा सके';

  @override
  String get contactsLoadError => 'आपकी पता पुस्तिका पढ़ते समय कुछ गलत हो गया।';

  @override
  String get noContactsFound => 'कोई संपर्क नहीं मिला';

  @override
  String get contactsEmptySubtitle => 'आपके डिवाइस के संपर्क यहां दिखाई देंगे.';

  @override
  String get searchContacts => 'संपर्क खोजें...';

  @override
  String get searchRecentCalls => 'हाल की कॉल खोजें';

  @override
  String get fromContacts => 'संपर्कों से';

  @override
  String get recentsSearchSection => 'हाल की खोज';

  @override
  String get recentsSearchShowContacts => 'खोज में संपर्क दिखाएँ';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'हाल ही की खोज करते समय, कॉल इतिहास परिणामों के नीचे अपनी पता पुस्तिका से मेल खाने वाले लोगों को भी दिखाएं।';

  @override
  String get voiceSearch => 'आवाज खोज';

  @override
  String get createNewContact => 'नया संपर्क बनाएं';

  @override
  String callError(String error) {
    return 'कॉल त्रुटि: $error';
  }

  @override
  String get noRecentCalls => 'कोई हालिया कॉल नहीं';

  @override
  String get callHistoryEmpty => 'आपकी कॉल हिस्ट्री यहां दिखाई देगी.';

  @override
  String get loadMore => 'और लोड करें';

  @override
  String get frequentlyContactedHeader => 'बार-बार संपर्क किया गया';

  @override
  String get recentHistory => 'हालिया इतिहास';

  @override
  String get noFavouritesRecentsHint =>
      'अभी तक कोई पसंदीदा नहीं. किसी संपर्क को तारांकित करें, किसी कॉल को देर तक दबाकर रखें, या पसंदीदा टैब का उपयोग करें।';

  @override
  String get copyNumber => 'नंबर कॉपी करें';

  @override
  String get editNumberBeforeCall => 'कॉल करने से पहले नंबर संपादित करें';

  @override
  String get removeFromFavourites => 'पसंदीदा से निकालें';

  @override
  String get addToFavourites => 'पसंदीदा करने के लिए जोड़ें';

  @override
  String get blockNumberQuestion => 'ब्लॉक संख्या?';

  @override
  String blockNumberConfirm(String number) {
    return 'अब आपको $number से कॉल या टेक्स्ट प्राप्त नहीं होंगे।';
  }

  @override
  String get blocked => 'अवरोधित';

  @override
  String get couldNotBlock => 'ब्लॉक नहीं किया जा सका';

  @override
  String get contactNotOnDevice => 'इस डिवाइस पर संपर्क सहेजा नहीं गया';

  @override
  String get unblocked => 'अनब्लॉक किया';

  @override
  String get numberCopied => 'नंबर कॉपी किया गया';

  @override
  String get showLess => 'कम दिखाओ';

  @override
  String get showAllTimes => 'हर समय दिखाएँ';

  @override
  String mostRecent(String time) {
    return 'सबसे हाल का · $time';
  }

  @override
  String get videoCall => 'वीडियो कॉल';

  @override
  String get couldNotPlaceVideoCall => 'वीडियो कॉल नहीं हो सका';

  @override
  String get message => 'संदेश';

  @override
  String get couldNotOpenMessaging => 'मैसेजिंग ऐप नहीं खुल सका';

  @override
  String get history => 'इतिहास';

  @override
  String get viewContact => 'संपर्क देखें';

  @override
  String get addToContact => 'कांटैक्ट में जोड़ो';

  @override
  String get callTypeMissed => 'चुक होना';

  @override
  String get callTypeRejected => 'अस्वीकार कर दिया';

  @override
  String get callTypeIncoming => 'आने वाली';

  @override
  String get callTypeOutgoing => 'जावक';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'कल';

  @override
  String get justNow => 'अभी';

  @override
  String minutesAgo(int count) {
    return '$count मिनट पहले';
  }

  @override
  String hoursAgo(int count) {
    return '$count घंटा पहले';
  }

  @override
  String get filterAll => 'सभी';

  @override
  String get filterMissed => 'चुक होना';

  @override
  String get filterContacts => 'संपर्क';

  @override
  String get filterNonContacts => 'गैर संपर्क';

  @override
  String get iconUpdated =>
      'आइकन अपडेट किया गया. आपकी होम स्क्रीन को रीफ्रेश होने में कुछ समय लग सकता है।';

  @override
  String get iconSavedRelease =>
      'विकल्प सहेजा गया. रिलीज़ बिल्ड में होम स्क्रीन आइकन अपडेट होता है।';

  @override
  String couldNotChangeIcon(String error) {
    return 'आइकन नहीं बदला जा सका: $error';
  }

  @override
  String get launcherClassicBlack => 'क्लासिक (काला)';

  @override
  String get launcherLight => 'रोशनी';

  @override
  String get launcherNothingRed => 'कुछ भी लाल नहीं';

  @override
  String get launcherDarkGrey => 'गहरा भूरा';

  @override
  String get launcherCream => 'क्रीम';

  @override
  String get launcherRetroPhone => 'रेट्रो फ़ोन';

  @override
  String get launcherRetroPhoneLight => 'रेट्रो फ़ोन (प्रकाश)';

  @override
  String get voiceSearchUnavailable => 'इस डिवाइस पर ध्वनि खोज उपलब्ध नहीं है.';

  @override
  String voiceSearchFailed(String error) {
    return 'ध्वनि खोज विफल: $error';
  }

  @override
  String get customColor => 'रिवाज़';

  @override
  String get selectColor => 'रंग चुनो';

  @override
  String get reset => 'रीसेट करें';

  @override
  String get simPickerTitle => 'सिम चुनें';

  @override
  String get simChooseForCall => 'इस कॉल के लिए सिम चुनें';

  @override
  String get defaultSimAsk => 'हर बार पूछो';

  @override
  String defaultSimFixed(int slot) {
    return 'सिम $slot';
  }

  @override
  String get contactDetails => 'सम्पर्क करने का विवरण';

  @override
  String get call => 'कॉल';

  @override
  String get share => 'शेयर करना';

  @override
  String get favourite => 'पसंदीदा';

  @override
  String get unfavourite => 'पसंदीदा नहीं';

  @override
  String get blockContact => 'संपर्क अवरोधित करें';

  @override
  String get unblockContact => 'संपर्क अनब्लॉक करें';

  @override
  String get deleteContact => 'संपर्क हटाएँ';

  @override
  String get phone => 'फ़ोन';

  @override
  String get email => 'ईमेल';

  @override
  String get ringtone => 'रिंगटोन';

  @override
  String get defaultRingtone => 'गलती करना';

  @override
  String get simForContact => 'इस संपर्क के लिए सिम';

  @override
  String get callHistoryTitle => 'कॉल इतिहास';

  @override
  String get noCallsWithNumber => 'इस नंबर से कोई कॉल नहीं';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'ग्लिफ़ एनीमेशन';

  @override
  String get inCallGlyphAnimationStyle => 'इन-कॉल ग्लिफ़ एनीमेशन';

  @override
  String get recordsOff => 'बंद';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'डिफ़ॉल्ट सिम';

  @override
  String get nothingPhoneOnly => 'कुछ नहीं केवल फ़ोन';

  @override
  String get nothingPhoneOnlySubtitle =>
      'ग्लिफ़ सुविधाओं के लिए नथिंग फ़ोन की आवश्यकता होती है';

  @override
  String get custom => 'कस्टम';

  @override
  String presetColorHex(String hex) {
    return 'प्रीसेट · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'कस्टम · $hex';
  }

  @override
  String get oneContact => '1 संपर्क';

  @override
  String upToContacts(int count) {
    return '$count तक संपर्क';
  }

  @override
  String get answerButtonTapSubtitle => 'उत्तर देने के लिए बटन टैप करें';

  @override
  String get filterCalls => 'कॉल फ़िल्टर करें';

  @override
  String get filterTooltip => 'फ़िल्टर';

  @override
  String get settingsTooltip => 'सेटिंग्स';

  @override
  String get filterAllSubtitle => 'संपूर्ण कॉल लॉग';

  @override
  String get filterMissedSubtitle => 'छूट गया और अस्वीकार कर दिया गया';

  @override
  String get filterContactsSubtitle => 'कॉल सहेजे गए संपर्क से मेल खाती हैं';

  @override
  String get filterNonContactsSubtitle => 'नंबर आपकी पता पुस्तिका में नहीं हैं';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'चालू कॉल: $detail';
  }

  @override
  String get defaultSimForCalls => 'कॉल के लिए डिफ़ॉल्ट सिम';

  @override
  String get blinkInterval => 'पलक झपकाने का अंतराल';

  @override
  String get close => 'बंद करना';

  @override
  String get frequentlyContactedInfoBody =>
      'आपके द्वारा चुनी गई समय अवधि में प्रत्येक नंबर पर कितनी इनकमिंग, आउटगोइंग, छूटी हुई या अस्वीकृत कॉलें थीं, इसके आधार पर, हाल के टैब के शीर्ष पर आपके सबसे अधिक कॉल किए गए फ़ोन नंबर दिखाता है।\n\nरिकॉर्ड की संख्या: इसे बंद करने के लिए 0 पर सेट करें। इतने सारे शीर्ष संपर्क दिखाने के लिए 1-20 का उपयोग करें।\n\nसमय अवधि तभी लागू होती है जब कम से कम एक संपर्क दिखाया जाता है।';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count रोशनी, ${ms}ms गति';
  }

  @override
  String get deleteContactQuestion => 'संपर्क हटाएं?';

  @override
  String get deleteContactBody =>
      'यह संपर्क आपके डिवाइस से स्थायी रूप से हटा दिया जाएगा.';

  @override
  String get blockContactQuestion => 'संपर्क अवरोधित करें?';

  @override
  String get unblockContactQuestion => 'संपर्क अनब्लॉक करें?';

  @override
  String get blockContactBody =>
      'अब आपको इस संपर्क से कॉल या संदेश प्राप्त नहीं होंगे.';

  @override
  String get unblockContactBody =>
      'आपको इस संपर्क से कॉल और टेक्स्ट प्राप्त होने लगेंगे.';

  @override
  String get contactBlocked => 'संपर्क अवरुद्ध कर दिया गया';

  @override
  String get contactUnblocked => 'संपर्क अनब्लॉक किया गया';

  @override
  String get noPhoneNumbersToBlock => 'ब्लॉक करने के लिए कोई फ़ोन नंबर नहीं';

  @override
  String get simSameAsSystem => 'सिस्टम के समान';

  @override
  String get simSameAsSystemSubtitle =>
      'सेटिंग्स में डिफ़ॉल्ट सिम का पालन करता है';

  @override
  String get simAskEveryTimeForContact =>
      'इस संपर्क के लिए हमेशा सिम पिकर दिखाएं';

  @override
  String get ringtoneSetForContact =>
      'इस संपर्क के लिए विश्व स्तर पर रिंगटोन सेट किया गया है';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'रिंगटोन चुनने में विफल: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'त्रुटि: $error';
  }

  @override
  String get noCallHistoryFound => 'कोई कॉल इतिहास नहीं मिला';

  @override
  String get speedDialVoicemail => 'स्पीड डायल: ध्वनि मेल';

  @override
  String shareContactSubject(String name) {
    return 'संपर्क करें: $name';
  }

  @override
  String get contactInfo => 'संपर्क सूचना';

  @override
  String get dontAskAgainSim => 'दोबारा मत पूछो';

  @override
  String get simDontAskAgainSubtitle =>
      'इस सिम को डिफ़ॉल्ट के रूप में उपयोग करें (सेटिंग्स में बदलाव)';

  @override
  String get addContact => 'संपर्क जोड़ें';

  @override
  String get createContact => 'संपर्क बनाएं';

  @override
  String get paste => 'पेस्ट करें';

  @override
  String get clear => 'स्पष्ट';

  @override
  String get returnToCall => 'कॉल पर लौटें';

  @override
  String get numberOfRecordsTitle => 'अभिलेखों की संख्या';

  @override
  String get recordsPickerSubtitle =>
      'दिखाने के लिए कितनी बार संपर्क की गई प्रविष्टियाँ (0 = बंद)';

  @override
  String get torchInfoTitle => 'टॉर्च झपकाना';

  @override
  String get torchInfoBody =>
      'इनकमिंग, आउटगोइंग या चालू कॉल के दौरान कैमरे का फ्लैश झपकाता है। ग्लिफ़ रोशनी से स्वतंत्र।';

  @override
  String get glyphMapTitle => 'ग्लिफ़ लेआउट';

  @override
  String get glyphMapBody =>
      'नथिंग फ़ोन 1 ग्लिफ़ एलईडी ज़ोन। आउटगोइंग और इन-कॉल एनिमेशन इन चैनलों का उपयोग करते हैं।';

  @override
  String get answerMethodTitle => 'उत्तर विधि';

  @override
  String get glyphOutgoingCallStyleTitle => 'आउटगोइंग कॉल शैली';

  @override
  String get glyphInCallAnimationTitle => 'ग्लिफ़ इन-कॉल एनीमेशन';

  @override
  String get themePickerTitle => 'विषय';

  @override
  String get torchIncomingTitle => 'इनकमिंग कॉल टॉर्च';

  @override
  String get torchOutgoingTitle => 'आउटगोइंग कॉल टॉर्च';

  @override
  String get torchOngoingTitle => 'चालू कॉल टॉर्च';

  @override
  String get timePeriodTitle => 'समय सीमा';

  @override
  String get ok => 'ठीक है';

  @override
  String get confirmDeleteCall => 'इस कॉल को इतिहास से हटाएं?';

  @override
  String get confirmDeleteAllCalls => 'इस नंबर से सभी कॉल हटाएं?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'एक संदेश भेजो';

  @override
  String get addToExistingContactAction => 'किसी संपर्क में जोड़ें';

  @override
  String get mobileLabel => 'गतिमान';

  @override
  String get callingSimForContactTitle =>
      'इस संपर्क के लिए सिम पर कॉल किया जा रहा है';

  @override
  String get contactSettings => 'संपर्क सेटिंग';

  @override
  String get setCallingSim => 'कॉलिंग सिम सेट करें';

  @override
  String get contactRingtone => 'संपर्क रिंगटोन';

  @override
  String get shareContact => 'संपर्क साझा करें';

  @override
  String get blockNumbers => 'ब्लॉक नंबर';

  @override
  String get unblockNumbers => 'नंबर अनब्लॉक करें';

  @override
  String get connectedApps => 'कनेक्टेड ऐप्स';

  @override
  String get simNotSet => 'सेट नहीं';

  @override
  String get ringtoneDefault => 'गलती करना';

  @override
  String get customRingtone => 'रिवाज़';

  @override
  String get aboutSection => 'के बारे में';

  @override
  String get aboutFeedbackSection => 'के बारे में और प्रतिक्रिया';

  @override
  String get aboutDescription =>
      'Nothing Dialer ओपन सोर्स है। यदि आप डेवलपर हैं, तो कोड देखने और योगदान देने के लिए आपका स्वागत है।';

  @override
  String get aboutViewSource => 'GitHub पर देखें';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'लिंक नहीं खोल सके';

  @override
  String get reviewSection => 'रेटिंग';

  @override
  String get reviewDescription =>
      'Nothing Dialer पसंद आ रहा है? Google Play पर आपकी रेटिंग दूसरों को ऐप खोजने में मदद करती है।';

  @override
  String get reviewRateOnPlay => 'Google Play पर रेट करें';

  @override
  String get reviewRateOnPlaySubtitle => 'Google Play सूची खोलता है';

  @override
  String get reviewCouldNotOpen => 'Google Play नहीं खोल सके';

  @override
  String get breathSpeed => 'सांस की गति';

  @override
  String get breathSpeedBlinkHint => 'निचला = पलक झपकना, उच्चतर = धीमी सांस';

  @override
  String get speedSliderHint => 'निचला = तेज़, उच्चतर = धीमा';

  @override
  String get swatchDefault => 'गलती करना';

  @override
  String get customAccentColorPicker => 'कस्टम उच्चारण रंग';

  @override
  String get customLightBackgroundPicker => 'कस्टम प्रकाश पृष्ठभूमि';

  @override
  String get customDarkBackgroundPicker => 'कस्टम गहरे रंग की पृष्ठभूमि';

  @override
  String get customCallBackgroundPicker => 'कस्टम कॉल पृष्ठभूमि';

  @override
  String get ongoingCallStyleTitle => 'चालू कॉल शैली';

  @override
  String get glyphMapUnavailable => 'ग्लिफ़ मानचित्र अनुपलब्ध';

  @override
  String get animationDelayRange => 'एनिमेशन विलंब (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'एनिमेशन विलंब (0.1s - 10s)';

  @override
  String get inCallMute => 'म्यूट';

  @override
  String get inCallKeypad => 'कीपैड';

  @override
  String get inCallSpeaker => 'स्पीकर';

  @override
  String get inCallMore => 'और';

  @override
  String get inCallBluetooth => 'ब्लूटूथ';

  @override
  String get inCallPhone => 'फ़ोन';

  @override
  String get inCallAddCall => 'कॉल जोड़ें';

  @override
  String get inCallChangeSim => 'SIM बदलें';

  @override
  String get inCallDecline => 'अस्वीकार';

  @override
  String get inCallAnswer => 'उत्तर दें';

  @override
  String get inCallMessage => 'संदेश';

  @override
  String get inCallCalling => 'कॉल हो रही है…';

  @override
  String get inCallIncoming => 'आने वाली कॉल';

  @override
  String get inCallSelectSim => 'SIM चुनें…';

  @override
  String get inCallSwitchingSim => 'SIM बदली जा रही है…';

  @override
  String get inCallCallEnded => 'कॉल समाप्त';

  @override
  String inCallCallingVia(String sim) {
    return '$sim के ज़रिए कॉल';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '<b>$sim</b> के ज़रिए कॉल';
  }

  @override
  String get inCallChooseSim => 'इस कॉल के लिए SIM चुनें';

  @override
  String get inCallDragAnswerDecline =>
      'उत्तर के लिए दाएँ · अस्वीकार के लिए बाएँ खींचें';

  @override
  String inCallMobileNumber(String number) {
    return 'मोबाइल $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label  (वर्तमान)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return '<b>$sim</b> से कॉल';
  }

  @override
  String get inCallCallFrom => 'कॉलจาก';

  @override
  String get inCallUnknown => 'अज्ञात';

  @override
  String get selectContactRingtone => 'संपर्क रिंगटोन चुनें';

  @override
  String get speakToSearchPrompt => 'खोजने के लिए बोलें';

  @override
  String get phonePermissionRequired => 'फ़ोन अनुमति आवश्यक';

  @override
  String callFailed(String error) {
    return 'कॉल विफल: $error';
  }

  @override
  String get callPermissionDenied => 'कॉल अनुमति अस्वीकृत';

  @override
  String get alreadyDefaultDialer => 'पहले से डिफ़ॉल्ट डायलर है';

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
