// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'काहीही डायलर';

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get settingsSearchHint => 'शोध सेटिंग्ज';

  @override
  String get settingsSearchNoResults => 'कोणतीही सेटिंग्ज आढळली नाहीत';

  @override
  String get general => 'सामान्य';

  @override
  String get theme => 'थीम';

  @override
  String get themeSystemDefault => 'सिस्टम डीफॉल्ट';

  @override
  String get themeLight => 'प्रकाश';

  @override
  String get themeDark => 'गडद';

  @override
  String get themeFollowSystem => 'सिस्टम सेटिंग्जचे अनुसरण करा';

  @override
  String get themeAlwaysLight => 'नेहमी हलकी थीम वापरा';

  @override
  String get themeAlwaysDark => 'नेहमी गडद थीम वापरा';

  @override
  String get language => 'भाषा';

  @override
  String get languageDeviceDefault => 'डिव्हाइस डीफॉल्ट';

  @override
  String get languagePickerTitle => 'भाषा';

  @override
  String get languageSearchHint => 'भाषा शोधा';

  @override
  String get font => 'फॉन्ट';

  @override
  String get fontSystem => 'सिस्टम डीफॉल्ट';

  @override
  String get fontNdot => 'काहीही नाही (NDot)';

  @override
  String get fontSerif => 'रोबोटो सेरिफ';

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
      'फॉन्ट डाउनलोड अयशस्वी. तुमचे कनेक्शन तपासा आणि पुन्हा प्रयत्न करा.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'फॉन्ट';

  @override
  String get fontPreviewSample => 'काहीही डायलर';

  @override
  String get fontAppWide => 'ॲप फॉन्ट';

  @override
  String get fontApplyTo => 'ला अर्ज करा';

  @override
  String get fontApplyEntireApp => 'संपूर्ण ॲप';

  @override
  String get fontApplyEntireAppSubtitle => 'इन-कॉलसह सर्वत्र समान फॉन्ट';

  @override
  String get fontApplyTitlesOnly => 'शीर्षके आणि शीर्षलेख';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'फक्त मोठी शीर्षके आणि विभाग शीर्षलेख';

  @override
  String get fontApplyCustomize => 'सानुकूलित करा';

  @override
  String get fontApplyCustomizeSubtitle =>
      'प्रति स्क्रीन फॉन्ट आणि मजकूर प्रकार निवडा';

  @override
  String get fontCustomizeSection => 'स्क्रीननुसार सानुकूलित करा';

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
  String get fontRoleSectionHeader => 'विभाग शीर्षलेख';

  @override
  String get fontRolePrimary => 'प्राथमिक मजकूर';

  @override
  String get fontRoleSecondary => 'दुय्यम मजकूर';

  @override
  String get fontRoleButton => 'बटणे';

  @override
  String get fontRoleDialKey => 'डायलपॅड की';

  @override
  String get fontSurfaceRecents => 'अलीकडील';

  @override
  String get fontSurfaceContacts => 'संपर्क';

  @override
  String get fontSurfaceSettings => 'सेटिंग्ज';

  @override
  String get fontSurfaceDialpad => 'डायलपॅड';

  @override
  String get fontSurfaceShell => 'नेव्हिगेशन';

  @override
  String get fontSurfaceDefaultDialer => 'डीफॉल्ट डायलर प्रॉम्प्ट';

  @override
  String get fontSurfaceFavourites => 'आवडते';

  @override
  String get fontSurfaceBlocked => 'ब्लॉक केलेले नंबर';

  @override
  String get fontSurfaceContactDetail => 'संपर्क तपशील';

  @override
  String get fontSurfaceCallHistory => 'कॉल इतिहास';

  @override
  String get fontSurfaceSheets => 'पत्रके आणि पिकर्स';

  @override
  String get fontSurfaceInCall => 'इन-कॉल स्क्रीन';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — संपूर्ण ॲप';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — फक्त शीर्षके';
  }

  @override
  String get fontSubtitleCustomize => 'प्रति स्क्रीन सानुकूल';

  @override
  String get background => 'पार्श्वभूमी';

  @override
  String get accent => 'उच्चारण';

  @override
  String get lightBackground => 'हलकी पार्श्वभूमी';

  @override
  String get lightAccent => 'हलका उच्चारण';

  @override
  String get darkBackground => 'गडद पार्श्वभूमी';

  @override
  String get darkAccent => 'गडद उच्चारण';

  @override
  String get callBackground => 'कॉल पार्श्वभूमी';

  @override
  String get appIcon => 'ॲप चिन्ह';

  @override
  String get answerMethod => 'उत्तर पद्धत';

  @override
  String get answerSlide => 'उत्तर देण्यासाठी स्लाइड करा';

  @override
  String get answerSlideSubtitle =>
      'Google फोन प्रमाणे बारवर डावीकडे/उजवीकडे स्वाइप करा';

  @override
  String get answerButton => 'बटण टॅप';

  @override
  String get answerButtonSubtitle => 'उत्तर किंवा नकार बटणावर टॅप करा';

  @override
  String get answerHuawei => 'Huawei शैली';

  @override
  String get answerHuaweiSubtitle =>
      'उत्तर देण्यासाठी वर्तुळ हिरव्या फोनवर ड्रॅग करा';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — हिरव्या/लाल वर ड्रॅग करा';

  @override
  String get calling => 'कॉल करत आहे';

  @override
  String get defaultSim => 'डीफॉल्ट सिम';

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
  String get askEveryTime => 'प्रत्येक वेळी विचारा';

  @override
  String get askEveryTimeSubtitle => 'प्रत्येक कॉलपूर्वी सिम पिकर दाखवा';

  @override
  String simSlot(int slot) {
    return 'सिम $slot';
  }

  @override
  String get noSimCardsFound => 'कोणतेही सिम कार्ड आढळले नाहीत';

  @override
  String couldNotLoadSims(String error) {
    return 'सिम लोड करू शकलो नाही: $error';
  }

  @override
  String get allFavourites => 'सर्व आवडी';

  @override
  String get allFavouritesSubtitle =>
      'संपर्कांमधून पुनर्क्रमित करा, काढा आणि जोडा';

  @override
  String get blockedNumbers => 'ब्लॉक केलेले नंबर';

  @override
  String get blockedNumbersSubtitle => 'नंबर पहा आणि अनब्लॉक करा';

  @override
  String get soundsAndVibration => 'ध्वनी आणि कंपन';

  @override
  String get soundsAndVibrationSubtitle => 'रिंगटोन, कंपन, डायल पॅड टोन';

  @override
  String couldNotOpenSettings(String error) {
    return 'सेटिंग्ज उघडू शकलो नाही: $error';
  }

  @override
  String get frequentlyContacted => 'वारंवार संपर्क केला';

  @override
  String get numberOfRecords => 'नोंदींची संख्या';

  @override
  String get timePeriod => 'कालावधी';

  @override
  String get periodLast24Hours => 'शेवटचे २४ तास';

  @override
  String get periodLast24HoursSubtitle => 'मागच्या दिवसाचे कॉल';

  @override
  String get periodLast7Days => 'शेवटचे ७ दिवस';

  @override
  String get periodLast7DaysSubtitle => 'गेल्या आठवड्यापासून कॉल';

  @override
  String get periodLast30Days => 'शेवटचे ३० दिवस';

  @override
  String get periodLast30DaysSubtitle => 'गेल्या महिन्यापासून कॉल';

  @override
  String get periodLast12Months => 'मागील 12 महिने';

  @override
  String get periodLast12MonthsSubtitle => 'गेल्या वर्षभरातील कॉल';

  @override
  String get periodAllTime => 'सर्व वेळ';

  @override
  String get periodAllTimeSubtitle => 'संपूर्ण कॉल इतिहास';

  @override
  String get frequentMaxOff => 'बंद';

  @override
  String frequentMaxCount(int count) {
    return '$count संपर्क';
  }

  @override
  String get torchBlink => 'टॉर्च ब्लिंक';

  @override
  String get torchIncomingCall => 'इनकमिंग कॉल टॉर्च';

  @override
  String get torchOutgoingCall => 'आउटगोइंग कॉल टॉर्च';

  @override
  String get torchOngoingCall => 'चालू कॉल टॉर्च';

  @override
  String get torchIncomingInterval => 'इनकमिंग ब्लिंक मध्यांतर';

  @override
  String get torchOutgoingInterval => 'आउटगोइंग ब्लिंक मध्यांतर';

  @override
  String get torchOngoingInterval => 'ब्लिंक इंटरव्हल चालू आहे';

  @override
  String get torchOff => 'बंद';

  @override
  String get torchOffIncomingSubtitle => 'वाजत असताना टॉर्च नाही';

  @override
  String get torchOffOutgoingSubtitle => 'डायल करताना टॉर्च नाही';

  @override
  String get torchOffOngoingSubtitle => 'सक्रिय कॉल दरम्यान टॉर्च नाही';

  @override
  String get torchFixedInterval => 'निश्चित अंतराल';

  @override
  String get torchFixedIntervalSubtitle => 'सेट वेगाने ब्लिंक करा';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds से';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds लुकलुकणे';
  }

  @override
  String get flashlightUnavailable => 'या डिव्हाइसवर फ्लॅशलाइट उपलब्ध नाही';

  @override
  String get glyphLights => 'ग्लिफ दिवे';

  @override
  String get glyphCallingAnimation => 'ग्लिफ कॉलिंग ॲनिमेशन';

  @override
  String get glyphOngoingAnimation => 'ग्लिफ चालू कॉल ॲनिमेशन';

  @override
  String get glyphNone => 'काहीही नाही';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'आउटगोइंग कॉलसाठी ग्लिफ लाइट अक्षम करा';

  @override
  String get glyphNoneInCallSubtitle =>
      'कॉलवर सक्रिय असताना ग्लिफ दिवे अक्षम करा';

  @override
  String get glyphBreathProgress => 'श्वास आणि प्रगती';

  @override
  String get glyphBreathProgressSubtitle =>
      '65s पेक्षा जास्त ओळ भरत असताना दिवे श्वास घेतात';

  @override
  String get glyphAccumulate => 'जमा करा';

  @override
  String get glyphAccumulateSubtitle => 'दिवे C1-C4 वर ॲनिमेशन जमा करणे';

  @override
  String get glyphSingle => 'अविवाहित';

  @override
  String get glyphSingleSubtitle => 'एकच प्रकाश C1-C4 वर फिरत आहे';

  @override
  String get glyphBreath => 'श्वास';

  @override
  String get glyphBreathSubtitle => 'दिवे आणि वेग निवडा';

  @override
  String get glyphSteady => 'स्थिर';

  @override
  String get glyphSteadySubtitle => 'निवडक दिवे चालू राहतात';

  @override
  String get breathSettings => 'श्वास सेटिंग्ज';

  @override
  String get activeLights => 'सक्रिय दिवे';

  @override
  String lightsCount(int count) {
    return '$count दिवे';
  }

  @override
  String get speedSettings => 'गती सेटिंग्ज';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms विलंब';
  }

  @override
  String get durationAndSpeed => 'कालावधी आणि गती';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s कालावधी, ${interval}ms अंतराल';
  }

  @override
  String get cancel => 'रद्द करा';

  @override
  String get done => 'झाले';

  @override
  String get save => 'जतन करा';

  @override
  String get block => 'ब्लॉक करा';

  @override
  String get delete => 'हटवा';

  @override
  String get recents => 'अलीकडील';

  @override
  String get contacts => 'संपर्क';

  @override
  String get hideFavouritesOnRecents => 'अलीकडील वर आवडते लपवा';

  @override
  String get showFavouritesOnRecents => 'अलीकडील वर आवडी दर्शवा';

  @override
  String get ongoingCall => 'चालू कॉल';

  @override
  String get setAsDefaultTitle => 'AS सेट करा\nडीफॉल्ट';

  @override
  String get setAsDefaultBody =>
      'नथिंग डायलर वापरण्यासाठी, ते तुमचे डीफॉल्ट फोन ॲप म्हणून सेट केलेले असणे आवश्यक आहे. हे तुम्हाला कॉल व्यवस्थापित करण्यास, इतिहास पाहण्यास आणि ग्लिफ ॲनिमेशन वापरण्यास अनुमती देते.';

  @override
  String get setAsDefaultButton => 'डीफॉल्ट म्हणून सेट करा';

  @override
  String get nothingDialerBrand => 'काहीही डायलर 1';

  @override
  String get favourites => 'आवडते';

  @override
  String get addFavourite => 'आवडते जोडा';

  @override
  String get favouritesDrawerHint =>
      'संपर्क जोडण्यासाठी मेनू वापरा. ड्रॉवरच्या बाहेर टॅप करा किंवा ते बंद स्वाइप करा. त्यांच्या तपशीलांवरून संपर्क तारांकित करा किंवा अलीकडील कॉलमध्ये दीर्घकाळ दाबा.';

  @override
  String get menu => 'मेनू';

  @override
  String get noFavouritesYet =>
      'अद्याप कोणतेही आवडते नाहीत.\nएक जोडण्यासाठी मेनू उघडा किंवा संपर्क तारांकित करा.';

  @override
  String get contactsPermissionNeeded => 'संपर्क परवानगी आवश्यक आहे';

  @override
  String get chooseContact => 'संपर्क निवडा';

  @override
  String get noPhone => 'फोन नाही';

  @override
  String get pickNumber => 'नंबर निवडा';

  @override
  String get contactHasNoPhone => 'या संपर्काकडे कोणताही फोन नंबर नाही';

  @override
  String get blockNumber => 'ब्लॉक नंबर';

  @override
  String get enterPhoneNumber => 'फोन नंबर प्रविष्ट करा';

  @override
  String unblockedDisplay(String display) {
    return 'अनब्लॉक केले $display';
  }

  @override
  String get couldNotUnblockNumber => 'नंबर अनब्लॉक करू शकलो नाही';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked अवरोधित • $matched जुळले';
  }

  @override
  String get contactsPermissionMissing =>
      'संपर्क परवानगी गहाळ आहे. निराकरण करण्यासाठी टॅप करा.';

  @override
  String get noBlockedNumbers => 'ब्लॉक केलेले नंबर नाहीत';

  @override
  String get unknownContact => 'अज्ञात संपर्क';

  @override
  String get unblock => 'अनब्लॉक करा';

  @override
  String get permissionNeeded => 'परवानगी आवश्यक';

  @override
  String get grantPhonePermission =>
      'तुमचा कॉल इतिहास पाहण्यासाठी फोनला परवानगी द्या.';

  @override
  String get grantContactsPermission =>
      'तुमची ॲड्रेस बुक पाहण्यासाठी संपर्कांना परवानगी द्या.';

  @override
  String get openSettings => 'सेटिंग्ज उघडा';

  @override
  String get tryAgain => 'पुन्हा प्रयत्न करा';

  @override
  String get couldNotLoadContacts => 'संपर्क लोड करू शकलो नाही';

  @override
  String get contactsLoadError => 'तुमची ॲड्रेस बुक वाचताना काहीतरी चूक झाली.';

  @override
  String get noContactsFound => 'कोणतेही संपर्क आढळले नाहीत';

  @override
  String get contactsEmptySubtitle =>
      'तुमच्या डिव्हाइसवरील संपर्क येथे दिसतील.';

  @override
  String get searchContacts => 'संपर्क शोधा…';

  @override
  String get searchRecentCalls => 'अलीकडील कॉल शोधा';

  @override
  String get fromContacts => 'संपर्कांमधून';

  @override
  String get recentsSearchSection => 'अलीकडील शोध';

  @override
  String get recentsSearchShowContacts => 'शोधात संपर्क दर्शवा';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'अलीकडील शोधत असताना, कॉल इतिहास परिणामांच्या खाली तुमच्या ॲड्रेस बुकमधून जुळणारे लोक देखील दाखवा.';

  @override
  String get voiceSearch => 'व्हॉइस शोध';

  @override
  String get createNewContact => 'नवीन संपर्क तयार करा';

  @override
  String callError(String error) {
    return 'कॉल त्रुटी: $error';
  }

  @override
  String get noRecentCalls => 'कोणतेही अलीकडील कॉल नाहीत';

  @override
  String get callHistoryEmpty => 'तुमचा कॉल इतिहास येथे दिसेल.';

  @override
  String get loadMore => 'अधिक लोड करा';

  @override
  String get frequentlyContactedHeader => 'वारंवार संपर्क केला';

  @override
  String get recentHistory => 'अलीकडील इतिहास';

  @override
  String get noFavouritesRecentsHint =>
      'अद्याप कोणतेही आवडते नाहीत. संपर्क तारांकित करा, कॉल दीर्घकाळ दाबा किंवा आवडते टॅब वापरा.';

  @override
  String get copyNumber => 'नंबर कॉपी करा';

  @override
  String get editNumberBeforeCall => 'कॉल करण्यापूर्वी नंबर संपादित करा';

  @override
  String get removeFromFavourites => 'आवडीमधून काढा';

  @override
  String get addToFavourites => 'आवडींमध्ये जोडा';

  @override
  String get blockNumberQuestion => 'ब्लॉक नंबर?';

  @override
  String blockNumberConfirm(String number) {
    return 'तुम्हाला यापुढे $number वरून कॉल किंवा एसएमएस प्राप्त होणार नाहीत.';
  }

  @override
  String get blocked => 'अवरोधित';

  @override
  String get couldNotBlock => 'ब्लॉक करू शकलो नाही';

  @override
  String get contactNotOnDevice => 'संपर्क या डिव्हाइसवर सेव्ह केलेला नाही';

  @override
  String get unblocked => 'अनब्लॉक केले';

  @override
  String get numberCopied => 'क्रमांक कॉपी केला';

  @override
  String get showLess => 'कमी दाखवा';

  @override
  String get showAllTimes => 'सर्व वेळा दाखवा';

  @override
  String mostRecent(String time) {
    return 'सर्वात अलीकडील · $time';
  }

  @override
  String get videoCall => 'व्हिडिओ कॉल';

  @override
  String get couldNotPlaceVideoCall => 'व्हिडिओ कॉल करू शकलो नाही';

  @override
  String get message => 'संदेश';

  @override
  String get couldNotOpenMessaging => 'मेसेजिंग ॲप उघडू शकलो नाही';

  @override
  String get history => 'इतिहास';

  @override
  String get viewContact => 'संपर्क पहा';

  @override
  String get addToContact => 'संपर्कात जोडा';

  @override
  String get callTypeMissed => 'चुकले';

  @override
  String get callTypeRejected => 'नाकारले';

  @override
  String get callTypeIncoming => 'येणारे';

  @override
  String get callTypeOutgoing => 'आउटगोइंग';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'काल';

  @override
  String get justNow => 'आत्ताच';

  @override
  String minutesAgo(int count) {
    return '$count मिनिटांपूर्वी';
  }

  @override
  String hoursAgo(int count) {
    return '$count तासापूर्वी';
  }

  @override
  String get filterAll => 'सर्व';

  @override
  String get filterMissed => 'चुकले';

  @override
  String get filterContacts => 'संपर्क';

  @override
  String get filterNonContacts => 'गैर-संपर्क';

  @override
  String get iconUpdated =>
      'चिन्ह अद्यतनित केले. तुमची होम स्क्रीन रिफ्रेश होण्यासाठी थोडा वेळ लागू शकतो.';

  @override
  String get iconSavedRelease =>
      'निवड जतन केली. होम स्क्रीन आयकॉन रिलीझ बिल्डमध्ये अपडेट होते.';

  @override
  String couldNotChangeIcon(String error) {
    return 'आयकन बदलू शकलो नाही: $error';
  }

  @override
  String get launcherClassicBlack => 'क्लासिक (काळा)';

  @override
  String get launcherLight => 'प्रकाश';

  @override
  String get launcherNothingRed => 'लाल काहीच नाही';

  @override
  String get launcherDarkGrey => 'गडद राखाडी';

  @override
  String get launcherCream => 'मलई';

  @override
  String get launcherRetroPhone => 'रेट्रो फोन';

  @override
  String get launcherRetroPhoneLight => 'रेट्रो फोन (लाइट)';

  @override
  String get voiceSearchUnavailable => 'या डिव्हाइसवर व्हॉइस शोध उपलब्ध नाही.';

  @override
  String voiceSearchFailed(String error) {
    return 'व्हॉइस शोध अयशस्वी: $error';
  }

  @override
  String get customColor => 'सानुकूल';

  @override
  String get selectColor => 'रंग निवडा';

  @override
  String get reset => 'रीसेट करा';

  @override
  String get simPickerTitle => 'सिम निवडा';

  @override
  String get simChooseForCall => 'या कॉलसाठी सिम निवडा';

  @override
  String get defaultSimAsk => 'प्रत्येक वेळी विचारा';

  @override
  String defaultSimFixed(int slot) {
    return 'सिम $slot';
  }

  @override
  String get contactDetails => 'संपर्क तपशील';

  @override
  String get call => 'कॉल करा';

  @override
  String get share => 'शेअर करा';

  @override
  String get favourite => 'आवडते';

  @override
  String get unfavourite => 'आवडत नाही';

  @override
  String get blockContact => 'संपर्क अवरोधित करा';

  @override
  String get unblockContact => 'संपर्क अनावरोधित करा';

  @override
  String get deleteContact => 'संपर्क हटवा';

  @override
  String get phone => 'फोन';

  @override
  String get email => 'ईमेल';

  @override
  String get ringtone => 'रिंगटोन';

  @override
  String get defaultRingtone => 'डीफॉल्ट';

  @override
  String get simForContact => 'या संपर्कासाठी सिम';

  @override
  String get callHistoryTitle => 'कॉल इतिहास';

  @override
  String get noCallsWithNumber => 'या नंबरसह कोणतेही कॉल नाहीत';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '$secondsसे';
  }

  @override
  String get glyphAnimationStyle => 'ग्लिफ ॲनिमेशन';

  @override
  String get inCallGlyphAnimationStyle => 'इन-कॉल ग्लिफ ॲनिमेशन';

  @override
  String get recordsOff => 'बंद';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'डीफॉल्ट सिम';

  @override
  String get nothingPhoneOnly => 'काहीही नाही फक्त फोन';

  @override
  String get nothingPhoneOnlySubtitle =>
      'ग्लिफ वैशिष्ट्यांसाठी नथिंग फोन आवश्यक आहे';

  @override
  String get custom => 'सानुकूल';

  @override
  String presetColorHex(String hex) {
    return 'प्रीसेट · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'सानुकूल · $hex';
  }

  @override
  String get oneContact => '1 संपर्क';

  @override
  String upToContacts(int count) {
    return '$count संपर्कांपर्यंत';
  }

  @override
  String get answerButtonTapSubtitle => 'उत्तर देण्यासाठी बटण टॅप करा';

  @override
  String get filterCalls => 'कॉल फिल्टर करा';

  @override
  String get filterTooltip => 'फिल्टर करा';

  @override
  String get settingsTooltip => 'सेटिंग्ज';

  @override
  String get filterAllSubtitle => 'संपूर्ण कॉल लॉग';

  @override
  String get filterMissedSubtitle => 'चुकले आणि नाकारले';

  @override
  String get filterContactsSubtitle => 'जतन केलेल्या संपर्काशी कॉल जुळले';

  @override
  String get filterNonContactsSubtitle => 'तुमच्या ॲड्रेस बुकमध्ये नंबर नाहीत';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'चालू असलेला कॉल: $detail';
  }

  @override
  String get defaultSimForCalls => 'कॉलसाठी डीफॉल्ट सिम';

  @override
  String get blinkInterval => 'ब्लिंक मध्यांतर';

  @override
  String get close => 'बंद करा';

  @override
  String get frequentlyContactedInfoBody =>
      'तुम्ही निवडलेल्या कालावधीत प्रत्येक नंबरवर किती इनकमिंग, आउटगोइंग, मिस किंवा नाकारलेले कॉल्स होते यावर आधारित, अलीकडील टॅबच्या शीर्षस्थानी तुमचे सर्वाधिक कॉल केलेले फोन नंबर दर्शविते.\n\nरेकॉर्डची संख्या: हे बंद करण्यासाठी 0 वर सेट करा. अनेक शीर्ष संपर्क दर्शविण्यासाठी 1-20 वापरा.\n\nजेव्हा किमान एक संपर्क दर्शविला जातो तेव्हाच कालावधी लागू होतो.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count दिवे, ${ms}ms गती';
  }

  @override
  String get deleteContactQuestion => 'संपर्क हटवायचा?';

  @override
  String get deleteContactBody =>
      'हा संपर्क तुमच्या डिव्हाइसवरून कायमचा हटवला जाईल.';

  @override
  String get blockContactQuestion => 'संपर्क अवरोधित करायचे?';

  @override
  String get unblockContactQuestion => 'संपर्क अनब्लॉक करायचा?';

  @override
  String get blockContactBody =>
      'तुम्हाला यापुढे या संपर्काकडून कॉल किंवा मजकूर प्राप्त होणार नाहीत.';

  @override
  String get unblockContactBody =>
      'तुम्हाला या संपर्कातून कॉल आणि मजकूर मिळणे सुरू होईल.';

  @override
  String get contactBlocked => 'संपर्क अवरोधित';

  @override
  String get contactUnblocked => 'संपर्क अनावरोधित';

  @override
  String get noPhoneNumbersToBlock => 'ब्लॉक करण्यासाठी कोणतेही फोन नंबर नाहीत';

  @override
  String get simSameAsSystem => 'प्रणाली प्रमाणेच';

  @override
  String get simSameAsSystemSubtitle => 'सेटिंग्जमध्ये डीफॉल्ट सिम फॉलो करते';

  @override
  String get simAskEveryTimeForContact => 'या संपर्कासाठी नेहमी सिम पिकर दाखवा';

  @override
  String get ringtoneSetForContact =>
      'या संपर्कासाठी जागतिक स्तरावर रिंगटोन सेट केली आहे';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'रिंगटोन निवडण्यात अयशस्वी: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'त्रुटी: $error';
  }

  @override
  String get noCallHistoryFound => 'कॉल इतिहास आढळला नाही';

  @override
  String get speedDialVoicemail => 'स्पीड डायल: व्हॉइसमेल';

  @override
  String shareContactSubject(String name) {
    return 'संपर्क: $name';
  }

  @override
  String get contactInfo => 'संपर्क माहिती';

  @override
  String get dontAskAgainSim => 'पुन्हा विचारू नका';

  @override
  String get simDontAskAgainSubtitle =>
      'हे सिम डीफॉल्ट म्हणून वापरा (सेटिंग्जमध्ये बदल)';

  @override
  String get addContact => 'संपर्क जोडा';

  @override
  String get createContact => 'संपर्क तयार करा';

  @override
  String get paste => 'पेस्ट करा';

  @override
  String get clear => 'साफ';

  @override
  String get returnToCall => 'कॉलवर परत या';

  @override
  String get numberOfRecordsTitle => 'नोंदींची संख्या';

  @override
  String get recordsPickerSubtitle =>
      'किती वारंवार संपर्क केलेल्या नोंदी दाखवायच्या आहेत (0 = बंद)';

  @override
  String get torchInfoTitle => 'टॉर्च ब्लिंक';

  @override
  String get torchInfoBody =>
      'इनकमिंग, आउटगोइंग किंवा चालू कॉल दरम्यान कॅमेरा फ्लॅश ब्लिंक करते. ग्लिफ लाइट्सपासून स्वतंत्र.';

  @override
  String get glyphMapTitle => 'ग्लिफ लेआउट';

  @override
  String get glyphMapBody =>
      'काहीही नाही फोन 1 Glyph LED झोन. आउटगोइंग आणि इन-कॉल ॲनिमेशन हे चॅनेल वापरतात.';

  @override
  String get answerMethodTitle => 'उत्तर पद्धत';

  @override
  String get glyphOutgoingCallStyleTitle => 'आउटगोइंग कॉल शैली';

  @override
  String get glyphInCallAnimationTitle => 'ग्लिफ इन-कॉल ॲनिमेशन';

  @override
  String get themePickerTitle => 'थीम';

  @override
  String get torchIncomingTitle => 'इनकमिंग कॉल टॉर्च';

  @override
  String get torchOutgoingTitle => 'आउटगोइंग कॉल टॉर्च';

  @override
  String get torchOngoingTitle => 'चालू कॉल टॉर्च';

  @override
  String get timePeriodTitle => 'कालावधी';

  @override
  String get ok => 'ठीक आहे';

  @override
  String get confirmDeleteCall => 'हा कॉल इतिहासातून हटवायचा?';

  @override
  String get confirmDeleteAllCalls => 'या नंबरचे सर्व कॉल हटवायचे?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'एक संदेश पाठवा';

  @override
  String get addToExistingContactAction => 'संपर्कात जोडा';

  @override
  String get mobileLabel => 'मोबाईल';

  @override
  String get callingSimForContactTitle => 'या संपर्कासाठी सिमवर कॉल करत आहे';

  @override
  String get contactSettings => 'संपर्क सेटिंग्ज';

  @override
  String get setCallingSim => 'कॉलिंग सिम सेट करा';

  @override
  String get contactRingtone => 'संपर्क रिंगटोन';

  @override
  String get shareContact => 'संपर्क सामायिक करा';

  @override
  String get blockNumbers => 'ब्लॉक नंबर';

  @override
  String get unblockNumbers => 'नंबर अनब्लॉक करा';

  @override
  String get connectedApps => 'कनेक्ट केलेले ॲप्स';

  @override
  String get simNotSet => 'सेट नाही';

  @override
  String get ringtoneDefault => 'डीफॉल्ट';

  @override
  String get customRingtone => 'सानुकूल';

  @override
  String get aboutSection => 'बद्दल';

  @override
  String get aboutFeedbackSection => 'बद्दल आणि अभिप्राय';

  @override
  String get aboutDescription =>
      'काहीही डायलर ओपन सोर्स नाही. तुम्ही विकासक असल्यास, कोड एक्सप्लोर करण्यासाठी आणि योगदान देण्यासाठी तुमचे स्वागत आहे.';

  @override
  String get aboutViewSource => 'GitHub वर पहा';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'लिंक उघडू शकलो नाही';

  @override
  String get reviewSection => 'पुनरावलोकन करा';

  @override
  String get reviewDescription =>
      'नथिंग डायलरचा आनंद घेत आहात? Google Play वरील तुमचे रेटिंग इतरांना ॲप शोधण्यात मदत करते.';

  @override
  String get reviewRateOnPlay => 'Google Play वर रेट करा';

  @override
  String get reviewRateOnPlaySubtitle => 'ॲप न सोडता रेटिंग द्या';

  @override
  String get reviewCouldNotOpen => 'Google Play उघडू शकलो नाही';

  @override
  String get breathSpeed => 'श्वासाचा वेग';

  @override
  String get breathSpeedBlinkHint => 'लोअर = लुकलुकणे, उच्च = मंद श्वास';

  @override
  String get speedSliderHint => 'निम्न = वेगवान, उच्च = हळू';

  @override
  String get swatchDefault => 'डीफॉल्ट';

  @override
  String get customAccentColorPicker => 'सानुकूल उच्चारण रंग';

  @override
  String get customLightBackgroundPicker => 'सानुकूल प्रकाश पार्श्वभूमी';

  @override
  String get customDarkBackgroundPicker => 'सानुकूल गडद पार्श्वभूमी';

  @override
  String get customCallBackgroundPicker => 'सानुकूल कॉल पार्श्वभूमी';

  @override
  String get ongoingCallStyleTitle => 'चालू कॉल शैली';

  @override
  String get glyphMapUnavailable => 'Glyph नकाशा अनुपलब्ध';

  @override
  String get animationDelayRange => 'ॲनिमेशन विलंब (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'ॲनिमेशन विलंब (0.1s - 10s)';

  @override
  String get inCallMute => 'नि:शब्द करा';

  @override
  String get inCallKeypad => 'कीपॅड';

  @override
  String get inCallSpeaker => 'वक्ता';

  @override
  String get inCallMore => 'अधिक';

  @override
  String get inCallBluetooth => 'ब्लूटूथ';

  @override
  String get inCallPhone => 'फोन';

  @override
  String get inCallAddCall => 'कॉल जोडा';

  @override
  String get inCallChangeSim => 'सिम बदला';

  @override
  String get inCallDecline => 'नकार';

  @override
  String get inCallAnswer => 'उत्तर द्या';

  @override
  String get inCallMessage => 'संदेश';

  @override
  String get inCallCalling => 'कॉल करत आहे...';

  @override
  String get inCallIncoming => 'येणारा कॉल';

  @override
  String get inCallSelectSim => 'सिम निवडा...';

  @override
  String get inCallSwitchingSim => 'सिम स्विच करत आहे...';

  @override
  String get inCallCallEnded => 'कॉल संपला';

  @override
  String inCallCallingVia(String sim) {
    return '$sim द्वारे कॉल करत आहे';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '<b>$sim</b> द्वारे कॉल करत आहे';
  }

  @override
  String get inCallChooseSim => 'या कॉलसाठी सिम निवडा';

  @override
  String get inCallDragAnswerDecline =>
      'उत्तर देण्यासाठी उजवीकडे ड्रॅग करा · नाकारण्यासाठी डावीकडे ड्रॅग करा';

  @override
  String inCallMobileNumber(String number) {
    return 'मोबाइल $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (वर्तमान)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'वरून <b>$sim</b> द्वारे कॉल करा';
  }

  @override
  String get inCallCallFrom => 'पासून कॉल करा';

  @override
  String get inCallUnknown => 'अज्ञात';

  @override
  String get selectContactRingtone => 'संपर्क रिंगटोन निवडा';

  @override
  String get speakToSearchPrompt => 'शोधण्यासाठी बोला';

  @override
  String get phonePermissionRequired => 'फोन परवानगी आवश्यक';

  @override
  String callFailed(String error) {
    return 'कॉल अयशस्वी: $error';
  }

  @override
  String get callPermissionDenied => 'कॉल परवानगी नाकारली';

  @override
  String get alreadyDefaultDialer => 'आधीच डीफॉल्ट डायलर म्हणून सेट केले आहे';

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
