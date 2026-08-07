// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get appTitle => 'केहि छैन डायलर';

  @override
  String get settings => 'सेटिङहरू';

  @override
  String get settingsSearchHint => 'खोज सेटिङहरू';

  @override
  String get settingsSearchNoResults => 'कुनै सेटिङ भेटिएन';

  @override
  String get general => 'सामान्य';

  @override
  String get theme => 'विषयवस्तु';

  @override
  String get themeSystemDefault => 'प्रणाली पूर्वनिर्धारित';

  @override
  String get themeLight => 'उज्यालो';

  @override
  String get themeDark => 'अँध्यारो';

  @override
  String get themeFollowSystem => 'प्रणाली सेटिङहरू पालना गर्नुहोस्';

  @override
  String get themeAlwaysLight => 'सधैं हल्का विषयवस्तु प्रयोग गर्नुहोस्';

  @override
  String get themeAlwaysDark => 'सधैं अँध्यारो विषयवस्तु प्रयोग गर्नुहोस्';

  @override
  String get language => 'भाषा';

  @override
  String get languageDeviceDefault => 'यन्त्र पूर्वनिर्धारित';

  @override
  String get languagePickerTitle => 'भाषा';

  @override
  String get languageSearchHint => 'भाषाहरू खोज्नुहोस्';

  @override
  String get font => 'फन्ट';

  @override
  String get fontSystem => 'प्रणाली पूर्वनिर्धारित';

  @override
  String get fontNdot => 'केहि छैन (NDot)';

  @override
  String get fontSerif => 'रोबोट सेरिफ';

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
      'फन्ट डाउनलोड असफल भयो। आफ्नो जडान जाँच गर्नुहोस् र फेरि प्रयास गर्नुहोस्।';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'फन्ट';

  @override
  String get fontPreviewSample => 'केहि छैन डायलर';

  @override
  String get fontAppWide => 'एप फन्ट';

  @override
  String get fontApplyTo => 'मा आवेदन दिनुहोस्';

  @override
  String get fontApplyEntireApp => 'सम्पूर्ण एप';

  @override
  String get fontApplyEntireAppSubtitle => 'इन-कल सहित जताततै समान फन्ट';

  @override
  String get fontApplyTitlesOnly => 'शीर्षक र हेडरहरू';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'ठूला शीर्षकहरू र खण्ड हेडरहरू मात्र';

  @override
  String get fontApplyCustomize => 'अनुकूलन गर्नुहोस्';

  @override
  String get fontApplyCustomizeSubtitle =>
      'प्रति स्क्रिन र पाठ प्रकार फन्ट छान्नुहोस्';

  @override
  String get fontCustomizeSection => 'स्क्रिन द्वारा अनुकूलित';

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
  String get fontRoleSectionHeader => 'खण्ड हेडर';

  @override
  String get fontRolePrimary => 'प्राथमिक पाठ';

  @override
  String get fontRoleSecondary => 'माध्यमिक पाठ';

  @override
  String get fontRoleButton => 'बटनहरू';

  @override
  String get fontRoleDialKey => 'डायलप्याड कुञ्जीहरू';

  @override
  String get fontSurfaceRecents => 'हालको';

  @override
  String get fontSurfaceContacts => 'सम्पर्कहरू';

  @override
  String get fontSurfaceSettings => 'सेटिङहरू';

  @override
  String get fontSurfaceDialpad => 'डायलप्याड';

  @override
  String get fontSurfaceShell => 'नेभिगेसन';

  @override
  String get fontSurfaceDefaultDialer => 'पूर्वनिर्धारित डायलर प्रम्प्ट';

  @override
  String get fontSurfaceFavourites => 'मनपर्नेहरू';

  @override
  String get fontSurfaceBlocked => 'अवरुद्ध नम्बरहरू';

  @override
  String get fontSurfaceContactDetail => 'सम्पर्क विवरण';

  @override
  String get fontSurfaceCallHistory => 'कल इतिहास';

  @override
  String get fontSurfaceSheets => 'पाना र पिकरहरू';

  @override
  String get fontSurfaceInCall => 'इन-कल स्क्रिन';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — सम्पूर्ण एप';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — शीर्षकहरू मात्र';
  }

  @override
  String get fontSubtitleCustomize => 'प्रति स्क्रिन अनुकूलन';

  @override
  String get background => 'पृष्ठभूमि';

  @override
  String get accent => 'उच्चारण';

  @override
  String get lightBackground => 'हल्का पृष्ठभूमि';

  @override
  String get lightAccent => 'हल्का उच्चारण';

  @override
  String get darkBackground => 'गाढा पृष्ठभूमि';

  @override
  String get darkAccent => 'गाढा उच्चारण';

  @override
  String get callBackground => 'कल पृष्ठभूमि';

  @override
  String get appIcon => 'एप आइकन';

  @override
  String get answerMethod => 'उत्तर विधि';

  @override
  String get answerSlide => 'जवाफ दिन स्लाइड गर्नुहोस्';

  @override
  String get answerSlideSubtitle =>
      'गुगल फोन जस्तै बारमा बायाँ/दायाँ स्वाइप गर्नुहोस्';

  @override
  String get answerButton => 'बटन ट्याप गर्नुहोस्';

  @override
  String get answerButtonSubtitle => 'जवाफ वा अस्वीकार बटनहरू ट्याप गर्नुहोस्';

  @override
  String get answerHuawei => 'Huawei शैली';

  @override
  String get answerHuaweiSubtitle => 'जवाफ दिन हरियो फोनमा सर्कल तान्नुहोस्';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — हरियो/रातोमा तान्नुहोस्';

  @override
  String get calling => 'कल गर्दै';

  @override
  String get defaultSim => 'पूर्वनिर्धारित सिम';

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
  String get askEveryTime => 'हरेक पटक सोध्नुहोस्';

  @override
  String get askEveryTimeSubtitle => 'प्रत्येक कल अघि सिम पिकर देखाउनुहोस्';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'कुनै सिम कार्ड फेला परेन';

  @override
  String couldNotLoadSims(String error) {
    return 'सिमहरू लोड गर्न सकिएन: $error';
  }

  @override
  String get allFavourites => 'सबै मनपर्नेहरू';

  @override
  String get allFavouritesSubtitle =>
      'सम्पर्कहरूबाट पुन: क्रमबद्ध गर्नुहोस्, हटाउनुहोस् र थप्नुहोस्';

  @override
  String get blockedNumbers => 'अवरुद्ध नम्बरहरू';

  @override
  String get blockedNumbersSubtitle => 'नम्बरहरू हेर्नुहोस् र अनब्लक गर्नुहोस्';

  @override
  String get soundsAndVibration => 'ध्वनि र कम्पन';

  @override
  String get soundsAndVibrationSubtitle => 'रिङ्गटोन, कम्पन, डायल प्याड टोन';

  @override
  String couldNotOpenSettings(String error) {
    return 'सेटिङहरू खोल्न सकिएन: $error';
  }

  @override
  String get frequentlyContacted => 'बारम्बार सम्पर्क';

  @override
  String get numberOfRecords => 'रेकर्ड संख्या';

  @override
  String get timePeriod => 'समय अवधि';

  @override
  String get periodLast24Hours => 'पछिल्लो २४ घण्टा';

  @override
  String get periodLast24HoursSubtitle => 'बितेको दिन देखि कलहरू';

  @override
  String get periodLast7Days => 'पछिल्लो ७ दिन';

  @override
  String get periodLast7DaysSubtitle => 'गत हप्ता देखि कलहरू';

  @override
  String get periodLast30Days => 'पछिल्लो 30 दिन';

  @override
  String get periodLast30DaysSubtitle => 'गत महिना देखि कलहरू';

  @override
  String get periodLast12Months => 'पछिल्लो १२ महिना';

  @override
  String get periodLast12MonthsSubtitle => 'गत वर्षको कलहरू';

  @override
  String get periodAllTime => 'सबै समय';

  @override
  String get periodAllTimeSubtitle => 'सम्पूर्ण कल इतिहास';

  @override
  String get frequentMaxOff => 'बन्द';

  @override
  String frequentMaxCount(int count) {
    return '$count सम्पर्कहरू';
  }

  @override
  String get torchBlink => 'टर्च झिम्काइ';

  @override
  String get torchIncomingCall => 'आगमन कल टर्च';

  @override
  String get torchOutgoingCall => 'बाहिर जाने कल टर्च';

  @override
  String get torchOngoingCall => 'चलिरहेको कल टर्च';

  @override
  String get torchIncomingInterval => 'आगमन पलक अन्तराल';

  @override
  String get torchOutgoingInterval => 'आउटगोइंग ब्लिंक अन्तराल';

  @override
  String get torchOngoingInterval => 'चलिरहेको पलक अन्तराल';

  @override
  String get torchOff => 'बन्द';

  @override
  String get torchOffIncomingSubtitle => 'घण्टी बज्दा टर्च छैन';

  @override
  String get torchOffOutgoingSubtitle => 'डायल गर्दा टर्च छैन';

  @override
  String get torchOffOngoingSubtitle => 'सक्रिय कलको समयमा कुनै टर्च छैन';

  @override
  String get torchFixedInterval => 'निश्चित अन्तराल';

  @override
  String get torchFixedIntervalSubtitle => 'एक सेट गति मा पलक';

  @override
  String torchIntervalSeconds(String seconds) {
    return '⟦०⟧ सेकेन्ड';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds झिम्काइ';
  }

  @override
  String get flashlightUnavailable => 'यस यन्त्रमा टर्चलाइट उपलब्ध छैन';

  @override
  String get glyphLights => 'ग्लिफ लाइटहरू';

  @override
  String get glyphCallingAnimation => 'ग्लिफ कलिङ एनिमेसन';

  @override
  String get glyphOngoingAnimation => 'Glyph चलिरहेको कल एनिमेसन';

  @override
  String get glyphNone => 'कुनै पनि छैन';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'बाहिर जाने कलहरूको लागि ग्लिफ लाइटहरू असक्षम गर्नुहोस्';

  @override
  String get glyphNoneInCallSubtitle =>
      'कलमा सक्रिय हुँदा Glyph लाइटहरू असक्षम गर्नुहोस्';

  @override
  String get glyphBreathProgress => 'सास र प्रगति';

  @override
  String get glyphBreathProgressSubtitle =>
      '६५ सेकेन्डमा लाइन भर्दा बत्तीहरू सास फेर्छन्';

  @override
  String get glyphAccumulate => 'जम्मा गर्नुहोस्';

  @override
  String get glyphAccumulateSubtitle => 'बत्ती C1-C4 मा एनिमेसन जम्मा गर्दै';

  @override
  String get glyphSingle => 'एकल';

  @override
  String get glyphSingleSubtitle => 'एकल प्रकाश C1-C4 मा चलिरहेको छ';

  @override
  String get glyphBreath => 'सास';

  @override
  String get glyphBreathSubtitle => 'बत्ती र गति छान्नुहोस्';

  @override
  String get glyphSteady => 'स्थिर';

  @override
  String get glyphSteadySubtitle => 'चयन गरिएका बत्तीहरू सक्रिय रहन्छन्';

  @override
  String get breathSettings => 'श्वास सेटिङहरू';

  @override
  String get activeLights => 'सक्रिय लाइटहरू';

  @override
  String lightsCount(int count) {
    return '$count बत्तीहरू';
  }

  @override
  String get speedSettings => 'गति सेटिङहरू';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms ढिलाइ';
  }

  @override
  String get durationAndSpeed => 'अवधि र गति';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s अवधि, ${interval}ms अन्तराल';
  }

  @override
  String get cancel => 'रद्द गर्नुहोस्';

  @override
  String get done => 'सकियो';

  @override
  String get save => 'बचत गर्नुहोस्';

  @override
  String get block => 'ब्लक';

  @override
  String get delete => 'मेट्नुहोस्';

  @override
  String get recents => 'हालको';

  @override
  String get contacts => 'सम्पर्कहरू';

  @override
  String get hideFavouritesOnRecents => 'भर्खरका मनपर्नेहरू लुकाउनुहोस्';

  @override
  String get showFavouritesOnRecents => 'हालसालैका मनपर्नेहरू देखाउनुहोस्';

  @override
  String get ongoingCall => 'चलिरहेको कल';

  @override
  String get setAsDefaultTitle => 'AS सेट गर्नुहोस्\nपूर्वनिर्धारित';

  @override
  String get setAsDefaultBody =>
      'नथिङ डायलर प्रयोग गर्न, यसलाई तपाइँको पूर्वनिर्धारित फोन एपको रूपमा सेट गर्नुपर्छ। यसले तपाईंलाई कलहरू व्यवस्थापन गर्न, इतिहास हेर्न, र Glyph एनिमेसनहरू प्रयोग गर्न अनुमति दिन्छ।';

  @override
  String get setAsDefaultButton => 'पूर्वनिर्धारित रूपमा सेट गर्नुहोस्';

  @override
  String get nothingDialerBrand => 'केहि छैन डायलर 1';

  @override
  String get favourites => 'मनपर्नेहरू';

  @override
  String get addFavourite => 'मनपर्ने थप्नुहोस्';

  @override
  String get favouritesDrawerHint =>
      'सम्पर्कहरू थप्न मेनु प्रयोग गर्नुहोस्। दराज बाहिर ट्याप गर्नुहोस् वा बन्द स्वाइप गर्नुहोस्। तिनीहरूको विवरणहरूबाट सम्पर्कलाई तारा गर्नुहोस्, वा भर्खरको कलमा लामो समयसम्म थिच्नुहोस्।';

  @override
  String get menu => 'मेनु';

  @override
  String get noFavouritesYet =>
      'अझै कुनै मनपर्ने छैन।\nएउटा थप्न मेनु खोल्नुहोस्, वा सम्पर्क तारा गर्नुहोस्।';

  @override
  String get contactsPermissionNeeded => 'सम्पर्क अनुमति आवश्यक छ';

  @override
  String get chooseContact => 'सम्पर्क छान्नुहोस्';

  @override
  String get noPhone => 'फोन छैन';

  @override
  String get pickNumber => 'नम्बर छान्नुहोस्';

  @override
  String get contactHasNoPhone => 'यो सम्पर्कमा कुनै फोन नम्बर छैन';

  @override
  String get blockNumber => 'ब्लक नम्बर';

  @override
  String get enterPhoneNumber => 'फोन नम्बर प्रविष्ट गर्नुहोस्';

  @override
  String unblockedDisplay(String display) {
    return 'अनब्लक गरिएको $display';
  }

  @override
  String get couldNotUnblockNumber => 'नम्बर अनब्लक गर्न सकिएन';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked अवरुद्ध • $matched मिल्यो';
  }

  @override
  String get contactsPermissionMissing =>
      'सम्पर्क अनुमति हराइरहेको छ। ठीक गर्न ट्याप गर्नुहोस्।';

  @override
  String get noBlockedNumbers => 'कुनै अवरुद्ध नम्बरहरू छैनन्';

  @override
  String get unknownContact => 'अज्ञात सम्पर्क';

  @override
  String get unblock => 'अनब्लक गर्नुहोस्';

  @override
  String get permissionNeeded => 'अनुमति चाहिन्छ';

  @override
  String get grantPhonePermission =>
      'आफ्नो कल इतिहास हेर्न फोन अनुमति दिनुहोस्।';

  @override
  String get grantContactsPermission =>
      'सम्पर्कहरूलाई तपाईंको ठेगाना पुस्तिका हेर्न अनुमति दिनुहोस्।';

  @override
  String get openSettings => 'सेटिङ्हरू खोल्नुहोस्';

  @override
  String get tryAgain => 'पुन: प्रयास गर्नुहोस्';

  @override
  String get couldNotLoadContacts => 'सम्पर्कहरू लोड गर्न सकिएन';

  @override
  String get contactsLoadError =>
      'तपाईंको ठेगाना पुस्तिका पढ्दा केही गडबड भयो।';

  @override
  String get noContactsFound => 'कुनै सम्पर्क भेटिएन';

  @override
  String get contactsEmptySubtitle =>
      'तपाईंको उपकरणबाट सम्पर्कहरू यहाँ देखा पर्नेछ।';

  @override
  String get searchContacts => 'सम्पर्कहरू खोज्नुहोस्...';

  @override
  String get searchRecentCalls => 'हालका कलहरू खोज्नुहोस्';

  @override
  String get fromContacts => 'सम्पर्कहरूबाट';

  @override
  String get recentsSearchSection => 'हालको खोज';

  @override
  String get recentsSearchShowContacts => 'खोजमा सम्पर्कहरू देखाउनुहोस्';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'भर्खरको खोजी गर्दा, कल इतिहास परिणामहरू तल तपाईंको ठेगाना पुस्तिकाबाट मिल्दो व्यक्तिहरू पनि देखाउनुहोस्।';

  @override
  String get voiceSearch => 'आवाज खोज';

  @override
  String get createNewContact => 'नयाँ सम्पर्क सिर्जना गर्नुहोस्';

  @override
  String callError(String error) {
    return 'कल त्रुटि: $error';
  }

  @override
  String get noRecentCalls => 'हालको कुनै कलहरू छैनन्';

  @override
  String get callHistoryEmpty => 'तपाईंको कल इतिहास यहाँ देखिने छ।';

  @override
  String get loadMore => 'थप लोड गर्नुहोस्';

  @override
  String get frequentlyContactedHeader => 'बारम्बार सम्पर्क';

  @override
  String get recentHistory => 'हालको इतिहास';

  @override
  String get noFavouritesRecentsHint =>
      'अझै कुनै मनपर्ने छैन। सम्पर्कलाई तारा बनाउनुहोस्, कल लामो समयसम्म थिच्नुहोस्, वा मनपर्ने ट्याब प्रयोग गर्नुहोस्।';

  @override
  String get copyNumber => 'नम्बर प्रतिलिपि गर्नुहोस्';

  @override
  String get editNumberBeforeCall => 'कल गर्नु अघि नम्बर सम्पादन गर्नुहोस्';

  @override
  String get removeFromFavourites => 'मनपर्नेहरूबाट हटाउनुहोस्';

  @override
  String get addToFavourites => 'मनपर्नेमा थप्नुहोस्';

  @override
  String get blockNumberQuestion => 'ब्लक नम्बर?';

  @override
  String blockNumberConfirm(String number) {
    return 'तपाईंले अब उप्रान्त $number बाट कल वा पाठहरू प्राप्त गर्नुहुने छैन।';
  }

  @override
  String get blocked => 'अवरुद्ध';

  @override
  String get couldNotBlock => 'अवरुद्ध हुन सकेन';

  @override
  String get contactNotOnDevice => 'सम्पर्क यस यन्त्रमा सुरक्षित गरिएको छैन';

  @override
  String get unblocked => 'अनब्लक गरियो';

  @override
  String get numberCopied => 'नम्बर प्रतिलिपि गरियो';

  @override
  String get showLess => 'कम देखाउनुहोस्';

  @override
  String get showAllTimes => 'सबै समय देखाउनुहोस्';

  @override
  String mostRecent(String time) {
    return 'सबैभन्दा हालको · $time';
  }

  @override
  String get videoCall => 'भिडियो कल';

  @override
  String get couldNotPlaceVideoCall => 'भिडियो कल गर्न सकिएन';

  @override
  String get message => 'सन्देश';

  @override
  String get couldNotOpenMessaging => 'मेसेजिङ एप खोल्न सकिएन';

  @override
  String get history => 'इतिहास';

  @override
  String get viewContact => 'सम्पर्क हेर्नुहोस्';

  @override
  String get addToContact => 'सम्पर्कमा थप्नुहोस्';

  @override
  String get callTypeMissed => 'छुटेको';

  @override
  String get callTypeRejected => 'अस्वीकार गरियो';

  @override
  String get callTypeIncoming => 'आगमन';

  @override
  String get callTypeOutgoing => 'बहिर्गमन';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'हिजो';

  @override
  String get justNow => 'भर्खरै';

  @override
  String minutesAgo(int count) {
    return '$count मिनेट पहिले';
  }

  @override
  String hoursAgo(int count) {
    return '$count घण्टा पहिले';
  }

  @override
  String get filterAll => 'सबै';

  @override
  String get filterMissed => 'छुटेको';

  @override
  String get filterContacts => 'सम्पर्कहरू';

  @override
  String get filterNonContacts => 'गैर-सम्पर्कहरू';

  @override
  String get iconUpdated =>
      'आइकन अपडेट गरियो। तपाईंको गृह स्क्रिन ताजा हुन केही समय लाग्न सक्छ।';

  @override
  String get iconSavedRelease =>
      'छनोट सुरक्षित गरियो। गृह स्क्रिन आइकन रिलीज बिल्डमा अपडेट हुन्छ।';

  @override
  String couldNotChangeIcon(String error) {
    return 'प्रतिमा परिवर्तन गर्न सकिएन: $error';
  }

  @override
  String get launcherClassicBlack => 'क्लासिक (कालो)';

  @override
  String get launcherLight => 'उज्यालो';

  @override
  String get launcherNothingRed => 'रातो केही छैन';

  @override
  String get launcherDarkGrey => 'गाढा खैरो';

  @override
  String get launcherCream => 'क्रीम';

  @override
  String get launcherRetroPhone => 'रेट्रो फोन';

  @override
  String get launcherRetroPhoneLight => 'रेट्रो फोन (लाइट)';

  @override
  String get voiceSearchUnavailable => 'यस यन्त्रमा आवाज खोजी उपलब्ध छैन।';

  @override
  String voiceSearchFailed(String error) {
    return 'आवाज खोज असफल भयो: $error';
  }

  @override
  String get customColor => 'अनुकूलन';

  @override
  String get selectColor => 'रंग चयन गर्नुहोस्';

  @override
  String get reset => 'रिसेट गर्नुहोस्';

  @override
  String get simPickerTitle => 'सिम छान्नुहोस्';

  @override
  String get simChooseForCall => 'यो कलको लागि SIM छान्नुहोस्';

  @override
  String get defaultSimAsk => 'हरेक पटक सोध्नुहोस्';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'सम्पर्क विवरण';

  @override
  String get call => 'कल गर्नुहोस्';

  @override
  String get share => 'सेयर गर्नुहोस्';

  @override
  String get favourite => 'मनपर्ने';

  @override
  String get unfavourite => 'मन नपर्ने';

  @override
  String get blockContact => 'सम्पर्क रोक्नुहोस्';

  @override
  String get unblockContact => 'सम्पर्क अनब्लक गर्नुहोस्';

  @override
  String get deleteContact => 'सम्पर्क मेटाउनुहोस्';

  @override
  String get phone => 'फोन';

  @override
  String get email => 'इमेल';

  @override
  String get ringtone => 'रिङ्गटोन';

  @override
  String get defaultRingtone => 'पूर्वनिर्धारित';

  @override
  String get simForContact => 'यस सम्पर्कको लागि सिम';

  @override
  String get callHistoryTitle => 'कल इतिहास';

  @override
  String get noCallsWithNumber => 'यो नम्बरमा कुनै कल छैन';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'ग्लिफ एनिमेसन';

  @override
  String get inCallGlyphAnimationStyle => 'इन-कल Glyph एनिमेसन';

  @override
  String get recordsOff => 'बन्द';

  @override
  String recordsCount(int count) {
    return '⟦०⟧';
  }

  @override
  String get pickDefaultSim => 'पूर्वनिर्धारित सिम';

  @override
  String get nothingPhoneOnly => 'फोन मात्र केही छैन';

  @override
  String get nothingPhoneOnlySubtitle => 'Glyph सुविधाहरूलाई नथिङ फोन चाहिन्छ';

  @override
  String get custom => 'अनुकूलन';

  @override
  String presetColorHex(String hex) {
    return 'प्रिसेट · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'आफू अनुकूल · $hex';
  }

  @override
  String get oneContact => '१ सम्पर्क';

  @override
  String upToContacts(int count) {
    return '$count सम्पर्कहरू सम्म';
  }

  @override
  String get answerButtonTapSubtitle => 'जवाफ दिन बटन ट्याप गर्नुहोस्';

  @override
  String get filterCalls => 'कलहरू फिल्टर गर्नुहोस्';

  @override
  String get filterTooltip => 'फिल्टर गर्नुहोस्';

  @override
  String get settingsTooltip => 'सेटिङहरू';

  @override
  String get filterAllSubtitle => 'सम्पूर्ण कल लग';

  @override
  String get filterMissedSubtitle => 'छुटेको र अस्वीकार गरियो';

  @override
  String get filterContactsSubtitle =>
      'कलहरू सुरक्षित गरिएको सम्पर्कसँग मेल खाए';

  @override
  String get filterNonContactsSubtitle =>
      'तपाईको ठेगाना पुस्तिकामा नम्बरहरू छैनन्';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'चलिरहेको कल: $detail';
  }

  @override
  String get defaultSimForCalls => 'कलहरूको लागि पूर्वनिर्धारित सिम';

  @override
  String get blinkInterval => 'पलक अन्तराल';

  @override
  String get close => 'बन्द गर्नुहोस्';

  @override
  String get frequentlyContactedInfoBody =>
      'तपाईंले रोज्नुभएको समय अवधिमा प्रत्येक नम्बरसँग कति आगमन, बहिर्गमन, छुटेका वा अस्वीकार गरिएका कलहरू थिए भन्ने आधारमा भर्खरैका ट्याबको शीर्षमा तपाईंको सबैभन्दा धेरै बोलाइएका फोन नम्बरहरू देखाउँदछ।\n\nरेकर्डहरूको संख्या: यसलाई बन्द गर्न ० मा सेट गर्नुहोस्। धेरै शीर्ष सम्पर्कहरू देखाउन 1-20 प्रयोग गर्नुहोस्।\n\nकम्तिमा एक सम्पर्क देखाइएको बेला मात्र समय अवधि लागू हुन्छ।';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count बत्तीहरू, ${ms}ms गति';
  }

  @override
  String get deleteContactQuestion => 'सम्पर्क मेटाउने हो?';

  @override
  String get deleteContactBody =>
      'यो सम्पर्क तपाईंको यन्त्रबाट स्थायी रूपमा मेटिनेछ।';

  @override
  String get blockContactQuestion => 'सम्पर्क ब्लक गर्ने हो?';

  @override
  String get unblockContactQuestion => 'सम्पर्क अनब्लक गर्ने हो?';

  @override
  String get blockContactBody =>
      'तपाईंले अब यस सम्पर्कबाट कल वा पाठहरू प्राप्त गर्नुहुने छैन।';

  @override
  String get unblockContactBody =>
      'तपाईंले यस सम्पर्कबाट कलहरू र पाठहरू प्राप्त गर्न सुरु गर्नुहुनेछ।';

  @override
  String get contactBlocked => 'सम्पर्क अवरुद्ध';

  @override
  String get contactUnblocked => 'सम्पर्क अनब्लक गरियो';

  @override
  String get noPhoneNumbersToBlock => 'ब्लक गर्न कुनै फोन नम्बर छैन';

  @override
  String get simSameAsSystem => 'प्रणाली जस्तै';

  @override
  String get simSameAsSystemSubtitle =>
      'सेटिङहरूमा पूर्वनिर्धारित SIM पछ्याउनुहोस्';

  @override
  String get simAskEveryTimeForContact =>
      'यो सम्पर्कको लागि सधैं SIM पिकर देखाउनुहोस्';

  @override
  String get ringtoneSetForContact =>
      'यस सम्पर्कको लागि विश्वव्यापी रूपमा रिङटोन सेट गरियो';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'रिङ्गटोन छनोट गर्न असफल: $error';
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
  String get noCallHistoryFound => 'कुनै कल इतिहास फेला परेन';

  @override
  String get speedDialVoicemail => 'स्पीड डायल: भ्वाइसमेल';

  @override
  String shareContactSubject(String name) {
    return 'सम्पर्क: $name';
  }

  @override
  String get contactInfo => 'सम्पर्क जानकारी';

  @override
  String get dontAskAgainSim => 'फेरि नसोध्नुहोस्';

  @override
  String get simDontAskAgainSubtitle =>
      'पूर्वनिर्धारित रूपमा यो SIM प्रयोग गर्नुहोस् (सेटिङहरूमा परिवर्तन गर्नुहोस्)';

  @override
  String get addContact => 'सम्पर्क थप्नुहोस्';

  @override
  String get createContact => 'सम्पर्क सिर्जना गर्नुहोस्';

  @override
  String get paste => 'टाँस्नुहोस्';

  @override
  String get clear => 'खाली गर्नुहोस्';

  @override
  String get returnToCall => 'कलमा फर्कनुहोस्';

  @override
  String get numberOfRecordsTitle => 'रेकर्ड संख्या';

  @override
  String get recordsPickerSubtitle =>
      'देखाउनका लागि कति पटक सम्पर्क गरिएका प्रविष्टिहरू (० = बन्द)';

  @override
  String get torchInfoTitle => 'टर्च झिम्क्यो';

  @override
  String get torchInfoBody =>
      'आगमन, बहिर्गमन, वा चलिरहेको कलहरूमा क्यामेरा फ्ल्यास झिम्काउँछ। ग्लिफ लाइटहरूबाट स्वतन्त्र।';

  @override
  String get glyphMapTitle => 'Glyph लेआउट';

  @override
  String get glyphMapBody =>
      'केहि छैन फोन 1 Glyph LED जोनहरू। बहिर्गमन र इन-कल एनिमेसनहरूले यी च्यानलहरू प्रयोग गर्छन्।';

  @override
  String get answerMethodTitle => 'उत्तर विधि';

  @override
  String get glyphOutgoingCallStyleTitle => 'बहिर्गमन कल शैली';

  @override
  String get glyphInCallAnimationTitle => 'ग्लिफ इन-कल एनिमेसन';

  @override
  String get themePickerTitle => 'विषयवस्तु';

  @override
  String get torchIncomingTitle => 'आगमन कल टर्च';

  @override
  String get torchOutgoingTitle => 'बाहिर जाने कल टर्च';

  @override
  String get torchOngoingTitle => 'चलिरहेको कल टर्च';

  @override
  String get timePeriodTitle => 'समय अवधि';

  @override
  String get ok => 'ठीक छ';

  @override
  String get confirmDeleteCall => 'इतिहासबाट यो कल मेट्ने हो?';

  @override
  String get confirmDeleteAllCalls => 'यो नम्बर भएका सबै कलहरू मेटाउने हो?';

  @override
  String get whatsapp => 'व्हाट्सएप';

  @override
  String get sendMessage => 'सन्देश पठाउनुहोस्';

  @override
  String get addToExistingContactAction => 'सम्पर्कमा थप्नुहोस्';

  @override
  String get mobileLabel => 'मोबाइल';

  @override
  String get callingSimForContactTitle => 'यो सम्पर्कको लागि SIM कल गर्दै';

  @override
  String get contactSettings => 'सम्पर्क सेटिङहरू';

  @override
  String get setCallingSim => 'कलिङ सिम सेट गर्नुहोस्';

  @override
  String get contactRingtone => 'सम्पर्क रिंगटोन';

  @override
  String get shareContact => 'सम्पर्क साझा गर्नुहोस्';

  @override
  String get blockNumbers => 'ब्लक नम्बरहरू';

  @override
  String get unblockNumbers => 'नम्बरहरू अनब्लक गर्नुहोस्';

  @override
  String get connectedApps => 'जडान गरिएका एपहरू';

  @override
  String get simNotSet => 'सेट गरिएको छैन';

  @override
  String get ringtoneDefault => 'पूर्वनिर्धारित';

  @override
  String get customRingtone => 'अनुकूलन';

  @override
  String get aboutSection => 'बारे';

  @override
  String get aboutFeedbackSection => 'बारेमा र प्रतिक्रिया';

  @override
  String get aboutDescription =>
      'केहि पनि डायलर खुला स्रोत हो। यदि तपाईं विकासकर्ता हुनुहुन्छ भने, तपाईंलाई कोड अन्वेषण गर्न र योगदान गर्न स्वागत छ।';

  @override
  String get aboutViewSource => 'GitHub मा हेर्नुहोस्';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'लिङ्क खोल्न सकेन';

  @override
  String get reviewSection => 'समीक्षा गर्नुहोस्';

  @override
  String get reviewDescription =>
      'नथिंग डायलरको मजा लिदै हुनुहुन्छ? Google Play मा तपाईंको मूल्याङ्कनले अरूलाई एप फेला पार्न मद्दत गर्छ।';

  @override
  String get reviewRateOnPlay => 'Google Play मा मूल्याङ्कन गर्नुहोस्';

  @override
  String get reviewRateOnPlaySubtitle => 'एप नछोडी मूल्याङ्कन छोड्नुहोस्';

  @override
  String get reviewCouldNotOpen => 'Google Play खोल्न सकिएन';

  @override
  String get breathSpeed => 'श्वास को गति';

  @override
  String get breathSpeedBlinkHint => 'तल्लो = पलक, उच्च = ढिलो सास';

  @override
  String get speedSliderHint => 'तल्लो = छिटो, उच्च = ढिलो';

  @override
  String get swatchDefault => 'पूर्वनिर्धारित';

  @override
  String get customAccentColorPicker => 'अनुकूलन उच्चारण रंग';

  @override
  String get customLightBackgroundPicker => 'अनुकूलन प्रकाश पृष्ठभूमि';

  @override
  String get customDarkBackgroundPicker => 'अनुकूलन गाढा पृष्ठभूमि';

  @override
  String get customCallBackgroundPicker => 'अनुकूलन कल पृष्ठभूमि';

  @override
  String get ongoingCallStyleTitle => 'चलिरहेको कल शैली';

  @override
  String get glyphMapUnavailable => 'Glyph नक्शा उपलब्ध छैन';

  @override
  String get animationDelayRange => 'एनिमेसन ढिलाइ (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'एनिमेसन ढिलाइ (0.1s - 10s)';

  @override
  String get inCallMute => 'मौन';

  @override
  String get inCallKeypad => 'कीप्याड';

  @override
  String get inCallSpeaker => 'वक्ता';

  @override
  String get inCallMore => 'थप';

  @override
  String get inCallBluetooth => 'ब्लुटुथ';

  @override
  String get inCallPhone => 'फोन';

  @override
  String get inCallAddCall => 'कल थप्नुहोस्';

  @override
  String get inCallChangeSim => 'सिम परिवर्तन गर्नुहोस्';

  @override
  String get inCallDecline => 'अस्वीकार गर्नुहोस्';

  @override
  String get inCallAnswer => 'जवाफ';

  @override
  String get inCallMessage => 'सन्देश';

  @override
  String get inCallCalling => 'कल गर्दै...';

  @override
  String get inCallIncoming => 'आगमन कल';

  @override
  String get inCallSelectSim => 'सिम चयन गर्नुहोस्...';

  @override
  String get inCallSwitchingSim => 'सिम बदल्दै...';

  @override
  String get inCallCallEnded => 'कल समाप्त भयो';

  @override
  String inCallCallingVia(String sim) {
    return '$sim मार्फत कल गर्दै';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '<b>$sim</b> मार्फत कल गर्दै';
  }

  @override
  String get inCallChooseSim => 'यो कलको लागि SIM छान्नुहोस्';

  @override
  String get inCallDragAnswerDecline =>
      'जवाफ दिन दायाँ तान्नुहोस् · अस्वीकार गर्न बायाँ तान्नुहोस्';

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
    return 'बाट <b>$sim</b> मार्फत कल गर्नुहोस्';
  }

  @override
  String get inCallCallFrom => 'बाट कल गर्नुहोस्';

  @override
  String get inCallUnknown => 'अज्ञात';

  @override
  String get selectContactRingtone => 'सम्पर्क रिङ्टोन चयन गर्नुहोस्';

  @override
  String get speakToSearchPrompt => 'खोज्न बोल्नुहोस्';

  @override
  String get phonePermissionRequired => 'फोन अनुमति आवश्यक छ';

  @override
  String callFailed(String error) {
    return 'कल असफल भयो: $error';
  }

  @override
  String get callPermissionDenied => 'कल अनुमति अस्वीकार गरियो';

  @override
  String get alreadyDefaultDialer =>
      'पहिले नै पूर्वनिर्धारित डायलरको रूपमा सेट गरिएको छ';

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
