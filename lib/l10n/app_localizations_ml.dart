// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'ഡയലർ ഒന്നുമില്ല';

  @override
  String get settings => 'ക്രമീകരണങ്ങൾ';

  @override
  String get settingsSearchHint => 'തിരയൽ ക്രമീകരണങ്ങൾ';

  @override
  String get settingsSearchNoResults => 'ക്രമീകരണങ്ങളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get general => 'ജനറൽ';

  @override
  String get theme => 'തീം';

  @override
  String get themeSystemDefault => 'സിസ്റ്റം ഡിഫോൾട്ട്';

  @override
  String get themeLight => 'വെളിച്ചം';

  @override
  String get themeDark => 'ഇരുട്ട്';

  @override
  String get themeFollowSystem => 'സിസ്റ്റം ക്രമീകരണങ്ങൾ പിന്തുടരുക';

  @override
  String get themeAlwaysLight => 'എപ്പോഴും ലൈറ്റ് തീം ഉപയോഗിക്കുക';

  @override
  String get themeAlwaysDark => 'എപ്പോഴും ഇരുണ്ട തീം ഉപയോഗിക്കുക';

  @override
  String get language => 'ഭാഷ';

  @override
  String get languageDeviceDefault => 'ഡിവൈസ് ഡിഫോൾട്ട്';

  @override
  String get languagePickerTitle => 'ഭാഷ';

  @override
  String get languageSearchHint => 'ഭാഷകൾ തിരയുക';

  @override
  String get font => 'ഫോണ്ട്';

  @override
  String get fontSystem => 'സിസ്റ്റം ഡിഫോൾട്ട്';

  @override
  String get fontNdot => 'ഒന്നുമില്ല (NDot)';

  @override
  String get fontSerif => 'റോബോട്ടോ സെരിഫ്';

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
      'ഫോണ്ട് ഡൗൺലോഡ് പരാജയപ്പെട്ടു. നിങ്ങളുടെ കണക്ഷൻ പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'ഫോണ്ട്';

  @override
  String get fontPreviewSample => 'ഡയലർ ഒന്നുമില്ല';

  @override
  String get fontAppWide => 'ആപ്പ് ഫോണ്ട്';

  @override
  String get fontApplyTo => 'എന്നതിലേക്ക് അപേക്ഷിക്കുക';

  @override
  String get fontApplyEntireApp => 'മുഴുവൻ ആപ്പ്';

  @override
  String get fontApplyEntireAppSubtitle =>
      'ഇൻ-കോൾ ഉൾപ്പെടെ എല്ലായിടത്തും ഒരേ ഫോണ്ട്';

  @override
  String get fontApplyTitlesOnly => 'ശീർഷകങ്ങളും തലക്കെട്ടുകളും';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'വലിയ തലക്കെട്ടുകളും വിഭാഗ തലക്കെട്ടുകളും മാത്രം';

  @override
  String get fontApplyCustomize => 'ഇഷ്ടാനുസൃതമാക്കുക';

  @override
  String get fontApplyCustomizeSubtitle =>
      'ഓരോ സ്‌ക്രീനും ടെക്‌സ്‌റ്റ് തരവും ഫോണ്ട് തിരഞ്ഞെടുക്കുക';

  @override
  String get fontCustomizeSection => 'സ്‌ക്രീൻ അനുസരിച്ച് ഇഷ്ടാനുസൃതമാക്കുക';

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
  String get fontRolePageTitle => 'പേജ് തലക്കെട്ട്';

  @override
  String get fontRoleSectionHeader => 'വിഭാഗം തലക്കെട്ട്';

  @override
  String get fontRolePrimary => 'പ്രാഥമിക വാചകം';

  @override
  String get fontRoleSecondary => 'ദ്വിതീയ വാചകം';

  @override
  String get fontRoleButton => 'ബട്ടണുകൾ';

  @override
  String get fontRoleDialKey => 'ഡയൽപാഡ് കീകൾ';

  @override
  String get fontSurfaceRecents => 'സമീപകാലങ്ങൾ';

  @override
  String get fontSurfaceContacts => 'ബന്ധങ്ങൾ';

  @override
  String get fontSurfaceSettings => 'ക്രമീകരണങ്ങൾ';

  @override
  String get fontSurfaceDialpad => 'ഡയൽപാഡ്';

  @override
  String get fontSurfaceShell => 'നാവിഗേഷൻ';

  @override
  String get fontSurfaceDefaultDialer => 'ഡിഫോൾട്ട് ഡയലർ പ്രോംപ്റ്റ്';

  @override
  String get fontSurfaceFavourites => 'പ്രിയപ്പെട്ടവ';

  @override
  String get fontSurfaceBlocked => 'തടഞ്ഞ നമ്പറുകൾ';

  @override
  String get fontSurfaceContactDetail => 'ബന്ധപ്പെടാനുള്ള വിശദാംശങ്ങൾ';

  @override
  String get fontSurfaceCallHistory => 'കോൾ ചരിത്രം';

  @override
  String get fontSurfaceSheets => 'ഷീറ്റുകളും പിക്കറുകളും';

  @override
  String get fontSurfaceInCall => 'ഇൻ-കോൾ സ്ക്രീൻ';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — മുഴുവൻ ആപ്പും';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — ശീർഷകങ്ങൾ മാത്രം';
  }

  @override
  String get fontSubtitleCustomize => 'ഓരോ സ്ക്രീനിനും ഇഷ്ടാനുസൃതം';

  @override
  String get background => 'പശ്ചാത്തലം';

  @override
  String get accent => 'ഉച്ചാരണം';

  @override
  String get lightBackground => 'ഇളം പശ്ചാത്തലം';

  @override
  String get lightAccent => 'നേരിയ ഉച്ചാരണം';

  @override
  String get darkBackground => 'ഇരുണ്ട പശ്ചാത്തലം';

  @override
  String get darkAccent => 'ഇരുണ്ട ആക്സൻ്റ്';

  @override
  String get callBackground => 'കോൾ പശ്ചാത്തലം';

  @override
  String get appIcon => 'ആപ്പ് ഐക്കൺ';

  @override
  String get answerMethod => 'ഉത്തരം രീതി';

  @override
  String get answerSlide => 'ഉത്തരം നൽകാൻ സ്ലൈഡ് ചെയ്യുക';

  @override
  String get answerSlideSubtitle =>
      'ഗൂഗിൾ ഫോൺ പോലെ ബാറിൽ ഇടത്തേക്ക്/വലത്തേക്ക് സ്വൈപ്പ് ചെയ്യുക';

  @override
  String get answerButton => 'ബട്ടൺ ടാപ്പ്';

  @override
  String get answerButtonSubtitle =>
      'ഉത്തരം അല്ലെങ്കിൽ നിരസിക്കാനുള്ള ബട്ടണുകൾ ടാപ്പ് ചെയ്യുക';

  @override
  String get answerHuawei => 'Huawei ശൈലി';

  @override
  String get answerHuaweiSubtitle =>
      'ഉത്തരം നൽകാൻ പച്ച ഫോണിലേക്ക് സർക്കിൾ വലിച്ചിടുക';

  @override
  String get answerHuaweiTileSubtitle =>
      'Huawei - പച്ച/ചുവപ്പിലേക്ക് വലിച്ചിടുക';

  @override
  String get calling => 'വിളിക്കുന്നു';

  @override
  String get defaultSim => 'ഡിഫോൾട്ട് സിം';

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
  String get askEveryTime => 'ഓരോ തവണയും ചോദിക്കുക';

  @override
  String get askEveryTimeSubtitle =>
      'ഓരോ കോളിനും മുമ്പായി സിം പിക്കർ കാണിക്കുക';

  @override
  String simSlot(int slot) {
    return 'സിം $slot';
  }

  @override
  String get noSimCardsFound => 'സിം കാർഡുകളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String couldNotLoadSims(String error) {
    return 'സിമ്മുകൾ ലോഡ് ചെയ്യാനായില്ല: $error';
  }

  @override
  String get allFavourites => 'എല്ലാ പ്രിയങ്കരങ്ങളും';

  @override
  String get allFavouritesSubtitle =>
      'കോൺടാക്റ്റുകളിൽ നിന്ന് പുനഃക്രമീകരിക്കുക, നീക്കം ചെയ്യുക, ചേർക്കുക';

  @override
  String get blockedNumbers => 'തടഞ്ഞ നമ്പറുകൾ';

  @override
  String get blockedNumbersSubtitle => 'നമ്പറുകൾ കാണുക, അൺബ്ലോക്ക് ചെയ്യുക';

  @override
  String get soundsAndVibration => 'ശബ്ദങ്ങളും വൈബ്രേഷനും';

  @override
  String get soundsAndVibrationSubtitle =>
      'റിംഗ്ടോൺ, വൈബ്രേഷൻ, ഡയൽ പാഡ് ടോണുകൾ';

  @override
  String couldNotOpenSettings(String error) {
    return 'ക്രമീകരണങ്ങൾ തുറക്കാൻ കഴിഞ്ഞില്ല: $error';
  }

  @override
  String get frequentlyContacted => 'പതിവായി ബന്ധപ്പെടുന്നു';

  @override
  String get numberOfRecords => 'റെക്കോർഡുകളുടെ എണ്ണം';

  @override
  String get timePeriod => 'സമയ കാലയളവ്';

  @override
  String get periodLast24Hours => 'കഴിഞ്ഞ 24 മണിക്കൂർ';

  @override
  String get periodLast24HoursSubtitle => 'കഴിഞ്ഞ ദിവസത്തെ കോളുകൾ';

  @override
  String get periodLast7Days => 'കഴിഞ്ഞ 7 ദിവസം';

  @override
  String get periodLast7DaysSubtitle => 'കഴിഞ്ഞ ഒരാഴ്ചത്തെ കോളുകൾ';

  @override
  String get periodLast30Days => 'കഴിഞ്ഞ 30 ദിവസം';

  @override
  String get periodLast30DaysSubtitle => 'കഴിഞ്ഞ മാസത്തെ കോളുകൾ';

  @override
  String get periodLast12Months => 'കഴിഞ്ഞ 12 മാസം';

  @override
  String get periodLast12MonthsSubtitle => 'കഴിഞ്ഞ വർഷത്തെ കോളുകൾ';

  @override
  String get periodAllTime => 'എല്ലാ സമയത്തും';

  @override
  String get periodAllTimeSubtitle => 'മുഴുവൻ കോൾ ചരിത്രവും';

  @override
  String get frequentMaxOff => 'ഓഫ്';

  @override
  String frequentMaxCount(int count) {
    return '$count കോൺടാക്റ്റുകൾ';
  }

  @override
  String get torchBlink => 'ടോർച്ച് ബ്ലിങ്ക്';

  @override
  String get torchIncomingCall => 'ഇൻകമിംഗ് കോൾ ടോർച്ച്';

  @override
  String get torchOutgoingCall => 'ഔട്ട്‌ഗോയിംഗ് കോൾ ടോർച്ച്';

  @override
  String get torchOngoingCall => 'നടന്നുകൊണ്ടിരിക്കുന്ന കോൾ ടോർച്ച്';

  @override
  String get torchIncomingInterval => 'ഇൻകമിംഗ് ബ്ലിങ്ക് ഇടവേള';

  @override
  String get torchOutgoingInterval => 'ഔട്ട്ഗോയിംഗ് ബ്ലിങ്ക് ഇടവേള';

  @override
  String get torchOngoingInterval => 'നടന്നുകൊണ്ടിരിക്കുന്ന ബ്ലിങ്ക് ഇടവേള';

  @override
  String get torchOff => 'ഓഫ്';

  @override
  String get torchOffIncomingSubtitle => 'റിംഗ് ചെയ്യുമ്പോൾ ടോർച്ച് ഇല്ല';

  @override
  String get torchOffOutgoingSubtitle => 'ഡയൽ ചെയ്യുമ്പോൾ ടോർച്ച് ഇല്ല';

  @override
  String get torchOffOngoingSubtitle => 'സജീവ കോൾ സമയത്ത് ടോർച്ച് ഇല്ല';

  @override
  String get torchFixedInterval => 'നിശ്ചിത ഇടവേള';

  @override
  String get torchFixedIntervalSubtitle => 'ഒരു നിശ്ചിത വേഗതയിൽ മിന്നിമറയുക';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds സെ';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds മിന്നിമറയുക';
  }

  @override
  String get flashlightUnavailable => 'ഈ ഉപകരണത്തിൽ ഫ്ലാഷ്‌ലൈറ്റ് ലഭ്യമല്ല';

  @override
  String get glyphLights => 'ഗ്ലിഫ് ലൈറ്റുകൾ';

  @override
  String get glyphCallingAnimation => 'ഗ്ലിഫ് കോളിംഗ് ആനിമേഷൻ';

  @override
  String get glyphOngoingAnimation =>
      'ഗ്ലിഫ് നടന്നുകൊണ്ടിരിക്കുന്ന കോൾ ആനിമേഷൻ';

  @override
  String get glyphNone => 'ഒന്നുമില്ല';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'ഔട്ട്‌ഗോയിംഗ് കോളുകൾക്കായി ഗ്ലിഫ് ലൈറ്റുകൾ പ്രവർത്തനരഹിതമാക്കുക';

  @override
  String get glyphNoneInCallSubtitle =>
      'കോളിൽ സജീവമായിരിക്കുമ്പോൾ ഗ്ലിഫ് ലൈറ്റുകൾ പ്രവർത്തനരഹിതമാക്കുക';

  @override
  String get glyphBreathProgress => 'ശ്വസനവും പുരോഗതിയും';

  @override
  String get glyphBreathProgressSubtitle =>
      'ലൈറ്റുകൾ 65 സെക്കൻഡിൽ കൂടുതൽ നിറയുമ്പോൾ ലൈറ്റുകൾ ശ്വസിക്കുന്നു';

  @override
  String get glyphAccumulate => 'ശേഖരിക്കുക';

  @override
  String get glyphAccumulateSubtitle =>
      'C1-C4 ലൈറ്റുകളിൽ ആനിമേഷൻ ശേഖരിക്കുന്നു';

  @override
  String get glyphSingle => 'സിംഗിൾ';

  @override
  String get glyphSingleSubtitle => 'C1-C4-ൽ ഉടനീളം ചലിക്കുന്ന ഒറ്റ പ്രകാശം';

  @override
  String get glyphBreath => 'ശ്വാസം';

  @override
  String get glyphBreathSubtitle => 'ലൈറ്റുകളും വേഗതയും തിരഞ്ഞെടുക്കുക';

  @override
  String get glyphSteady => 'സ്ഥിരതയുള്ള';

  @override
  String get glyphSteadySubtitle => 'തിരഞ്ഞെടുത്ത ലൈറ്റുകൾ ഓണായിരിക്കും';

  @override
  String get breathSettings => 'ശ്വസന ക്രമീകരണങ്ങൾ';

  @override
  String get activeLights => 'സജീവ ലൈറ്റുകൾ';

  @override
  String lightsCount(int count) {
    return '$count ലൈറ്റുകൾ';
  }

  @override
  String get speedSettings => 'സ്പീഡ് ക്രമീകരണങ്ങൾ';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms കാലതാമസം';
  }

  @override
  String get durationAndSpeed => 'ദൈർഘ്യവും വേഗതയും';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s ദൈർഘ്യം, ${interval}ms ഇടവേള';
  }

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get done => 'ചെയ്തു';

  @override
  String get save => 'സംരക്ഷിക്കുക';

  @override
  String get block => 'തടയുക';

  @override
  String get delete => 'ഇല്ലാതാക്കുക';

  @override
  String get recents => 'സമീപകാലങ്ങൾ';

  @override
  String get contacts => 'ബന്ധങ്ങൾ';

  @override
  String get hideFavouritesOnRecents => 'സമീപകാലങ്ങളിൽ പ്രിയപ്പെട്ടവ മറയ്ക്കുക';

  @override
  String get showFavouritesOnRecents => 'സമീപകാലങ്ങളിൽ പ്രിയങ്കരങ്ങൾ കാണിക്കുക';

  @override
  String get ongoingCall => 'നടന്നുകൊണ്ടിരിക്കുന്ന കോൾ';

  @override
  String get setAsDefaultTitle => 'AS സജ്ജമാക്കുക\nഡിഫോൾട്ട്';

  @override
  String get setAsDefaultBody =>
      'Nothing Dialer ഉപയോഗിക്കുന്നതിന്, അത് നിങ്ങളുടെ ഡിഫോൾട്ട് ഫോൺ ആപ്പായി സജ്ജീകരിച്ചിരിക്കണം. കോളുകൾ നിയന്ത്രിക്കാനും ചരിത്രം കാണാനും ഗ്ലിഫ് ആനിമേഷനുകൾ ഉപയോഗിക്കാനും ഇത് നിങ്ങളെ അനുവദിക്കുന്നു.';

  @override
  String get setAsDefaultButton => 'ഡിഫോൾട്ടായി സജ്ജീകരിക്കുക';

  @override
  String get nothingDialerBrand => 'ഒന്നുമില്ല ഡയലർ 1';

  @override
  String get favourites => 'പ്രിയപ്പെട്ടവ';

  @override
  String get addFavourite => 'പ്രിയപ്പെട്ടത് ചേർക്കുക';

  @override
  String get favouritesDrawerHint =>
      'കോൺടാക്റ്റുകൾ ചേർക്കാൻ മെനു ഉപയോഗിക്കുക. ഡ്രോയറിന് പുറത്ത് ടാപ്പ് ചെയ്യുക അല്ലെങ്കിൽ അത് അടച്ച് സ്വൈപ്പ് ചെയ്യുക. അവരുടെ വിശദാംശങ്ങളിൽ നിന്ന് ഒരു കോൺടാക്റ്റിന് നക്ഷത്രചിഹ്നം നൽകുക അല്ലെങ്കിൽ സമീപകാലങ്ങളിൽ ഒരു കോൾ ദീർഘനേരം അമർത്തുക.';

  @override
  String get menu => 'മെനു';

  @override
  String get noFavouritesYet =>
      'ഇതുവരെ പ്രിയങ്കരങ്ങളൊന്നുമില്ല.\nഒരെണ്ണം ചേർക്കാൻ മെനു തുറക്കുക, അല്ലെങ്കിൽ ഒരു കോൺടാക്റ്റ് നക്ഷത്രമിടുക.';

  @override
  String get contactsPermissionNeeded => 'ബന്ധപ്പെടാനുള്ള അനുമതി ആവശ്യമാണ്';

  @override
  String get chooseContact => 'കോൺടാക്റ്റ് തിരഞ്ഞെടുക്കുക';

  @override
  String get noPhone => 'ഫോൺ ഇല്ല';

  @override
  String get pickNumber => 'നമ്പർ തിരഞ്ഞെടുക്കുക';

  @override
  String get contactHasNoPhone => 'ഈ കോൺടാക്‌റ്റിന് ഫോൺ നമ്പറില്ല';

  @override
  String get blockNumber => 'ബ്ലോക്ക് നമ്പർ';

  @override
  String get enterPhoneNumber => 'ഫോൺ നമ്പർ നൽകുക';

  @override
  String unblockedDisplay(String display) {
    return 'അൺബ്ലോക്ക് $display';
  }

  @override
  String get couldNotUnblockNumber => 'നമ്പർ അൺബ്ലോക്ക് ചെയ്യാനായില്ല';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked തടഞ്ഞു • $matched പൊരുത്തപ്പെടുത്തി';
  }

  @override
  String get contactsPermissionMissing =>
      'കോൺടാക്‌റ്റുകളുടെ അനുമതി നഷ്‌ടമായി. പരിഹരിക്കാൻ ടാപ്പ് ചെയ്യുക.';

  @override
  String get noBlockedNumbers => 'ബ്ലോക്ക് ചെയ്ത നമ്പറുകളൊന്നുമില്ല';

  @override
  String get unknownContact => 'അജ്ഞാത കോൺടാക്റ്റ്';

  @override
  String get unblock => 'തടഞ്ഞത് മാറ്റുക';

  @override
  String get permissionNeeded => 'അനുമതി ആവശ്യമാണ്';

  @override
  String get grantPhonePermission =>
      'നിങ്ങളുടെ കോൾ ചരിത്രം കാണുന്നതിന് ഫോൺ അനുമതി നൽകുക.';

  @override
  String get grantContactsPermission =>
      'നിങ്ങളുടെ വിലാസ പുസ്തകം കാണുന്നതിന് കോൺടാക്റ്റുകൾക്ക് അനുമതി നൽകുക.';

  @override
  String get openSettings => 'ക്രമീകരണങ്ങൾ തുറക്കുക';

  @override
  String get tryAgain => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get couldNotLoadContacts => 'കോൺടാക്റ്റുകൾ ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get contactsLoadError =>
      'നിങ്ങളുടെ വിലാസ പുസ്തകം വായിക്കുമ്പോൾ എന്തോ കുഴപ്പം സംഭവിച്ചു.';

  @override
  String get noContactsFound => 'കോൺടാക്‌റ്റുകളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get contactsEmptySubtitle =>
      'നിങ്ങളുടെ ഉപകരണത്തിൽ നിന്നുള്ള കോൺടാക്റ്റുകൾ ഇവിടെ ദൃശ്യമാകും.';

  @override
  String get searchContacts => 'കോൺടാക്റ്റുകൾ തിരയുക...';

  @override
  String get searchRecentCalls => 'സമീപകാല കോളുകൾ തിരയുക';

  @override
  String get fromContacts => 'കോൺടാക്റ്റുകളിൽ നിന്ന്';

  @override
  String get recentsSearchSection => 'സമീപകാല തിരയൽ';

  @override
  String get recentsSearchShowContacts => 'തിരയലിൽ കോൺടാക്റ്റുകൾ കാണിക്കുക';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'സമീപകാലങ്ങൾ തിരയുമ്പോൾ, കോൾ ചരിത്ര ഫലങ്ങൾക്ക് താഴെ നിങ്ങളുടെ വിലാസ പുസ്തകത്തിൽ നിന്ന് പൊരുത്തപ്പെടുന്ന ആളുകളെ കാണിക്കുക.';

  @override
  String get voiceSearch => 'ശബ്ദ തിരയൽ';

  @override
  String get createNewContact => 'പുതിയ കോൺടാക്റ്റ് സൃഷ്ടിക്കുക';

  @override
  String callError(String error) {
    return 'കോൾ പിശക്: $error';
  }

  @override
  String get noRecentCalls => 'സമീപകാല കോളുകളൊന്നുമില്ല';

  @override
  String get callHistoryEmpty => 'നിങ്ങളുടെ കോൾ ചരിത്രം ഇവിടെ ദൃശ്യമാകും.';

  @override
  String get loadMore => 'കൂടുതൽ ലോഡ് ചെയ്യുക';

  @override
  String get frequentlyContactedHeader => 'ഇടയ്ക്കിടെ ബന്ധപ്പെട്ടു';

  @override
  String get recentHistory => 'സമീപകാല ചരിത്രം';

  @override
  String get noFavouritesRecentsHint =>
      'ഇതുവരെ പ്രിയങ്കരങ്ങളൊന്നുമില്ല. ഒരു കോൺടാക്റ്റിന് നക്ഷത്രമിടുക, ഒരു കോൾ ദീർഘനേരം അമർത്തുക അല്ലെങ്കിൽ പ്രിയപ്പെട്ടവ ടാബ് ഉപയോഗിക്കുക.';

  @override
  String get copyNumber => 'നമ്പർ പകർത്തുക';

  @override
  String get editNumberBeforeCall =>
      'വിളിക്കുന്നതിന് മുമ്പ് നമ്പർ എഡിറ്റ് ചെയ്യുക';

  @override
  String get removeFromFavourites => 'പ്രിയപ്പെട്ടവയിൽ നിന്ന് നീക്കം ചെയ്യുക';

  @override
  String get addToFavourites => 'പ്രിയപ്പെട്ടവയിലേക്ക് ചേർക്കുക';

  @override
  String get blockNumberQuestion => 'നമ്പർ ബ്ലോക്ക് ചെയ്യണോ?';

  @override
  String blockNumberConfirm(String number) {
    return '$number എന്നതിൽ നിന്ന് നിങ്ങൾക്ക് ഇനി കോളുകളോ സന്ദേശങ്ങളോ ലഭിക്കില്ല.';
  }

  @override
  String get blocked => 'തടഞ്ഞു';

  @override
  String get couldNotBlock => 'തടയാൻ കഴിഞ്ഞില്ല';

  @override
  String get contactNotOnDevice =>
      'ഈ ഉപകരണത്തിൽ കോൺടാക്റ്റ് സംരക്ഷിച്ചിട്ടില്ല';

  @override
  String get unblocked => 'അൺബ്ലോക്ക് ചെയ്തു';

  @override
  String get numberCopied => 'നമ്പർ പകർത്തി';

  @override
  String get showLess => 'കുറവ് കാണിക്കുക';

  @override
  String get showAllTimes => 'എല്ലാ സമയത്തും കാണിക്കുക';

  @override
  String mostRecent(String time) {
    return 'ഏറ്റവും പുതിയത് · $time';
  }

  @override
  String get videoCall => 'വീഡിയോ കോൾ';

  @override
  String get couldNotPlaceVideoCall => 'വീഡിയോ കോൾ ചെയ്യാൻ കഴിഞ്ഞില്ല';

  @override
  String get message => 'സന്ദേശം';

  @override
  String get couldNotOpenMessaging => 'സന്ദേശമയയ്‌ക്കൽ ആപ്പ് തുറക്കാനായില്ല';

  @override
  String get history => 'ചരിത്രം';

  @override
  String get viewContact => 'കോൺടാക്റ്റ് കാണുക';

  @override
  String get addToContact => 'കോൺടാക്റ്റിലേക്ക് ചേർക്കുക';

  @override
  String get callTypeMissed => 'നഷ്ടമായി';

  @override
  String get callTypeRejected => 'നിരസിച്ചു';

  @override
  String get callTypeIncoming => 'ഇൻകമിംഗ്';

  @override
  String get callTypeOutgoing => 'ഔട്ട്ഗോയിംഗ്';

  @override
  String get today => 'ഇന്ന്';

  @override
  String get yesterday => 'ഇന്നലെ';

  @override
  String get justNow => 'ഇപ്പോള്';

  @override
  String minutesAgo(int count) {
    return '$count മിനിറ്റ് മുമ്പ്';
  }

  @override
  String hoursAgo(int count) {
    return '$count മണിക്കൂർ മുമ്പ്';
  }

  @override
  String get filterAll => 'എല്ലാം';

  @override
  String get filterMissed => 'നഷ്ടമായി';

  @override
  String get filterContacts => 'ബന്ധങ്ങൾ';

  @override
  String get filterNonContacts => 'നോൺ-കോൺടാക്റ്റുകൾ';

  @override
  String get iconUpdated =>
      'ഐക്കൺ അപ്ഡേറ്റ് ചെയ്തു. നിങ്ങളുടെ ഹോം സ്‌ക്രീൻ പുതുക്കാൻ കുറച്ച് സമയമെടുത്തേക്കാം.';

  @override
  String get iconSavedRelease =>
      'ചോയ്സ് സംരക്ഷിച്ചു. റിലീസ് ബിൽഡുകളിലെ ഹോം സ്‌ക്രീൻ ഐക്കൺ അപ്‌ഡേറ്റുകൾ.';

  @override
  String couldNotChangeIcon(String error) {
    return 'ഐക്കൺ മാറ്റാൻ കഴിഞ്ഞില്ല: $error';
  }

  @override
  String get launcherClassicBlack => 'ക്ലാസിക് (കറുപ്പ്)';

  @override
  String get launcherLight => 'വെളിച്ചം';

  @override
  String get launcherNothingRed => 'ചുവപ്പ് ഒന്നുമില്ല';

  @override
  String get launcherDarkGrey => 'ഇരുണ്ട ചാരനിറം';

  @override
  String get launcherCream => 'ക്രീം';

  @override
  String get launcherRetroPhone => 'റെട്രോ ഫോൺ';

  @override
  String get launcherRetroPhoneLight => 'റെട്രോ ഫോൺ (ലൈറ്റ്)';

  @override
  String get voiceSearchUnavailable => 'ഈ ഉപകരണത്തിൽ ശബ്ദ തിരയൽ ലഭ്യമല്ല.';

  @override
  String voiceSearchFailed(String error) {
    return 'ശബ്ദ തിരയൽ പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get customColor => 'കസ്റ്റം';

  @override
  String get selectColor => 'നിറം തിരഞ്ഞെടുക്കുക';

  @override
  String get reset => 'പുനഃസജ്ജമാക്കുക';

  @override
  String get simPickerTitle => 'സിം തിരഞ്ഞെടുക്കുക';

  @override
  String get simChooseForCall => 'ഈ കോളിനായി സിം തിരഞ്ഞെടുക്കുക';

  @override
  String get defaultSimAsk => 'ഓരോ തവണയും ചോദിക്കുക';

  @override
  String defaultSimFixed(int slot) {
    return 'സിം $slot';
  }

  @override
  String get contactDetails => 'ബന്ധപ്പെടാനുള്ള വിശദാംശങ്ങൾ';

  @override
  String get call => 'വിളിക്കൂ';

  @override
  String get share => 'പങ്കിടുക';

  @override
  String get favourite => 'പ്രിയപ്പെട്ടത്';

  @override
  String get unfavourite => 'ഇഷ്ടപ്പെടാത്തത്';

  @override
  String get blockContact => 'കോൺടാക്റ്റ് തടയുക';

  @override
  String get unblockContact => 'കോൺടാക്റ്റ് അൺബ്ലോക്ക് ചെയ്യുക';

  @override
  String get deleteContact => 'കോൺടാക്റ്റ് ഇല്ലാതാക്കുക';

  @override
  String get phone => 'ഫോൺ';

  @override
  String get email => 'ഇമെയിൽ';

  @override
  String get ringtone => 'റിംഗ്ടോൺ';

  @override
  String get defaultRingtone => 'സ്ഥിരസ്ഥിതി';

  @override
  String get simForContact => 'ഈ കോൺടാക്റ്റിന് സിം';

  @override
  String get callHistoryTitle => 'കോൾ ചരിത്രം';

  @override
  String get noCallsWithNumber => 'ഈ നമ്പറിൽ കോളുകളൊന്നുമില്ല';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'ഗ്ലിഫ് ആനിമേഷൻ';

  @override
  String get inCallGlyphAnimationStyle => 'ഇൻ-കോൾ ഗ്ലിഫ് ആനിമേഷൻ';

  @override
  String get recordsOff => 'ഓഫ്';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'ഡിഫോൾട്ട് സിം';

  @override
  String get nothingPhoneOnly => 'ഒന്നുമില്ല ഫോൺ മാത്രം';

  @override
  String get nothingPhoneOnlySubtitle =>
      'ഗ്ലിഫ് ഫീച്ചറുകൾക്ക് നഥിംഗ് ഫോൺ ആവശ്യമാണ്';

  @override
  String get custom => 'കസ്റ്റം';

  @override
  String presetColorHex(String hex) {
    return 'പ്രീസെറ്റ് · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'ഇഷ്ടാനുസൃതം · $hex';
  }

  @override
  String get oneContact => '1 കോൺടാക്റ്റ്';

  @override
  String upToContacts(int count) {
    return '$count കോൺടാക്റ്റുകൾ വരെ';
  }

  @override
  String get answerButtonTapSubtitle => 'ഉത്തരം നൽകാൻ ബട്ടൺ ടാപ്പ് ചെയ്യുക';

  @override
  String get filterCalls => 'കോളുകൾ ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get filterTooltip => 'ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get settingsTooltip => 'ക്രമീകരണങ്ങൾ';

  @override
  String get filterAllSubtitle => 'മുഴുവൻ കോൾ ലോഗ്';

  @override
  String get filterMissedSubtitle => 'കാണാതെ പോയി, നിരസിച്ചു';

  @override
  String get filterContactsSubtitle =>
      'സംരക്ഷിച്ച കോൺടാക്റ്റുമായി കോളുകൾ പൊരുത്തപ്പെട്ടു';

  @override
  String get filterNonContactsSubtitle =>
      'നിങ്ങളുടെ വിലാസ പുസ്തകത്തിൽ നമ്പറുകൾ ഇല്ല';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'നടന്നുകൊണ്ടിരിക്കുന്ന കോൾ: $detail';
  }

  @override
  String get defaultSimForCalls => 'കോളുകൾക്കുള്ള ഡിഫോൾട്ട് സിം';

  @override
  String get blinkInterval => 'മിന്നുന്ന ഇടവേള';

  @override
  String get close => 'അടയ്ക്കുക';

  @override
  String get frequentlyContactedInfoBody =>
      'നിങ്ങൾ തിരഞ്ഞെടുക്കുന്ന കാലയളവിൽ ഓരോ നമ്പറിലും എത്ര ഇൻകമിംഗ്, ഔട്ട്‌ഗോയിംഗ്, മിസ്‌ഡ് അല്ലെങ്കിൽ റിജക്‌റ്റ് ചെയ്‌ത കോളുകളുടെ അടിസ്ഥാനത്തിൽ, ഏറ്റവും കൂടുതൽ വിളിക്കപ്പെടുന്ന ഫോൺ നമ്പറുകൾ സമീപകാല ടാബിൻ്റെ മുകളിൽ കാണിക്കുന്നു.\n\nറെക്കോർഡുകളുടെ എണ്ണം: ഇത് ഓഫാക്കുന്നതിന് 0 ആയി സജ്ജമാക്കുക. നിരവധി മുൻനിര കോൺടാക്റ്റുകൾ കാണിക്കാൻ 1-20 ഉപയോഗിക്കുക.\n\nഒരു കോൺടാക്റ്റെങ്കിലും കാണിക്കുമ്പോൾ മാത്രമേ സമയ കാലയളവ് ബാധകമാകൂ.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count ലൈറ്റുകൾ, ${ms}ms വേഗത';
  }

  @override
  String get deleteContactQuestion => 'കോൺടാക്റ്റ് ഇല്ലാതാക്കണോ?';

  @override
  String get deleteContactBody =>
      'ഈ കോൺടാക്റ്റ് നിങ്ങളുടെ ഉപകരണത്തിൽ നിന്ന് ശാശ്വതമായി ഇല്ലാതാക്കപ്പെടും.';

  @override
  String get blockContactQuestion => 'കോൺടാക്റ്റ് തടയണോ?';

  @override
  String get unblockContactQuestion => 'കോൺടാക്റ്റ് അൺബ്ലോക്ക് ചെയ്യണോ?';

  @override
  String get blockContactBody =>
      'ഈ കോൺടാക്റ്റിൽ നിന്ന് നിങ്ങൾക്ക് ഇനി കോളുകളോ സന്ദേശങ്ങളോ ലഭിക്കില്ല.';

  @override
  String get unblockContactBody =>
      'ഈ കോൺടാക്റ്റിൽ നിന്ന് നിങ്ങൾക്ക് കോളുകളും സന്ദേശങ്ങളും ലഭിക്കാൻ തുടങ്ങും.';

  @override
  String get contactBlocked => 'കോൺടാക്റ്റ് തടഞ്ഞു';

  @override
  String get contactUnblocked => 'കോൺടാക്റ്റ് അൺബ്ലോക്ക് ചെയ്തു';

  @override
  String get noPhoneNumbersToBlock => 'ബ്ലോക്ക് ചെയ്യാൻ ഫോൺ നമ്പറുകളൊന്നുമില്ല';

  @override
  String get simSameAsSystem => 'സിസ്റ്റം പോലെ തന്നെ';

  @override
  String get simSameAsSystemSubtitle =>
      'ക്രമീകരണങ്ങളിൽ ഡിഫോൾട്ട് സിം പിന്തുടരുന്നു';

  @override
  String get simAskEveryTimeForContact =>
      'ഈ കോൺടാക്റ്റിനായി എപ്പോഴും സിം പിക്കർ കാണിക്കുക';

  @override
  String get ringtoneSetForContact =>
      'ഈ കോൺടാക്‌റ്റിനായി ആഗോളതലത്തിൽ റിംഗ്‌ടോൺ സജ്ജമാക്കി';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'റിംഗ്‌ടോൺ തിരഞ്ഞെടുക്കുന്നതിൽ പരാജയപ്പെട്ടു: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'പിശക്: $error';
  }

  @override
  String get noCallHistoryFound => 'കോൾ ചരിത്രമൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get speedDialVoicemail => 'സ്പീഡ് ഡയൽ: വോയ്‌സ്‌മെയിൽ';

  @override
  String shareContactSubject(String name) {
    return 'ബന്ധപ്പെടുക: $name';
  }

  @override
  String get contactInfo => 'ബന്ധപ്പെടാനുള്ള വിവരം';

  @override
  String get dontAskAgainSim => 'വീണ്ടും ചോദിക്കരുത്';

  @override
  String get simDontAskAgainSubtitle =>
      'ഈ സിം ഡിഫോൾട്ടായി ഉപയോഗിക്കുക (ക്രമീകരണങ്ങളിൽ മാറ്റുക)';

  @override
  String get addContact => 'കോൺടാക്റ്റ് ചേർക്കുക';

  @override
  String get createContact => 'കോൺടാക്റ്റ് സൃഷ്ടിക്കുക';

  @override
  String get paste => 'ഒട്ടിക്കുക';

  @override
  String get clear => 'ക്ലിയർ';

  @override
  String get returnToCall => 'കോളിലേക്ക് മടങ്ങുക';

  @override
  String get numberOfRecordsTitle => 'റെക്കോർഡുകളുടെ എണ്ണം';

  @override
  String get recordsPickerSubtitle =>
      'കാണിക്കാൻ പതിവായി ബന്ധപ്പെടുന്ന എത്ര എൻട്രികൾ (0 = ഓഫ്)';

  @override
  String get torchInfoTitle => 'ടോർച്ച് ബ്ലിങ്ക്';

  @override
  String get torchInfoBody =>
      'ഇൻകമിംഗ്, ഔട്ട്‌ഗോയിംഗ് അല്ലെങ്കിൽ നടന്നുകൊണ്ടിരിക്കുന്ന കോളുകളുടെ സമയത്ത് ക്യാമറ ഫ്ലാഷ് മിന്നുന്നു. ഗ്ലിഫ് ലൈറ്റുകളിൽ നിന്ന് സ്വതന്ത്രമായി.';

  @override
  String get glyphMapTitle => 'ഗ്ലിഫ് ലേഔട്ട്';

  @override
  String get glyphMapBody =>
      'ഒന്നുമില്ല ഫോൺ 1 ഗ്ലിഫ് LED സോണുകൾ. ഔട്ട്‌ഗോയിംഗ്, ഇൻ-കോൾ ആനിമേഷനുകൾ ഈ ചാനലുകൾ ഉപയോഗിക്കുന്നു.';

  @override
  String get answerMethodTitle => 'ഉത്തരം രീതി';

  @override
  String get glyphOutgoingCallStyleTitle => 'ഔട്ട്‌ഗോയിംഗ് കോൾ ശൈലി';

  @override
  String get glyphInCallAnimationTitle => 'ഗ്ലിഫ് ഇൻ-കോൾ ആനിമേഷൻ';

  @override
  String get themePickerTitle => 'തീം';

  @override
  String get torchIncomingTitle => 'ഇൻകമിംഗ് കോൾ ടോർച്ച്';

  @override
  String get torchOutgoingTitle => 'ഔട്ട്‌ഗോയിംഗ് കോൾ ടോർച്ച്';

  @override
  String get torchOngoingTitle => 'നടന്നുകൊണ്ടിരിക്കുന്ന കോൾ ടോർച്ച്';

  @override
  String get timePeriodTitle => 'സമയ കാലയളവ്';

  @override
  String get ok => 'ശരി';

  @override
  String get confirmDeleteCall => 'ചരിത്രത്തിൽ നിന്ന് ഈ കോൾ ഇല്ലാതാക്കണോ?';

  @override
  String get confirmDeleteAllCalls =>
      'ഈ നമ്പറിലുള്ള എല്ലാ കോളുകളും ഇല്ലാതാക്കണോ?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'ഒരു സന്ദേശം അയയ്ക്കുക';

  @override
  String get addToExistingContactAction => 'ഒരു കോൺടാക്റ്റിലേക്ക് ചേർക്കുക';

  @override
  String get mobileLabel => 'മൊബൈൽ';

  @override
  String get callingSimForContactTitle => 'ഈ കോൺടാക്റ്റിനായി സിം വിളിക്കുന്നു';

  @override
  String get contactSettings => 'കോൺടാക്റ്റ് ക്രമീകരണങ്ങൾ';

  @override
  String get setCallingSim => 'കോളിംഗ് സിം സജ്ജീകരിക്കുക';

  @override
  String get contactRingtone => 'ബന്ധപ്പെടാനുള്ള റിംഗ്‌ടോൺ';

  @override
  String get shareContact => 'കോൺടാക്റ്റ് പങ്കിടുക';

  @override
  String get blockNumbers => 'ബ്ലോക്ക് നമ്പറുകൾ';

  @override
  String get unblockNumbers => 'അൺബ്ലോക്ക് നമ്പറുകൾ';

  @override
  String get connectedApps => 'ബന്ധിപ്പിച്ച ആപ്പുകൾ';

  @override
  String get simNotSet => 'സജ്ജമാക്കിയിട്ടില്ല';

  @override
  String get ringtoneDefault => 'സ്ഥിരസ്ഥിതി';

  @override
  String get customRingtone => 'കസ്റ്റം';

  @override
  String get aboutSection => 'കുറിച്ച്';

  @override
  String get aboutFeedbackSection => 'കുറിച്ച് & ഫീഡ്ബാക്ക്';

  @override
  String get aboutDescription =>
      'ഒന്നും ഡയലർ ഓപ്പൺ സോഴ്‌സ് അല്ല. നിങ്ങളൊരു ഡവലപ്പറാണെങ്കിൽ, കോഡ് പര്യവേക്ഷണം ചെയ്യാനും സംഭാവന നൽകാനും നിങ്ങൾക്ക് സ്വാഗതം.';

  @override
  String get aboutViewSource => 'GitHub-ൽ കാണുക';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'ലിങ്ക് തുറക്കാൻ കഴിഞ്ഞില്ല';

  @override
  String get reviewSection => 'അവലോകനം';

  @override
  String get reviewDescription =>
      'ഒന്നുമില്ല ഡയലർ ആസ്വദിക്കുന്നുണ്ടോ? Google Play-യിലെ നിങ്ങളുടെ റേറ്റിംഗ് ആപ്പ് കണ്ടെത്താൻ മറ്റുള്ളവരെ സഹായിക്കുന്നു.';

  @override
  String get reviewRateOnPlay => 'Google Play-യിൽ റേറ്റ് ചെയ്യുക';

  @override
  String get reviewRateOnPlaySubtitle =>
      'ആപ്പ് വിടാതെ തന്നെ ഒരു റേറ്റിംഗ് നൽകൂ';

  @override
  String get reviewCouldNotOpen => 'Google Play തുറക്കാൻ കഴിഞ്ഞില്ല';

  @override
  String get breathSpeed => 'ശ്വസന വേഗത';

  @override
  String get breathSpeedBlinkHint =>
      'താഴ്ന്നത് = മിന്നിമറയുക, ഉയർന്നത് = മന്ദഗതിയിലുള്ള ശ്വാസം';

  @override
  String get speedSliderHint => 'താഴ്ന്നത് = വേഗത്തിൽ, ഉയർന്നത് = പതുക്കെ';

  @override
  String get swatchDefault => 'സ്ഥിരസ്ഥിതി';

  @override
  String get customAccentColorPicker => 'ഇഷ്‌ടാനുസൃത ആക്സൻ്റ് നിറം';

  @override
  String get customLightBackgroundPicker => 'കസ്റ്റം ലൈറ്റ് പശ്ചാത്തലം';

  @override
  String get customDarkBackgroundPicker => 'ഇഷ്‌ടാനുസൃത ഇരുണ്ട പശ്ചാത്തലം';

  @override
  String get customCallBackgroundPicker => 'ഇഷ്‌ടാനുസൃത കോൾ പശ്ചാത്തലം';

  @override
  String get ongoingCallStyleTitle => 'നടന്നുകൊണ്ടിരിക്കുന്ന കോൾ ശൈലി';

  @override
  String get glyphMapUnavailable => 'ഗ്ലിഫ് മാപ്പ് ലഭ്യമല്ല';

  @override
  String get animationDelayRange => 'ആനിമേഷൻ കാലതാമസം (1സെ - 10സെ)';

  @override
  String get animationDelayRangeSingle => 'ആനിമേഷൻ കാലതാമസം (0.1സെ - 10സെ)';

  @override
  String get inCallMute => 'നിശബ്ദമാക്കുക';

  @override
  String get inCallKeypad => 'കീപാഡ്';

  @override
  String get inCallSpeaker => 'സ്പീക്കർ';

  @override
  String get inCallMore => 'കൂടുതൽ';

  @override
  String get inCallBluetooth => 'ബ്ലൂടൂത്ത്';

  @override
  String get inCallPhone => 'ഫോൺ';

  @override
  String get inCallAddCall => 'കോൾ ചേർക്കുക';

  @override
  String get inCallChangeSim => 'സിം മാറ്റുക';

  @override
  String get inCallDecline => 'നിരസിക്കുക';

  @override
  String get inCallAnswer => 'ഉത്തരം';

  @override
  String get inCallMessage => 'സന്ദേശം';

  @override
  String get inCallCalling => 'വിളിക്കുന്നു...';

  @override
  String get inCallIncoming => 'ഇൻകമിംഗ് കോൾ';

  @override
  String get inCallSelectSim => 'സിം തിരഞ്ഞെടുക്കുക...';

  @override
  String get inCallSwitchingSim => 'സിം മാറുന്നു...';

  @override
  String get inCallCallEnded => 'കോൾ അവസാനിച്ചു';

  @override
  String inCallCallingVia(String sim) {
    return '$sim വഴി വിളിക്കുന്നു';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '<b>$sim</b> വഴി വിളിക്കുന്നു';
  }

  @override
  String get inCallChooseSim => 'ഈ കോളിനായി സിം തിരഞ്ഞെടുക്കുക';

  @override
  String get inCallDragAnswerDecline =>
      'ഉത്തരം നൽകാൻ വലത്തേക്ക് വലിച്ചിടുക · നിരസിക്കാൻ ഇടത്തേക്ക് വലിച്ചിടുക';

  @override
  String inCallMobileNumber(String number) {
    return 'മൊബൈൽ $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (നിലവിലെ)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'എന്നതിൽ നിന്ന് <b>$sim</b> വഴി വിളിക്കുക';
  }

  @override
  String get inCallCallFrom => 'നിന്ന് വിളിക്കുക';

  @override
  String get inCallUnknown => 'അജ്ഞാതം';

  @override
  String get selectContactRingtone => 'കോൺടാക്റ്റ് റിംഗ്ടോൺ തിരഞ്ഞെടുക്കുക';

  @override
  String get speakToSearchPrompt => 'തിരയാൻ സംസാരിക്കുക';

  @override
  String get phonePermissionRequired => 'ഫോൺ അനുമതി ആവശ്യമാണ്';

  @override
  String callFailed(String error) {
    return 'കോൾ പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get callPermissionDenied => 'കോൾ അനുമതി നിരസിച്ചു';

  @override
  String get alreadyDefaultDialer =>
      'ഡിഫോൾട്ട് ഡയലറായി ഇതിനകം സജ്ജീകരിച്ചിരിക്കുന്നു';

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
