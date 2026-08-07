// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get appTitle => 'ምንም ደዋይ የለም።';

  @override
  String get settings => 'ቅንብሮች';

  @override
  String get settingsSearchHint => 'የፍለጋ ቅንብሮች';

  @override
  String get settingsSearchNoResults => 'ምንም ቅንጅቶች አልተገኙም።';

  @override
  String get general => 'አጠቃላይ';

  @override
  String get theme => 'ጭብጥ';

  @override
  String get themeSystemDefault => 'የስርዓት ነባሪ';

  @override
  String get themeLight => 'ብርሃን';

  @override
  String get themeDark => 'ጨለማ';

  @override
  String get themeFollowSystem => 'የስርዓት ቅንብሮችን ይከተሉ';

  @override
  String get themeAlwaysLight => 'ሁልጊዜ ቀላል ገጽታ ይጠቀሙ';

  @override
  String get themeAlwaysDark => 'ሁልጊዜ ጨለማ ገጽታን ተጠቀም';

  @override
  String get language => 'ቋንቋ';

  @override
  String get languageDeviceDefault => 'የመሣሪያ ነባሪ';

  @override
  String get languagePickerTitle => 'ቋንቋ';

  @override
  String get languageSearchHint => 'ቋንቋዎችን ይፈልጉ';

  @override
  String get font => 'ቅርጸ-ቁምፊ';

  @override
  String get fontSystem => 'የስርዓት ነባሪ';

  @override
  String get fontNdot => 'ምንም (NDot)';

  @override
  String get fontSerif => 'ሮቦቶ ሰሪፍ';

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
      'ቅርጸ-ቁምፊ ማውረድ አልተሳካም። ግንኙነትዎን ይፈትሹ እና እንደገና ይሞክሩ።';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'ቅርጸ-ቁምፊ';

  @override
  String get fontPreviewSample => 'ምንም ደዋይ የለም።';

  @override
  String get fontAppWide => 'የመተግበሪያ ቅርጸ-ቁምፊ';

  @override
  String get fontApplyTo => 'ያመልክቱ';

  @override
  String get fontApplyEntireApp => 'መላው መተግበሪያ';

  @override
  String get fontApplyEntireAppSubtitle => 'በየቦታው ተመሳሳይ ቅርጸ-ቁምፊ፣ጥሪ ጨምሮ';

  @override
  String get fontApplyTitlesOnly => 'ርዕሶች እና ራስጌዎች';

  @override
  String get fontApplyTitlesOnlySubtitle => 'ትላልቅ ርዕሶች እና የክፍል ራስጌዎች ብቻ';

  @override
  String get fontApplyCustomize => 'አብጅ';

  @override
  String get fontApplyCustomizeSubtitle =>
      'በእያንዳንዱ ማያ ገጽ እና የጽሑፍ ዓይነት ቅርጸ-ቁምፊን ይምረጡ';

  @override
  String get fontCustomizeSection => 'በማያ ገጽ አብጅ';

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
  String get fontRolePageTitle => 'የገጽ ርዕስ';

  @override
  String get fontRoleSectionHeader => 'ክፍል ራስጌ';

  @override
  String get fontRolePrimary => 'ዋና ጽሑፍ';

  @override
  String get fontRoleSecondary => 'ሁለተኛ ደረጃ ጽሑፍ';

  @override
  String get fontRoleButton => 'አዝራሮች';

  @override
  String get fontRoleDialKey => 'መደወያ ቁልፎች';

  @override
  String get fontSurfaceRecents => 'የቅርብ ጊዜ';

  @override
  String get fontSurfaceContacts => 'እውቂያዎች';

  @override
  String get fontSurfaceSettings => 'ቅንብሮች';

  @override
  String get fontSurfaceDialpad => 'መደወያ';

  @override
  String get fontSurfaceShell => 'አሰሳ';

  @override
  String get fontSurfaceDefaultDialer => 'ነባሪ መደወያ ጥያቄ';

  @override
  String get fontSurfaceFavourites => 'ተወዳጆች';

  @override
  String get fontSurfaceBlocked => 'የታገዱ ቁጥሮች';

  @override
  String get fontSurfaceContactDetail => 'የእውቂያ ዝርዝሮች';

  @override
  String get fontSurfaceCallHistory => 'የጥሪ ታሪክ';

  @override
  String get fontSurfaceSheets => 'አንሶላ እና መራጮች';

  @override
  String get fontSurfaceInCall => 'የጥሪ ስክሪን';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font - ሙሉ መተግበሪያ';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font - ርዕሶች ብቻ';
  }

  @override
  String get fontSubtitleCustomize => 'በማያ ገጽ ብጁ';

  @override
  String get background => 'ዳራ';

  @override
  String get accent => 'ዘዬ';

  @override
  String get lightBackground => 'የብርሃን ዳራ';

  @override
  String get lightAccent => 'የብርሃን ዘዬ';

  @override
  String get darkBackground => 'ጨለማ ዳራ';

  @override
  String get darkAccent => 'ጥቁር ዘዬ';

  @override
  String get callBackground => 'ዳራ ይደውሉ';

  @override
  String get appIcon => 'የመተግበሪያ አዶ';

  @override
  String get answerMethod => 'የመልስ ዘዴ';

  @override
  String get answerSlide => 'ለመመለስ ያንሸራትቱ';

  @override
  String get answerSlideSubtitle => 'እንደ ጎግል ስልክ ባሉ አሞሌው ላይ ወደ ግራ/ቀኝ ያንሸራትቱ';

  @override
  String get answerButton => 'አዝራር መታ ያድርጉ';

  @override
  String get answerButtonSubtitle => 'መልስ ንካ ወይም አዝራሮችን ውድቅ አድርግ';

  @override
  String get answerHuawei => 'Huawei style';

  @override
  String get answerHuaweiSubtitle => 'ለመመለስ ክበቡን ወደ አረንጓዴው ስልክ ይጎትቱት።';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei - ወደ አረንጓዴ / ቀይ ይጎትቱ';

  @override
  String get calling => 'በመደወል ላይ';

  @override
  String get defaultSim => 'ነባሪ ሲም';

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
  String get askEveryTime => 'ሁል ጊዜ ይጠይቁ';

  @override
  String get askEveryTimeSubtitle => 'ከእያንዳንዱ ጥሪ በፊት ሲም መራጭን አሳይ';

  @override
  String simSlot(int slot) {
    return 'ሲም $slot';
  }

  @override
  String get noSimCardsFound => 'ምንም ሲም ካርዶች አልተገኙም።';

  @override
  String couldNotLoadSims(String error) {
    return 'ሲም መጫን አልተቻለም፡ $error';
  }

  @override
  String get allFavourites => 'ሁሉም ተወዳጆች';

  @override
  String get allFavouritesSubtitle => 'እንደገና ይዘዙ፣ ያስወግዱ እና ከእውቂያዎች ያክሉ';

  @override
  String get blockedNumbers => 'የታገዱ ቁጥሮች';

  @override
  String get blockedNumbersSubtitle => 'ቁጥሮችን ይመልከቱ እና አያግዱ';

  @override
  String get soundsAndVibration => 'ድምፆች እና ንዝረት';

  @override
  String get soundsAndVibrationSubtitle => 'የስልክ ጥሪ ድምፅ፣ ንዝረት፣ የመደወያ ፓድ ድምፆች';

  @override
  String couldNotOpenSettings(String error) {
    return 'ቅንብሮችን መክፈት አልተቻለም፡ $error';
  }

  @override
  String get frequentlyContacted => 'በተደጋጋሚ የሚገናኙት።';

  @override
  String get numberOfRecords => 'የመዝገቦች ብዛት';

  @override
  String get timePeriod => 'የጊዜ ወቅት';

  @override
  String get periodLast24Hours => 'ያለፉት 24 ሰዓታት';

  @override
  String get periodLast24HoursSubtitle => 'ካለፈው ቀን የመጡ ጥሪዎች';

  @override
  String get periodLast7Days => 'ያለፉት 7 ቀናት';

  @override
  String get periodLast7DaysSubtitle => 'ካለፈው ሳምንት የመጡ ጥሪዎች';

  @override
  String get periodLast30Days => 'ያለፉት 30 ቀናት';

  @override
  String get periodLast30DaysSubtitle => 'ካለፈው ወር የመጡ ጥሪዎች';

  @override
  String get periodLast12Months => 'ያለፉት 12 ወራት';

  @override
  String get periodLast12MonthsSubtitle => 'ካለፈው ዓመት የመጡ ጥሪዎች';

  @override
  String get periodAllTime => 'ሁል ጊዜ';

  @override
  String get periodAllTimeSubtitle => 'አጠቃላይ የጥሪ ታሪክ';

  @override
  String get frequentMaxOff => 'ጠፍቷል';

  @override
  String frequentMaxCount(int count) {
    return '$count እውቂያዎች';
  }

  @override
  String get torchBlink => 'የችቦ ብልጭታ';

  @override
  String get torchIncomingCall => 'ገቢ ጥሪ ችቦ';

  @override
  String get torchOutgoingCall => 'ወጪ ጥሪ ችቦ';

  @override
  String get torchOngoingCall => 'ቀጣይ የጥሪ ችቦ';

  @override
  String get torchIncomingInterval => 'ገቢ ብልጭ ድርግም የሚል ክፍተት';

  @override
  String get torchOutgoingInterval => 'የሚወጣ ብልጭ ድርግም የሚል ክፍተት';

  @override
  String get torchOngoingInterval => 'በመካሄድ ላይ ያለ ብልጭታ ክፍተት';

  @override
  String get torchOff => 'ጠፍቷል';

  @override
  String get torchOffIncomingSubtitle => 'በሚደወልበት ጊዜ ችቦ የለም።';

  @override
  String get torchOffOutgoingSubtitle => 'በመደወል ላይ ምንም ችቦ የለም።';

  @override
  String get torchOffOngoingSubtitle => 'በንቃት ጥሪ ወቅት ምንም ችቦ የለም።';

  @override
  String get torchFixedInterval => 'ቋሚ ክፍተት';

  @override
  String get torchFixedIntervalSubtitle => 'በተወሰነ ፍጥነት ብልጭ ድርግም';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds ብልጭ ድርግም የሚል';
  }

  @override
  String get flashlightUnavailable => 'የእጅ ባትሪ በዚህ መሳሪያ ላይ አይገኝም';

  @override
  String get glyphLights => 'ግሊፍ መብራቶች';

  @override
  String get glyphCallingAnimation => 'የ Glyph ጥሪ አኒሜሽን';

  @override
  String get glyphOngoingAnimation => 'ጂሊፍ በመካሄድ ላይ ያለ የጥሪ እነማ';

  @override
  String get glyphNone => 'ምንም';

  @override
  String get glyphNoneOutgoingSubtitle => 'ለወጪ ጥሪዎች የ Glyph መብራቶችን ያሰናክሉ።';

  @override
  String get glyphNoneInCallSubtitle => 'በጥሪ ላይ በንቃት እያለ የ Glyph መብራቶችን ያሰናክሉ።';

  @override
  String get glyphBreathProgress => 'እስትንፋስ እና እድገት';

  @override
  String get glyphBreathProgressSubtitle => 'መስመሩ ከ65 ሴ በላይ ሲሞላ መብራቶች ይተነፍሳሉ';

  @override
  String get glyphAccumulate => 'ሰብስብ';

  @override
  String get glyphAccumulateSubtitle => 'በብርሃን C1-C4 ላይ እነማዎችን ማከማቸት';

  @override
  String get glyphSingle => 'ነጠላ';

  @override
  String get glyphSingleSubtitle => 'በC1-C4 ላይ የሚንቀሳቀስ ነጠላ ብርሃን';

  @override
  String get glyphBreath => 'እስትንፋስ';

  @override
  String get glyphBreathSubtitle => 'መብራቶችን እና ፍጥነትን ይምረጡ';

  @override
  String get glyphSteady => 'የተረጋጋ';

  @override
  String get glyphSteadySubtitle => 'የተመረጡ መብራቶች በርተዋል';

  @override
  String get breathSettings => 'የመተንፈስ ቅንጅቶች';

  @override
  String get activeLights => 'ንቁ መብራቶች';

  @override
  String lightsCount(int count) {
    return '$count መብራቶች';
  }

  @override
  String get speedSettings => 'የፍጥነት ቅንብሮች';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms መዘግየት';
  }

  @override
  String get durationAndSpeed => 'ቆይታ እና ፍጥነት';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '$durationየቆይታ ጊዜ፣ ${interval}ms ክፍተት';
  }

  @override
  String get cancel => 'ሰርዝ';

  @override
  String get done => 'ተከናውኗል';

  @override
  String get save => 'አስቀምጥ';

  @override
  String get block => 'አግድ';

  @override
  String get delete => 'ሰርዝ';

  @override
  String get recents => 'የቅርብ ጊዜ';

  @override
  String get contacts => 'እውቂያዎች';

  @override
  String get hideFavouritesOnRecents => 'በቅርብ ጊዜ ውስጥ ተወዳጆችን ደብቅ';

  @override
  String get showFavouritesOnRecents => 'በቅርብ ጊዜ ውስጥ ተወዳጆችን አሳይ';

  @override
  String get ongoingCall => 'ቀጣይነት ያለው ጥሪ';

  @override
  String get setAsDefaultTitle => 'አስ አዘጋጅ\nነባሪ';

  @override
  String get setAsDefaultBody =>
      'ምንም መደወያ ለመጠቀም እንደ ነባሪ የስልክ መተግበሪያዎ መቀናበር አለበት። ይህ ጥሪዎችን እንዲያስተዳድሩ፣ ታሪክን እንዲመለከቱ እና የGlyph እነማዎችን እንዲጠቀሙ ይፈቅድልዎታል።';

  @override
  String get setAsDefaultButton => 'እንደ ነባሪ አዘጋጅ';

  @override
  String get nothingDialerBrand => 'ምንም ደዋይ 1';

  @override
  String get favourites => 'ተወዳጆች';

  @override
  String get addFavourite => 'ተወዳጅ ያክሉ';

  @override
  String get favouritesDrawerHint =>
      'እውቂያዎችን ለመጨመር ምናሌውን ይጠቀሙ። ከመሳቢያው ውጭ ይንኩ ወይም ተዘግቶ ይጥረጉ። እውቂያውን ከዝርዝራቸው ላይ ኮከብ አድርግ ወይም በቅርብ ጊዜ ውስጥ ጥሪን በረጅሙ ተጫን።';

  @override
  String get menu => 'ምናሌ';

  @override
  String get noFavouritesYet =>
      'እስካሁን ምንም ተወዳጆች የሉም።\nአንድ ለማከል ምናሌውን ይክፈቱ ወይም ዕውቂያ ላይ ኮከብ ያድርጉ።';

  @override
  String get contactsPermissionNeeded => 'የእውቂያዎች ፈቃድ ያስፈልጋል';

  @override
  String get chooseContact => 'እውቂያ ይምረጡ';

  @override
  String get noPhone => 'ስልክ የለም።';

  @override
  String get pickNumber => 'ቁጥር ይምረጡ';

  @override
  String get contactHasNoPhone => 'ይህ እውቂያ ስልክ ቁጥር የለውም';

  @override
  String get blockNumber => 'አግድ ቁጥር';

  @override
  String get enterPhoneNumber => 'ስልክ ቁጥር አስገባ';

  @override
  String unblockedDisplay(String display) {
    return 'አልታገደም $display';
  }

  @override
  String get couldNotUnblockNumber => 'የቁጥሩን እገዳ ማንሳት አልተቻለም';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked ታግዷል • $matched ተዛማጅ';
  }

  @override
  String get contactsPermissionMissing => 'የእውቂያዎች ፍቃድ ይጎድላል። ለመጠገን መታ ያድርጉ።';

  @override
  String get noBlockedNumbers => 'ምንም የታገዱ ቁጥሮች የሉም';

  @override
  String get unknownContact => 'ያልታወቀ ግንኙነት';

  @override
  String get unblock => 'እገዳ አንሳ';

  @override
  String get permissionNeeded => 'ፍቃድ ያስፈልጋል';

  @override
  String get grantPhonePermission => 'የጥሪ ታሪክዎን ለማየት የስልኩን ፍቃድ ይስጡ።';

  @override
  String get grantContactsPermission => 'የአድራሻ ደብተርዎን እንዲያዩ ለእውቂያዎች ፈቃድ ይስጡ።';

  @override
  String get openSettings => 'ቅንብሮችን ይክፈቱ';

  @override
  String get tryAgain => 'እንደገና ይሞክሩ';

  @override
  String get couldNotLoadContacts => 'እውቂያዎችን መጫን አልተቻለም';

  @override
  String get contactsLoadError => 'የአድራሻ ደብተርህን በማንበብ የሆነ ችግር ተፈጥሯል።';

  @override
  String get noContactsFound => 'ምንም ዕውቂያዎች አልተገኙም።';

  @override
  String get contactsEmptySubtitle => 'ከመሳሪያዎ የሚመጡ እውቂያዎች እዚህ ይታያሉ።';

  @override
  String get searchContacts => 'እውቂያዎችን ፈልግ…';

  @override
  String get searchRecentCalls => 'የቅርብ ጊዜ ጥሪዎችን ይፈልጉ';

  @override
  String get fromContacts => 'ከእውቂያዎች';

  @override
  String get recentsSearchSection => 'የቅርብ ጊዜ ፍለጋ';

  @override
  String get recentsSearchShowContacts => 'በፍለጋ ውስጥ እውቂያዎችን አሳይ';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'የቅርብ ጊዜዎችን በሚፈልጉበት ጊዜ፣ እንዲሁም ተዛማጅ ሰዎችን ከአድራሻ ደብተርዎ ከጥሪ ታሪክ ውጤቶች በታች ያሳዩ።';

  @override
  String get voiceSearch => 'የድምጽ ፍለጋ';

  @override
  String get createNewContact => 'አዲስ ዕውቂያ ይፍጠሩ';

  @override
  String callError(String error) {
    return 'የጥሪ ስህተት፡ $error';
  }

  @override
  String get noRecentCalls => 'ምንም የቅርብ ጊዜ ጥሪዎች የሉም';

  @override
  String get callHistoryEmpty => 'የጥሪ ታሪክዎ እዚህ ይታያል።';

  @override
  String get loadMore => 'ተጨማሪ ጫን';

  @override
  String get frequentlyContactedHeader => 'በተደጋጋሚ ተገናኝቷል።';

  @override
  String get recentHistory => 'የቅርብ ጊዜ ታሪክ';

  @override
  String get noFavouritesRecentsHint =>
      'እስካሁን ምንም ተወዳጆች የሉም። እውቂያን ኮከብ አድርግ፣ ጥሪን በረጅሙ ተጫን ወይም ተወዳጆች ትሩን ተጠቀም።';

  @override
  String get copyNumber => 'ቁጥር ቅዳ';

  @override
  String get editNumberBeforeCall => 'ከመደወልዎ በፊት ቁጥሩን ያርትዑ';

  @override
  String get removeFromFavourites => 'ከተወዳጅ አስወግድ';

  @override
  String get addToFavourites => 'ወደ ተወዳጆች ያክሉ';

  @override
  String get blockNumberQuestion => 'ቁጥር ታግዷል?';

  @override
  String blockNumberConfirm(String number) {
    return 'ከአሁን በኋላ ከ$number ጥሪዎች ወይም ጽሑፎች አይደርሱዎትም።';
  }

  @override
  String get blocked => 'ታግዷል';

  @override
  String get couldNotBlock => 'ማገድ አልተቻለም';

  @override
  String get contactNotOnDevice => 'እውቂያ በዚህ መሳሪያ ላይ አልተቀመጠም።';

  @override
  String get unblocked => 'ታግዷል';

  @override
  String get numberCopied => 'ቁጥር ተቀድቷል።';

  @override
  String get showLess => 'ያነሰ አሳይ';

  @override
  String get showAllTimes => 'ሁሉንም ጊዜ አሳይ';

  @override
  String mostRecent(String time) {
    return 'በጣም የቅርብ ጊዜ · $time';
  }

  @override
  String get videoCall => 'የቪዲዮ ጥሪ';

  @override
  String get couldNotPlaceVideoCall => 'የቪዲዮ ጥሪ ማድረግ አልተቻለም';

  @override
  String get message => 'መልእክት';

  @override
  String get couldNotOpenMessaging => 'የመልእክት መላላኪያ መተግበሪያን መክፈት አልተቻለም';

  @override
  String get history => 'ታሪክ';

  @override
  String get viewContact => 'ዕውቂያ ይመልከቱ';

  @override
  String get addToContact => 'ወደ እውቂያ ያክሉ';

  @override
  String get callTypeMissed => 'አምልጦታል።';

  @override
  String get callTypeRejected => 'ውድቅ ተደርጓል';

  @override
  String get callTypeIncoming => 'ገቢ';

  @override
  String get callTypeOutgoing => 'ወጪ';

  @override
  String get today => 'ዛሬ';

  @override
  String get yesterday => 'ትናንት';

  @override
  String get justNow => 'ልክ አሁን';

  @override
  String minutesAgo(int count) {
    return '$count ደቂቃ በፊት';
  }

  @override
  String hoursAgo(int count) {
    return '$count ከሰአት በፊት';
  }

  @override
  String get filterAll => 'ሁሉም';

  @override
  String get filterMissed => 'አምልጦታል።';

  @override
  String get filterContacts => 'እውቂያዎች';

  @override
  String get filterNonContacts => 'ዕውቂያዎች ያልሆኑ';

  @override
  String get iconUpdated => 'አዶ ተዘምኗል። የመነሻ ማያ ገጽዎ ለማደስ ትንሽ ጊዜ ሊወስድ ይችላል።';

  @override
  String get iconSavedRelease =>
      'ምርጫ ተቀምጧል። የመነሻ ስክሪን አዶ በመልቀቂያ ግንባታ ላይ ይዘምናል።';

  @override
  String couldNotChangeIcon(String error) {
    return 'አዶ መቀየር አልተቻለም፡ $error';
  }

  @override
  String get launcherClassicBlack => 'ክላሲክ (ጥቁር)';

  @override
  String get launcherLight => 'ብርሃን';

  @override
  String get launcherNothingRed => 'ምንም ቀይ የለም';

  @override
  String get launcherDarkGrey => 'ጥቁር ግራጫ';

  @override
  String get launcherCream => 'ክሬም';

  @override
  String get launcherRetroPhone => 'ሬትሮ ስልክ';

  @override
  String get launcherRetroPhoneLight => 'ሬትሮ ስልክ (ብርሃን)';

  @override
  String get voiceSearchUnavailable => 'የድምጽ ፍለጋ በዚህ መሳሪያ ላይ አይገኝም።';

  @override
  String voiceSearchFailed(String error) {
    return 'የድምጽ ፍለጋ አልተሳካም፦ $error';
  }

  @override
  String get customColor => 'ብጁ';

  @override
  String get selectColor => 'ቀለም ይምረጡ';

  @override
  String get reset => 'ዳግም አስጀምር';

  @override
  String get simPickerTitle => 'ሲም ይምረጡ';

  @override
  String get simChooseForCall => 'ለዚህ ጥሪ ሲም ይምረጡ';

  @override
  String get defaultSimAsk => 'ሁል ጊዜ ይጠይቁ';

  @override
  String defaultSimFixed(int slot) {
    return 'ሲም $slot';
  }

  @override
  String get contactDetails => 'የእውቂያ ዝርዝሮች';

  @override
  String get call => 'ይደውሉ';

  @override
  String get share => 'አጋራ';

  @override
  String get favourite => 'ተወዳጅ';

  @override
  String get unfavourite => 'ያልተወደደ';

  @override
  String get blockContact => 'እውቂያን አግድ';

  @override
  String get unblockContact => 'የእውቂያ እገዳ አንሳ';

  @override
  String get deleteContact => 'እውቂያን ሰርዝ';

  @override
  String get phone => 'ስልክ';

  @override
  String get email => 'ኢሜይል';

  @override
  String get ringtone => 'የስልክ ጥሪ ድምፅ';

  @override
  String get defaultRingtone => 'ነባሪ';

  @override
  String get simForContact => 'ለዚህ እውቂያ ሲም';

  @override
  String get callHistoryTitle => 'የጥሪ ታሪክ';

  @override
  String get noCallsWithNumber => 'በዚህ ቁጥር ምንም ጥሪዎች የሉም';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '$secondsሴ';
  }

  @override
  String get glyphAnimationStyle => 'ግሊፍ እነማ';

  @override
  String get inCallGlyphAnimationStyle => 'የጥሪ Glyph እነማ';

  @override
  String get recordsOff => 'ጠፍቷል';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'ነባሪ ሲም';

  @override
  String get nothingPhoneOnly => 'ምንም ስልክ ብቻ የለም።';

  @override
  String get nothingPhoneOnlySubtitle => 'የጂሊፍ ባህሪያት ምንም ስልክ አይፈልጉም።';

  @override
  String get custom => 'ብጁ';

  @override
  String presetColorHex(String hex) {
    return 'ቅድመ ዝግጅት · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'ብጁ · $hex';
  }

  @override
  String get oneContact => '1 ግንኙነት';

  @override
  String upToContacts(int count) {
    return 'እስከ $count እውቂያዎች';
  }

  @override
  String get answerButtonTapSubtitle => 'ለመመለስ ንካ ንካ';

  @override
  String get filterCalls => 'ጥሪዎችን አጣራ';

  @override
  String get filterTooltip => 'አጣራ';

  @override
  String get settingsTooltip => 'ቅንብሮች';

  @override
  String get filterAllSubtitle => 'ሙሉ የጥሪ ምዝግብ ማስታወሻ';

  @override
  String get filterMissedSubtitle => 'አምልጦታል እና ውድቅ ተደርጓል';

  @override
  String get filterContactsSubtitle => 'ጥሪዎች ከተቀመጠ ዕውቂያ ጋር ይዛመዳሉ';

  @override
  String get filterNonContactsSubtitle => 'ቁጥሮች በአድራሻ ደብተርዎ ውስጥ የሉም';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'ቀጣይነት ያለው ጥሪ፡ $detail';
  }

  @override
  String get defaultSimForCalls => 'ለጥሪዎች ነባሪ ሲም';

  @override
  String get blinkInterval => 'ብልጭ ድርግም የሚሉ ክፍተቶች';

  @override
  String get close => 'ገጠመ';

  @override
  String get frequentlyContactedInfoBody =>
      'በእያንዳንዱ ቁጥር በመረጡት የጊዜ ገደብ ውስጥ ምን ያህል ገቢ፣ ወጪ፣ ያመለጡ ወይም ውድቅ የተደረጉ ጥሪዎች ላይ በመመስረት በጣም የሚባሉትን ስልክ ቁጥሮችዎን በቅርብ ጊዜዎች ትር አናት ላይ ያሳያል።\n\nየመዝገቦች ብዛት፡ ይህንን ለማጥፋት ወደ 0 ተቀናብሯል። ብዙ ከፍተኛ እውቂያዎችን ለማሳየት 1-20 ይጠቀሙ።\n\nየጊዜ ቆይታ የሚመለከተው ቢያንስ አንድ ዕውቂያ ሲታይ ብቻ ነው።';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count መብራቶች፣ ${ms}m ፍጥነት';
  }

  @override
  String get deleteContactQuestion => 'እውቂያ ይሰረዝ?';

  @override
  String get deleteContactBody => 'ይህ እውቂያ ከመሣሪያዎ እስከመጨረሻው ይሰረዛል።';

  @override
  String get blockContactQuestion => 'እውቂያ ይታገድ?';

  @override
  String get unblockContactQuestion => 'የእውቂያ እገዳ ይነሳ?';

  @override
  String get blockContactBody => 'ከአሁን በኋላ ከዚህ እውቂያ ጥሪዎች ወይም ጽሑፎች አይደርሱዎትም።';

  @override
  String get unblockContactBody => 'ከዚህ እውቂያ ጥሪዎችን እና ፅሁፎችን መቀበል ትጀምራለህ።';

  @override
  String get contactBlocked => 'እውቂያ ታግዷል';

  @override
  String get contactUnblocked => 'የእውቂያ እገዳ ተቋርጧል';

  @override
  String get noPhoneNumbersToBlock => 'ምንም የሚታገድ ስልክ ቁጥሮች የሉም';

  @override
  String get simSameAsSystem => 'ልክ እንደ ስርዓት';

  @override
  String get simSameAsSystemSubtitle => 'በቅንብሮች ውስጥ ነባሪ ሲም ይከተላል';

  @override
  String get simAskEveryTimeForContact => 'ለዚህ እውቂያ ሁልጊዜ ሲም መራጭ አሳይ';

  @override
  String get ringtoneSetForContact => 'ለዚህ እውቂያ የደወል ቅላጼ በአለምአቀፍ ደረጃ ተቀናብሯል።';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'የስልክ ጥሪ ድምፅ መምረጥ አልተሳካም፦ $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'ስህተት: $error';
  }

  @override
  String get noCallHistoryFound => 'ምንም የጥሪ ታሪክ አልተገኘም።';

  @override
  String get speedDialVoicemail => 'የፍጥነት መደወያ፡ የድምጽ መልዕክት';

  @override
  String shareContactSubject(String name) {
    return 'ያግኙን: $name';
  }

  @override
  String get contactInfo => 'የእውቂያ መረጃ';

  @override
  String get dontAskAgainSim => 'እንደገና አትጠይቅ';

  @override
  String get simDontAskAgainSubtitle =>
      'ይህንን ሲም እንደ ነባሪ ይጠቀሙ (በቅንብሮች ውስጥ ይቀይሩ)';

  @override
  String get addContact => 'እውቂያ ያክሉ';

  @override
  String get createContact => 'ዕውቂያ ፍጠር';

  @override
  String get paste => 'ለጥፍ';

  @override
  String get clear => 'ግልጽ';

  @override
  String get returnToCall => 'ወደ ጥሪ ተመለስ';

  @override
  String get numberOfRecordsTitle => 'የመዝገቦች ብዛት';

  @override
  String get recordsPickerSubtitle =>
      'ምን ያህል በተደጋጋሚ የተገናኙ ግቤቶችን ለማሳየት (0 = ጠፍቷል)';

  @override
  String get torchInfoTitle => 'ችቦ ብልጭ ድርግም ይላል።';

  @override
  String get torchInfoBody =>
      'በመጪ፣ ወጪ ወይም በመካሄድ ላይ ባሉ ጥሪዎች ወቅት የካሜራውን ብልጭታ ብልጭ ድርግም ይላል። ከ Glyph መብራቶች ገለልተኛ።';

  @override
  String get glyphMapTitle => 'ግሊፍ አቀማመጥ';

  @override
  String get glyphMapBody =>
      'ምንም ስልክ 1 Glyph LED ዞኖች. ወጪ እና የጥሪ እነማዎች እነዚህን ቻናሎች ይጠቀማሉ።';

  @override
  String get answerMethodTitle => 'የመልስ ዘዴ';

  @override
  String get glyphOutgoingCallStyleTitle => 'የወጪ ጥሪ ስልት';

  @override
  String get glyphInCallAnimationTitle => 'ጂሊፍ የጥሪ አኒሜሽን';

  @override
  String get themePickerTitle => 'ጭብጥ';

  @override
  String get torchIncomingTitle => 'ገቢ ጥሪ ችቦ';

  @override
  String get torchOutgoingTitle => 'ወጪ ጥሪ ችቦ';

  @override
  String get torchOngoingTitle => 'ቀጣይ የጥሪ ችቦ';

  @override
  String get timePeriodTitle => 'የጊዜ ወቅት';

  @override
  String get ok => 'እሺ';

  @override
  String get confirmDeleteCall => 'ይህ ጥሪ ከታሪክ ይሰረዝ?';

  @override
  String get confirmDeleteAllCalls => 'በዚህ ቁጥር ሁሉም ጥሪዎች ይሰረዙ?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'መልእክት ላክ';

  @override
  String get addToExistingContactAction => 'ወደ ዕውቂያ ያክሉ';

  @override
  String get mobileLabel => 'ሞባይል';

  @override
  String get callingSimForContactTitle => 'ለዚህ እውቂያ ሲም በመደወል ላይ';

  @override
  String get contactSettings => 'የእውቂያ ቅንብሮች';

  @override
  String get setCallingSim => 'ጥሪ ሲም አዘጋጅ';

  @override
  String get contactRingtone => 'የስልክ ጥሪ ድምፅ ያግኙ';

  @override
  String get shareContact => 'እውቂያ አጋራ';

  @override
  String get blockNumbers => 'አግድ ቁጥሮች';

  @override
  String get unblockNumbers => 'የቁጥሮችን እገዳ አንሳ';

  @override
  String get connectedApps => 'የተገናኙ መተግበሪያዎች';

  @override
  String get simNotSet => 'አልተዘጋጀም።';

  @override
  String get ringtoneDefault => 'ነባሪ';

  @override
  String get customRingtone => 'ብጁ';

  @override
  String get aboutSection => 'ስለ';

  @override
  String get aboutFeedbackSection => 'ስለ & ግብረመልስ';

  @override
  String get aboutDescription =>
      'ምንም ደዋይ ክፍት ምንጭ አይደለም። ገንቢ ከሆንክ ኮዱን ለማሰስ እና ለማበርከት እንኳን ደህና መጣህ።';

  @override
  String get aboutViewSource => 'በ GitHub ላይ ይመልከቱ';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/ምንም-መደወያ-1';

  @override
  String get aboutCouldNotOpenLink => 'አገናኝ መክፈት አልተቻለም';

  @override
  String get reviewSection => 'ግምገማ';

  @override
  String get reviewDescription =>
      'በምንም መደወያ እየተዝናኑ ነው? በGoogle Play ላይ ያለዎት ደረጃ ሌሎች መተግበሪያውን እንዲያገኙ ያግዛል።';

  @override
  String get reviewRateOnPlay => 'Google Play ላይ ደረጃ ይስጡ';

  @override
  String get reviewRateOnPlaySubtitle => 'ከመተግበሪያው ሳይወጡ ደረጃ ይስጡ';

  @override
  String get reviewCouldNotOpen => 'Google Playን መክፈት አልተቻለም';

  @override
  String get breathSpeed => 'የመተንፈስ ፍጥነት';

  @override
  String get breathSpeedBlinkHint => 'ዝቅተኛ = ብልጭ ድርግም ፣ ከፍተኛ = የዘገየ እስትንፋስ';

  @override
  String get speedSliderHint => 'ዝቅተኛ = ፈጣን ፣ ከፍተኛ = ቀርፋፋ';

  @override
  String get swatchDefault => 'ነባሪ';

  @override
  String get customAccentColorPicker => 'ብጁ የአነጋገር ቀለም';

  @override
  String get customLightBackgroundPicker => 'ብጁ የብርሃን ዳራ';

  @override
  String get customDarkBackgroundPicker => 'ብጁ ጨለማ ዳራ';

  @override
  String get customCallBackgroundPicker => 'ብጁ የጥሪ ዳራ';

  @override
  String get ongoingCallStyleTitle => 'ቀጣይ የጥሪ ዘይቤ';

  @override
  String get glyphMapUnavailable => 'ግሊፍ ካርታ የለም።';

  @override
  String get animationDelayRange => 'የአኒሜሽን መዘግየት (1ሰ - 10 ሰ)';

  @override
  String get animationDelayRangeSingle => 'የአኒሜሽን መዘግየት (0.1s - 10s)';

  @override
  String get inCallMute => 'ድምጸ-ከል አድርግ';

  @override
  String get inCallKeypad => 'የቁልፍ ሰሌዳ';

  @override
  String get inCallSpeaker => 'ተናጋሪ';

  @override
  String get inCallMore => 'ተጨማሪ';

  @override
  String get inCallBluetooth => 'ብሉቱዝ';

  @override
  String get inCallPhone => 'ስልክ';

  @override
  String get inCallAddCall => 'ጥሪ ጨምር';

  @override
  String get inCallChangeSim => 'ሲም ቀይር';

  @override
  String get inCallDecline => 'አትቀበል';

  @override
  String get inCallAnswer => 'መልስ';

  @override
  String get inCallMessage => 'መልእክት';

  @override
  String get inCallCalling => 'በመደወል ላይ…';

  @override
  String get inCallIncoming => 'ገቢ ጥሪ';

  @override
  String get inCallSelectSim => 'ሲም ይምረጡ…';

  @override
  String get inCallSwitchingSim => 'ሲም በመቀየር ላይ…';

  @override
  String get inCallCallEnded => 'ጥሪው አልቋል';

  @override
  String inCallCallingVia(String sim) {
    return 'በ $sim በመደወል ላይ';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'በ <b>$sim</b> በመደወል ላይ';
  }

  @override
  String get inCallChooseSim => 'ለዚህ ጥሪ ሲም ይምረጡ';

  @override
  String get inCallDragAnswerDecline => 'ለመመለስ ወደ ቀኝ ጎትት · ላለመቀበል ወደ ግራ ጎትት።';

  @override
  String inCallMobileNumber(String number) {
    return 'ሞባይል $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (የአሁኑ)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'በ <b>$sim</b> ከ ይደውሉ';
  }

  @override
  String get inCallCallFrom => 'ከ ይደውሉ';

  @override
  String get inCallUnknown => 'ያልታወቀ';

  @override
  String get selectContactRingtone => 'የእውቂያ የስልክ ጥሪ ድምፅ ይምረጡ';

  @override
  String get speakToSearchPrompt => 'ለመፈለግ ይናገሩ';

  @override
  String get phonePermissionRequired => 'የስልክ ፍቃድ ያስፈልጋል';

  @override
  String callFailed(String error) {
    return 'ጥሪ አልተሳካም፦ $error';
  }

  @override
  String get callPermissionDenied => 'የጥሪ ፍቃድ ተከልክሏል።';

  @override
  String get alreadyDefaultDialer => 'ቀድሞውንም እንደ ነባሪ መደወያ ተቀናብሯል።';

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
