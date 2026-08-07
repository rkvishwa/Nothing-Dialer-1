// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Burmese (`my`).
class AppLocalizationsMy extends AppLocalizations {
  AppLocalizationsMy([String locale = 'my']) : super(locale);

  @override
  String get appTitle => 'Dialer ဘာမှမရှိ။';

  @override
  String get settings => 'ဆက်တင်များ';

  @override
  String get settingsSearchHint => 'ဆက်တင်များကို ရှာဖွေပါ။';

  @override
  String get settingsSearchNoResults => 'ဆက်တင်များမတွေ့ပါ။';

  @override
  String get general => 'အထွေထွေ';

  @override
  String get theme => 'အပြင်အဆင်';

  @override
  String get themeSystemDefault => 'စနစ် ပုံသေ';

  @override
  String get themeLight => 'အလင်း';

  @override
  String get themeDark => 'အမှောင်';

  @override
  String get themeFollowSystem => 'စနစ်ဆက်တင်များကို လိုက်နာပါ။';

  @override
  String get themeAlwaysLight => 'အလင်းအပြင်အဆင်ကို အမြဲသုံးပါ။';

  @override
  String get themeAlwaysDark => 'အမှောင် အပြင်အဆင်ကို အမြဲသုံးပါ။';

  @override
  String get language => 'ဘာသာစကား';

  @override
  String get languageDeviceDefault => 'စက်၏ မူရင်း';

  @override
  String get languagePickerTitle => 'ဘာသာစကား';

  @override
  String get languageSearchHint => 'ဘာသာစကားများကို ရှာဖွေပါ။';

  @override
  String get font => 'ဖောင့်';

  @override
  String get fontSystem => 'စနစ် ပုံသေ';

  @override
  String get fontNdot => 'ဘာမှ (NDot)';

  @override
  String get fontSerif => 'စက်ရုပ် Serif';

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
      'ဖောင့်ဒေါင်းလုဒ် မအောင်မြင်ပါ။ သင့်ချိတ်ဆက်မှုကို စစ်ဆေးပြီး ထပ်စမ်းကြည့်ပါ။';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'ဖောင့်';

  @override
  String get fontPreviewSample => 'Dialer ဘာမှမရှိ။';

  @override
  String get fontAppWide => 'အက်ပ်ဖောင့်';

  @override
  String get fontApplyTo => 'လျှောက်ထားရန်';

  @override
  String get fontApplyEntireApp => 'အက်ပ်တစ်ခုလုံး';

  @override
  String get fontApplyEntireAppSubtitle =>
      'ဖုန်းခေါ်ဆိုမှုအပါအဝင် နေရာတိုင်းတွင် တူညီသောဖောင့်';

  @override
  String get fontApplyTitlesOnly => 'ခေါင်းစဉ်များနှင့် ခေါင်းစီးများ';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'ကြီးမားသော ခေါင်းစဉ်များနှင့် ကဏ္ဍ ခေါင်းစီးများသာ';

  @override
  String get fontApplyCustomize => 'စိတ်ကြိုက်လုပ်ပါ။';

  @override
  String get fontApplyCustomizeSubtitle =>
      'မျက်နှာပြင်နှင့် စာသားအမျိုးအစားအလိုက် ဖောင့်ကို ရွေးပါ။';

  @override
  String get fontCustomizeSection => 'မျက်နှာပြင်အလိုက် စိတ်ကြိုက်လုပ်ပါ။';

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
  String get fontRolePageTitle => 'စာမျက်နှာခေါင်းစဉ်';

  @override
  String get fontRoleSectionHeader => 'ပုဒ်မ ခေါင်းစီး';

  @override
  String get fontRolePrimary => 'မူလတန်းစာသား';

  @override
  String get fontRoleSecondary => 'အလယ်တန်းစာသား';

  @override
  String get fontRoleButton => 'ခလုတ်များ';

  @override
  String get fontRoleDialKey => 'ဒိုင်ခွက်ခလုတ်များ';

  @override
  String get fontSurfaceRecents => 'မကြာမှီ';

  @override
  String get fontSurfaceContacts => 'အဆက်အသွယ်များ';

  @override
  String get fontSurfaceSettings => 'ဆက်တင်များ';

  @override
  String get fontSurfaceDialpad => 'ဒိုင်ခွက်';

  @override
  String get fontSurfaceShell => 'ညွှန်း';

  @override
  String get fontSurfaceDefaultDialer => 'ပုံသေဖုန်းခေါ်ဆိုမှုအမှာစာ';

  @override
  String get fontSurfaceFavourites => 'အကြိုက်ဆုံးများ';

  @override
  String get fontSurfaceBlocked => 'ပိတ်ဆို့ထားသော နံပါတ်များ';

  @override
  String get fontSurfaceContactDetail => 'ဆက်သွယ်ရန်အသေးစိတ်';

  @override
  String get fontSurfaceCallHistory => 'ခေါ်ဆိုမှုမှတ်တမ်း';

  @override
  String get fontSurfaceSheets => 'စာရွက်များနှင့် ရွေးချယ်မှုများ';

  @override
  String get fontSurfaceInCall => 'ဖုန်းခေါ်ဆိုမှုမျက်နှာပြင်';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — အက်ပ်တစ်ခုလုံး';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — ခေါင်းစဉ်များသာ';
  }

  @override
  String get fontSubtitleCustomize => 'မျက်နှာပြင်အလိုက် စိတ်ကြိုက်';

  @override
  String get background => 'နောက်ခံ';

  @override
  String get accent => 'လေယူလေသိမ်း';

  @override
  String get lightBackground => 'အလင်းနောက်ခံ';

  @override
  String get lightAccent => 'အလင်းလေယူလေသိမ်း';

  @override
  String get darkBackground => 'အမှောင်နောက်ခံ';

  @override
  String get darkAccent => 'အမှောင်လေယူလေသိမ်း';

  @override
  String get callBackground => 'နောက်ခံခေါ်ဆိုပါ။';

  @override
  String get appIcon => 'အက်ပ်အိုင်ကွန်';

  @override
  String get answerMethod => 'အဖြေနည်းလမ်း';

  @override
  String get answerSlide => 'ဖြေရန် ပွတ်ဆွဲပါ။';

  @override
  String get answerSlideSubtitle =>
      'Google Phone ကဲ့သို့ ဘားပေါ်တွင် ဘယ်/ညာ ပွတ်ဆွဲပါ။';

  @override
  String get answerButton => 'ခလုတ်ကိုနှိပ်ပါ။';

  @override
  String get answerButtonSubtitle =>
      'အဖြေ သို့မဟုတ် ငြင်းဆိုရန် ခလုတ်များကို တို့ပါ။';

  @override
  String get answerHuawei => 'Huawei စတိုင်';

  @override
  String get answerHuaweiSubtitle =>
      'ဖြေဆိုရန် စက်ဝိုင်းကို အစိမ်းရောင်ဖုန်းသို့ ဆွဲယူပါ။';

  @override
  String get answerHuaweiTileSubtitle =>
      'Huawei — အစိမ်းရောင်/အနီရောင်သို့ ဆွဲယူပါ။';

  @override
  String get calling => 'ခေါ်ဆိုခြင်း။';

  @override
  String get defaultSim => 'မူရင်း SIM';

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
  String get askEveryTime => 'အချိန်တိုင်းမေးပါ။';

  @override
  String get askEveryTimeSubtitle =>
      'ခေါ်ဆိုမှုတစ်ခုစီမတိုင်မီ ဆင်းမ်ရွေးချယ်မှုစနစ်ကို ပြသပါ။';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'ဆင်းမ်ကတ်မတွေ့ပါ။';

  @override
  String couldNotLoadSims(String error) {
    return 'ဆင်းမ်ကတ်များကို ဖွင့်၍မရပါ- $error';
  }

  @override
  String get allFavourites => 'အကြိုက်ဆုံးများ';

  @override
  String get allFavouritesSubtitle =>
      'ပြန်စီရန်၊ ဖယ်ရှားပြီး အဆက်အသွယ်များမှ ထည့်ပါ။';

  @override
  String get blockedNumbers => 'ပိတ်ဆို့ထားသော နံပါတ်များ';

  @override
  String get blockedNumbersSubtitle => 'နံပါတ်များကို ကြည့်ရှုပြီး ပိတ်ဆို့ပါ။';

  @override
  String get soundsAndVibration => 'အသံများနှင့် တုန်ခါမှု';

  @override
  String get soundsAndVibrationSubtitle =>
      'ဖုန်းမြည်သံ၊ တုန်ခါမှု၊ ဒိုင်ခွက်သံများ';

  @override
  String couldNotOpenSettings(String error) {
    return 'ဆက်တင်များကို မဖွင့်နိုင်ပါ- $error';
  }

  @override
  String get frequentlyContacted => 'မကြာခဏဆက်သွယ်သည်။';

  @override
  String get numberOfRecords => 'မှတ်တမ်းအရေအတွက်';

  @override
  String get timePeriod => 'အချိန်ကာလ';

  @override
  String get periodLast24Hours => 'နောက်ဆုံး ၂၄ နာရီ';

  @override
  String get periodLast24HoursSubtitle => 'ပြီးခဲ့သောနေ့မှ ဖုန်းခေါ်ဆိုမှုများ';

  @override
  String get periodLast7Days => 'လွန်ခဲ့သော 7 ရက်';

  @override
  String get periodLast7DaysSubtitle =>
      'ပြီးခဲ့သော သီတင်းပတ်က ဖုန်းခေါ်ဆိုမှုများ';

  @override
  String get periodLast30Days => 'လွန်ခဲ့သော ရက် 30';

  @override
  String get periodLast30DaysSubtitle => 'ပြီးခဲ့သည့်လက ဖုန်းခေါ်ဆိုမှုများ';

  @override
  String get periodLast12Months => 'လွန်ခဲ့သော 12 လ';

  @override
  String get periodLast12MonthsSubtitle =>
      'လွန်ခဲ့သည့်နှစ်က ဖုန်းခေါ်ဆိုမှုများ';

  @override
  String get periodAllTime => 'အချိန်တိုင်း';

  @override
  String get periodAllTimeSubtitle => 'ခေါ်ဆိုမှုမှတ်တမ်းတစ်ခုလုံး';

  @override
  String get frequentMaxOff => 'ပိတ်သည်။';

  @override
  String frequentMaxCount(int count) {
    return '$count အဆက်အသွယ်များ';
  }

  @override
  String get torchBlink => 'မီးတုတ်မှိတ်တုတ်';

  @override
  String get torchIncomingCall => 'အဝင်ခေါ်ဆိုမှု မီးတုတ်';

  @override
  String get torchOutgoingCall => 'အထွက်ခေါ်ဆိုမှု မီးရှူးတိုင်';

  @override
  String get torchOngoingCall => 'ခေါ်ဆိုနေဆဲ မီးတိုင်';

  @override
  String get torchIncomingInterval => 'အဝင်မျက်တောင်ခတ်ကြားကာလ';

  @override
  String get torchOutgoingInterval => 'အထွက်မျက်တောင်ခတ်ကြားကာလ';

  @override
  String get torchOngoingInterval => 'လက်ရှိ မျက်တောင်ခတ်သည့်ကြားကာလ';

  @override
  String get torchOff => 'ပိတ်သည်။';

  @override
  String get torchOffIncomingSubtitle => 'အသံမြည်နေချိန် မီးရှူးမီးမရှိ။';

  @override
  String get torchOffOutgoingSubtitle => 'ဖုန်းခေါ်ဆိုနေစဉ် မီးခလုတ်မရှိပါ။';

  @override
  String get torchOffOngoingSubtitle => 'ခေါ်ဆိုနေစဉ်အတွင်း မီးတုတ်မရှိပါ။';

  @override
  String get torchFixedInterval => 'ပုံသေကြားကာလ';

  @override
  String get torchFixedIntervalSubtitle =>
      'သတ်မှတ်အမြန်နှုန်းဖြင့် မျက်တောင်ခတ်ပါ။';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds ၎';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds မျက်တောင်ခတ်';
  }

  @override
  String get flashlightUnavailable => 'ဤစက်တွင် ဓာတ်မီးမရရှိနိုင်ပါ။';

  @override
  String get glyphLights => 'Glyph မီးများ';

  @override
  String get glyphCallingAnimation => 'Glyph ခေါ် ကာတွန်း';

  @override
  String get glyphOngoingAnimation => 'Glyph လုပ်ဆဲခေါ်ဆိုမှု ကာတွန်း';

  @override
  String get glyphNone => 'တစ်ခုမှ';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'အထွက်ခေါ်ဆိုမှုအတွက် Glyph မီးများကို ပိတ်ပါ။';

  @override
  String get glyphNoneInCallSubtitle =>
      'ခေါ်ဆိုနေစဉ်တွင် Glyph မီးများကို ပိတ်ပါ။';

  @override
  String get glyphBreathProgress => 'ထွက်သက်နှင့်တိုးတက်မှု';

  @override
  String get glyphBreathProgressSubtitle =>
      'အသက် 65 နှစ်ကျော်တွင် လိုင်းပြည့်နေချိန်တွင် မီးလုံးများ အသက်ရှူသည်။';

  @override
  String get glyphAccumulate => 'စုပြုံ';

  @override
  String get glyphAccumulateSubtitle =>
      'မီးလုံး C1-C4 တွင် လှုပ်ရှားသက်ဝင်မှုကို စုစည်းနေသည်။';

  @override
  String get glyphSingle => 'လူပျို';

  @override
  String get glyphSingleSubtitle =>
      'C1-C4 တစ်လျှောက် ရွေ့လျားနေသော အလင်းရောင်တစ်ခု';

  @override
  String get glyphBreath => 'ရူ';

  @override
  String get glyphBreathSubtitle => 'မီးများနှင့် အရှိန်ကို ရွေးပါ။';

  @override
  String get glyphSteady => 'တည်ငြိမ်သည်။';

  @override
  String get glyphSteadySubtitle =>
      'ရွေးချယ်ထားသော မီးလုံးများသည် ဆက်လက်ပွင့်နေပါသည်။';

  @override
  String get breathSettings => 'Breath ဆက်တင်များ';

  @override
  String get activeLights => 'အသက်ဝင်သောမီးများ';

  @override
  String lightsCount(int count) {
    return '$count မီးများ';
  }

  @override
  String get speedSettings => 'အမြန်နှုန်း ဆက်တင်များ';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms နှောင့်နှေးခြင်း။';
  }

  @override
  String get durationAndSpeed => 'ကြာချိန်နှင့် မြန်နှုန်း';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s ကြာချိန်၊ ${interval}ms ကြားကာလ';
  }

  @override
  String get cancel => 'မလုပ်တော့';

  @override
  String get done => 'ပြီးပြီ။';

  @override
  String get save => 'သိမ်းဆည်းပါ။';

  @override
  String get block => 'ပိတ်ဆို့သည်။';

  @override
  String get delete => 'ဖျက်ပါ။';

  @override
  String get recents => 'မကြာမှီ';

  @override
  String get contacts => 'အဆက်အသွယ်များ';

  @override
  String get hideFavouritesOnRecents =>
      'လတ်တလောများပေါ်တွင် အကြိုက်ဆုံးများကို ဝှက်ထားပါ။';

  @override
  String get showFavouritesOnRecents =>
      'လတ်တလောများပေါ်တွင် အကြိုက်ဆုံးများကို ပြပါ။';

  @override
  String get ongoingCall => 'လက်ရှိခေါ်ဆိုမှု';

  @override
  String get setAsDefaultTitle => 'AS သတ်မှတ်ပါ။\nပုံသေ';

  @override
  String get setAsDefaultBody =>
      'Nothing Dialer ကို အသုံးပြုရန်၊ ၎င်းကို သင်၏ မူရင်းဖုန်းအက်ပ်အဖြစ် သတ်မှတ်ရပါမည်။ ၎င်းသည် သင့်အား ဖုန်းခေါ်ဆိုမှုများကို စီမံခန့်ခွဲရန်၊ မှတ်တမ်းကို ကြည့်ရှုရန်နှင့် Glyph ကာတွန်းများကို အသုံးပြုရန် ခွင့်ပြုသည်။';

  @override
  String get setAsDefaultButton => 'မူရင်းအတိုင်း သတ်မှတ်ပါ။';

  @override
  String get nothingDialerBrand => 'ခေါ်ဆိုမှု ဘာမှမပါ ၁';

  @override
  String get favourites => 'အကြိုက်ဆုံးများ';

  @override
  String get addFavourite => 'အကြိုက်ဆုံးထည့်ပါ။';

  @override
  String get favouritesDrawerHint =>
      'အဆက်အသွယ်များထည့်ရန် မီနူးကိုသုံးပါ။ အံဆွဲအပြင်ဘက်တွင် နှိပ်ပါ သို့မဟုတ် ပိတ်ထားသော ပွတ်ဆွဲပါ။ ၎င်းတို့၏အသေးစိတ်အချက်အလက်များမှ အဆက်အသွယ်တစ်ခုကို ကြယ်ပွင့်ပြပါ သို့မဟုတ် မကြာသေးမီက ခေါ်ဆိုမှုကို ကြာကြာနှိပ်ပါ။';

  @override
  String get menu => 'မီနူး';

  @override
  String get noFavouritesYet =>
      'အကြိုက်ဆုံးများ မရှိသေးပါ။\nတစ်ခုထည့်ရန် မီနူးကိုဖွင့်ပါ၊ သို့မဟုတ် အဆက်အသွယ်တစ်ခုကို ကြယ်ပွင့်ပြပါ။';

  @override
  String get contactsPermissionNeeded =>
      'အဆက်အသွယ်များ ခွင့်ပြုချက် လိုအပ်ပါသည်။';

  @override
  String get chooseContact => 'အဆက်အသွယ်ကို ရွေးပါ။';

  @override
  String get noPhone => 'ဖုန်းမရှိပါ။';

  @override
  String get pickNumber => 'နံပါတ်ရွေးပါ။';

  @override
  String get contactHasNoPhone => 'ဤအဆက်အသွယ်တွင် ဖုန်းနံပါတ်မရှိပါ။';

  @override
  String get blockNumber => 'နံပါတ်ကို ပိတ်ပါ။';

  @override
  String get enterPhoneNumber => 'ဖုန်းနံပါတ်ထည့်ပါ။';

  @override
  String unblockedDisplay(String display) {
    return '$display ပိတ်ဆို့ထားသည်';
  }

  @override
  String get couldNotUnblockNumber => 'နံပါတ်ကို ပြန်ဖွင့်၍မရပါ။';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked ပိတ်ဆို့ထားသည် • $matched ကိုက်ညီသည်။';
  }

  @override
  String get contactsPermissionMissing =>
      'အဆက်အသွယ်များ ခွင့်ပြုချက် ပျောက်ဆုံးနေသည်။ ပြင်ရန် တို့ပါ။';

  @override
  String get noBlockedNumbers => 'ပိတ်ဆို့ထားသောနံပါတ်များမရှိပါ။';

  @override
  String get unknownContact => 'အမည်မသိ အဆက်အသွယ်';

  @override
  String get unblock => 'ပြန်ဖွင့်ပါ။';

  @override
  String get permissionNeeded => 'ခွင့်ပြုချက်လိုအပ်ပါသည်။';

  @override
  String get grantPhonePermission =>
      'သင့်ခေါ်ဆိုမှုမှတ်တမ်းကို ကြည့်ရှုရန် ဖုန်းခွင့်ပြုချက်ပေးပါ။';

  @override
  String get grantContactsPermission =>
      'သင့်လိပ်စာစာအုပ်ကို ကြည့်ရှုရန် အဆက်အသွယ်များအား ခွင့်ပြုချက်ပေးပါ။';

  @override
  String get openSettings => 'ဆက်တင်များကိုဖွင့်ပါ။';

  @override
  String get tryAgain => 'ထပ်ကြိုးစားပါ။';

  @override
  String get couldNotLoadContacts => 'အဆက်အသွယ်များကို မတင်နိုင်ခဲ့ပါ။';

  @override
  String get contactsLoadError =>
      'သင့်လိပ်စာစာအုပ်ကို ဖတ်ရာတွင် တစ်ခုခုမှားသွားပါသည်။';

  @override
  String get noContactsFound => 'အဆက်အသွယ် မတွေ့ပါ။';

  @override
  String get contactsEmptySubtitle =>
      'သင့်စက်မှ အဆက်အသွယ်များ ဤနေရာတွင် ပေါ်လာပါမည်။';

  @override
  String get searchContacts => 'အဆက်အသွယ်များကို ရှာပါ...';

  @override
  String get searchRecentCalls => 'လတ်တလောခေါ်ဆိုမှုများကို ရှာဖွေပါ။';

  @override
  String get fromContacts => 'အဆက်အသွယ်များမှ';

  @override
  String get recentsSearchSection => 'လတ်တလော ရှာဖွေမှု';

  @override
  String get recentsSearchShowContacts =>
      'ရှာဖွေမှုတွင် အဆက်အသွယ်များကို ပြပါ။';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'မကြာသေးမီက ရှာဖွေနေစဉ် ခေါ်ဆိုမှုမှတ်တမ်းရလဒ်များအောက်ရှိ သင့်လိပ်စာစာအုပ်မှ ကိုက်ညီသောလူများကိုလည်း ပြသပါ။';

  @override
  String get voiceSearch => 'အသံရှာဖွေမှု';

  @override
  String get createNewContact => 'အဆက်အသွယ်အသစ်ဖန်တီးပါ။';

  @override
  String callError(String error) {
    return 'ခေါ်ဆိုမှု အမှား- $error';
  }

  @override
  String get noRecentCalls => 'လတ်တလောခေါ်ဆိုမှုများမရှိပါ။';

  @override
  String get callHistoryEmpty =>
      'သင့်ခေါ်ဆိုမှုမှတ်တမ်းကို ဤနေရာတွင် ပေါ်လာပါမည်။';

  @override
  String get loadMore => 'ပိုတင်ပါ။';

  @override
  String get frequentlyContactedHeader => 'မကြာခဏဆက်သွယ်သည်။';

  @override
  String get recentHistory => 'မကြာမှီမှတ်တမ်း';

  @override
  String get noFavouritesRecentsHint =>
      'အကြိုက်ဆုံးများ မရှိသေးပါ။ အဆက်အသွယ်တစ်ခုကို ကြယ်ပွင့်ပြပါ၊ ခေါ်ဆိုမှုတစ်ခုကို ကြာကြာနှိပ်ပါ သို့မဟုတ် အကြိုက်ဆုံးများတက်ဘ်ကို အသုံးပြုပါ။';

  @override
  String get copyNumber => 'နံပါတ်ကို ကူးယူပါ။';

  @override
  String get editNumberBeforeCall => 'မခေါ်ဆိုမီ နံပါတ်ကို တည်းဖြတ်ပါ။';

  @override
  String get removeFromFavourites => 'စိတ်ကြိုက်များမှ ဖယ်ရှားပါ။';

  @override
  String get addToFavourites => 'စိတ်ကြိုက်များထဲသို့ထည့်ပါ။';

  @override
  String get blockNumberQuestion => 'နံပါတ်ကို ပိတ်မလား။';

  @override
  String blockNumberConfirm(String number) {
    return 'သင်သည် $numberထံမှ ဖုန်းခေါ်ဆိုမှုများ သို့မဟုတ် စာတိုများကို လက်ခံရရှိတော့မည် မဟုတ်ပါ။';
  }

  @override
  String get blocked => 'ပိတ်ဆို့ထားသည်။';

  @override
  String get couldNotBlock => 'မပိတ်ဆို့နိုင်ခဲ့ပါ။';

  @override
  String get contactNotOnDevice => 'အဆက်အသွယ်ကို ဤစက်ပစ္စည်းတွင် မသိမ်းဆည်းပါ။';

  @override
  String get unblocked => 'ပိတ်ဆို့ထားသည်။';

  @override
  String get numberCopied => 'နံပါတ်ကို ကူးယူထားသည်။';

  @override
  String get showLess => 'လျှော့ပြပါ။';

  @override
  String get showAllTimes => 'အချိန်တိုင်းကိုပြပါ။';

  @override
  String mostRecent(String time) {
    return 'လတ်တလော · $time';
  }

  @override
  String get videoCall => 'ဗီဒီယိုခေါ်ဆိုမှု';

  @override
  String get couldNotPlaceVideoCall => 'ဗီဒီယိုခေါ်ဆိုမှု မပြုလုပ်နိုင်ခဲ့ပါ။';

  @override
  String get message => 'မက်ဆေ့ချ်';

  @override
  String get couldNotOpenMessaging => 'စာတိုပေးပို့ခြင်းအက်ပ်ကို ဖွင့်၍မရပါ။';

  @override
  String get history => 'သမိုင်း';

  @override
  String get viewContact => 'အဆက်အသွယ်ကြည့်ပါ။';

  @override
  String get addToContact => 'အဆက်အသွယ်သို့ထည့်ပါ။';

  @override
  String get callTypeMissed => 'လွတ်သွားတယ်။';

  @override
  String get callTypeRejected => 'ပယ်ချသည်။';

  @override
  String get callTypeIncoming => 'ဝင်လာ';

  @override
  String get callTypeOutgoing => 'အထွက်';

  @override
  String get today => 'ဒီနေ့';

  @override
  String get yesterday => 'မနေ့က';

  @override
  String get justNow => 'အခုပဲ';

  @override
  String minutesAgo(int count) {
    return '$count မိနစ်က';
  }

  @override
  String hoursAgo(int count) {
    return 'လွန်ခဲ့သော $count နာရီ';
  }

  @override
  String get filterAll => 'အားလုံး';

  @override
  String get filterMissed => 'လွတ်သွားတယ်။';

  @override
  String get filterContacts => 'အဆက်အသွယ်များ';

  @override
  String get filterNonContacts => 'အဆက်အသွယ်မရှိသော';

  @override
  String get iconUpdated =>
      'အိုင်ကွန်ကို အပ်ဒိတ်လုပ်ထားသည်။ သင့်ပင်မစခရင်ကို ပြန်လည်စတင်ရန် အချိန်အနည်းငယ်ကြာနိုင်သည်။';

  @override
  String get iconSavedRelease =>
      'ရွေးချယ်မှုကို သိမ်းဆည်းထားသည်။ ထုတ်ဝေမှုတည်ဆောက်မှုများတွင် ပင်မစခရင်သင်္ကေတသည် အပ်ဒိတ်လုပ်သည်။';

  @override
  String couldNotChangeIcon(String error) {
    return 'အိုင်ကွန်ကို မပြောင်းနိုင်ပါ- $error';
  }

  @override
  String get launcherClassicBlack => 'ဂန္တဝင် (အနက်ရောင်)';

  @override
  String get launcherLight => 'အလင်း';

  @override
  String get launcherNothingRed => 'ဘာအနီမှမရှိ။';

  @override
  String get launcherDarkGrey => 'မီးခိုးရောင်';

  @override
  String get launcherCream => 'မုန့်';

  @override
  String get launcherRetroPhone => 'Retro ဖုန်း';

  @override
  String get launcherRetroPhoneLight => 'ခေတ်ဟောင်းဖုန်း (အလင်း)';

  @override
  String get voiceSearchUnavailable =>
      'အသံရှာဖွေမှုကို ဤစက်ပစ္စည်းတွင် မရရှိနိုင်ပါ။';

  @override
  String voiceSearchFailed(String error) {
    return 'အသံရှာဖွေမှု မအောင်မြင်ပါ- $error';
  }

  @override
  String get customColor => 'စိတ်ကြိုက်';

  @override
  String get selectColor => 'အရောင်ရွေးပါ။';

  @override
  String get reset => 'ပြန်လည်သတ်မှတ်ပါ။';

  @override
  String get simPickerTitle => 'SIM ကို ရွေးပါ။';

  @override
  String get simChooseForCall => 'ဤခေါ်ဆိုမှုအတွက် SIM ကို ရွေးပါ။';

  @override
  String get defaultSimAsk => 'အချိန်တိုင်းမေးပါ။';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'ဆက်သွယ်ရန်အသေးစိတ်';

  @override
  String get call => 'ဖုန်းဆက်ပါ။';

  @override
  String get share => 'မျှဝေပါ။';

  @override
  String get favourite => 'အကြိုက်ဆုံး';

  @override
  String get unfavourite => 'အကြိုက်ဆုံး';

  @override
  String get blockContact => 'အဆက်အသွယ်ကို ပိတ်ပါ။';

  @override
  String get unblockContact => 'အဆက်အသွယ်ကို ပြန်ဖွင့်ပါ။';

  @override
  String get deleteContact => 'အဆက်အသွယ်ကိုဖျက်ပါ။';

  @override
  String get phone => 'ဖုန်း';

  @override
  String get email => 'အီးမေးလ်';

  @override
  String get ringtone => 'ဖုန်းမြည်သံ';

  @override
  String get defaultRingtone => 'ပုံသေ';

  @override
  String get simForContact => 'ဤအဆက်အသွယ်အတွက် SIM';

  @override
  String get callHistoryTitle => 'ခေါ်ဆိုမှုမှတ်တမ်း';

  @override
  String get noCallsWithNumber => 'ဤနံပါတ်ဖြင့် ဖုန်းခေါ်ဆိုခြင်း မရှိပါ။';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyph ကာတွန်း';

  @override
  String get inCallGlyphAnimationStyle => 'ဖုန်းခေါ်ဆိုမှုအတွင်း Glyph ကာတွန်း';

  @override
  String get recordsOff => 'ပိတ်သည်။';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'မူရင်း SIM';

  @override
  String get nothingPhoneOnly => 'ဖုန်းတစ်လုံးတည်းအတွက် ဘာမှမရှိပါဘူး။';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph လုပ်ဆောင်ချက်များသည် Nothing Phone လိုအပ်သည်။';

  @override
  String get custom => 'စိတ်ကြိုက်';

  @override
  String presetColorHex(String hex) {
    return 'ကြိုတင်သတ်မှတ်ခြင်း · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'စိတ်ကြိုက် · $hex';
  }

  @override
  String get oneContact => '1 အဆက်အသွယ်';

  @override
  String upToContacts(int count) {
    return '$count အဆက်အသွယ်များအထိ';
  }

  @override
  String get answerButtonTapSubtitle => 'ဖြေဆိုရန် ခလုတ်ကို တို့ပါ။';

  @override
  String get filterCalls => 'ခေါ်ဆိုမှုများကို စစ်ထုတ်ပါ။';

  @override
  String get filterTooltip => 'ဇကာ';

  @override
  String get settingsTooltip => 'ဆက်တင်များ';

  @override
  String get filterAllSubtitle => 'ခေါ်ဆိုမှုမှတ်တမ်းတစ်ခုလုံး';

  @override
  String get filterMissedSubtitle => 'လွဲချော်ပြီး ငြင်းပယ်ခဲ့သည်။';

  @override
  String get filterContactsSubtitle =>
      'သိမ်းဆည်းထားသော အဆက်အသွယ်တစ်ခုနှင့် ကိုက်ညီသောခေါ်ဆိုမှုများ';

  @override
  String get filterNonContactsSubtitle =>
      'သင့်လိပ်စာစာအုပ်တွင် နံပါတ်များမပါပါ။';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'လက်ရှိခေါ်ဆိုမှု- $detail';
  }

  @override
  String get defaultSimForCalls => 'ဖုန်းခေါ်ဆိုမှုအတွက် မူရင်း SIM';

  @override
  String get blinkInterval => 'မျက်တောင်ခတ်ခြား';

  @override
  String get close => 'ပိတ်လိုက်';

  @override
  String get frequentlyContactedInfoBody =>
      'သင်ရွေးချယ်သောအချိန်ကာလအတွင်း နံပါတ်တစ်ခုစီနှင့် သင်အဝင်၊ အထွက်၊ လွတ်သွားသော၊ သို့မဟုတ် ငြင်းပယ်ခံရသော ခေါ်ဆိုမှုများအပေါ် အခြေခံ၍ မကြာသေးမီများတက်ဘ်၏ ထိပ်တွင် သင့်အခေါ်အများဆုံး ဖုန်းနံပါတ်များကို ပြသသည်။\n\nမှတ်တမ်းအရေအတွက်- ၎င်းကိုပိတ်ရန် 0 ဟုသတ်မှတ်ထားသည်။ ထိပ်တန်းအဆက်အသွယ်များစွာကိုပြသရန် 1-20 ကိုသုံးပါ။\n\nအနည်းဆုံး အဆက်အသွယ်တစ်ခုကို ပြသထားမှသာ အချိန်ကာလ အကျုံးဝင်ပါသည်။';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$countမီးများ၊ ${ms}ms အမြန်နှုန်း';
  }

  @override
  String get deleteContactQuestion => 'အဆက်အသွယ်ကို ဖျက်မလား။';

  @override
  String get deleteContactBody =>
      'ဤအဆက်အသွယ်ကို သင့်စက်ပစ္စည်းမှ အပြီးအပိုင်ဖျက်လိုက်ပါမည်။';

  @override
  String get blockContactQuestion => 'အဆက်အသွယ်ကို ပိတ်မလား။';

  @override
  String get unblockContactQuestion => 'အဆက်အသွယ်ကို ပြန်ဖွင့်မလား။';

  @override
  String get blockContactBody =>
      'သင်သည် ဤအဆက်အသွယ်ထံမှ ဖုန်းခေါ်ဆိုမှုများ သို့မဟုတ် စာတိုများကို လက်ခံရရှိတော့မည် မဟုတ်ပါ။';

  @override
  String get unblockContactBody =>
      'သင်သည် ဤအဆက်အသွယ်ထံမှ ဖုန်းခေါ်ဆိုမှုများနှင့် စာတိုများကို စတင်လက်ခံပါမည်။';

  @override
  String get contactBlocked => 'အဆက်အသွယ် ပိတ်ဆို့ထားသည်။';

  @override
  String get contactUnblocked => 'အဆက်အသွယ်ကို ပိတ်ဆို့ထားသည်။';

  @override
  String get noPhoneNumbersToBlock => 'ပိတ်ဆို့ရန် ဖုန်းနံပါတ်မရှိပါ။';

  @override
  String get simSameAsSystem => 'စနစ်အတိုင်းပါပဲ။';

  @override
  String get simSameAsSystemSubtitle =>
      'ဆက်တင်များတွင် မူရင်း SIM ကို လိုက်နာသည်။';

  @override
  String get simAskEveryTimeForContact =>
      'ဤအဆက်အသွယ်အတွက် SIM ရွေးပေးသူကို အမြဲပြပါ။';

  @override
  String get ringtoneSetForContact =>
      'ဤအဆက်အသွယ်အတွက် ဖုန်းမြည်သံကို တစ်ကမ္ဘာလုံးတွင် သတ်မှတ်ထားသည်။';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'ဖုန်းမြည်သံ ရွေးရန် မအောင်မြင်ပါ- $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'အမှား- $error';
  }

  @override
  String get noCallHistoryFound => 'ခေါ်ဆိုမှုမှတ်တမ်းကို ရှာမတွေ့ပါ။';

  @override
  String get speedDialVoicemail => 'အမြန်ခေါ်ဆိုမှု- အသံမေးလ်';

  @override
  String shareContactSubject(String name) {
    return 'ဆက်သွယ်ရန်- $name';
  }

  @override
  String get contactInfo => 'ဆက်သွယ်ရန်အချက်အလက်';

  @override
  String get dontAskAgainSim => 'ထပ်မမေးနဲ့';

  @override
  String get simDontAskAgainSubtitle =>
      'ဤ SIM ကို မူရင်းအဖြစ် အသုံးပြုပါ (ဆက်တင်များတွင် ပြောင်းလဲခြင်း)';

  @override
  String get addContact => 'အဆက်အသွယ်ထည့်ပါ။';

  @override
  String get createContact => 'အဆက်အသွယ်ဖန်တီးပါ။';

  @override
  String get paste => 'ငါးပိ';

  @override
  String get clear => 'ရှင်းပါတယ်။';

  @override
  String get returnToCall => 'ခေါ်ရန် ပြန်သွားပါ။';

  @override
  String get numberOfRecordsTitle => 'မှတ်တမ်းအရေအတွက်';

  @override
  String get recordsPickerSubtitle =>
      'ပြသရန် မကြာခဏ ဆက်သွယ်ထားသော အကောင့်အရေအတွက်မည်မျှရှိသည် (0 = off)';

  @override
  String get torchInfoTitle => 'မီးတုတ်မှိတ်တုတ်';

  @override
  String get torchInfoBody =>
      'အဝင်၊ အထွက် သို့မဟုတ် ဖုန်းခေါ်ဆိုမှုများ ပြုလုပ်နေစဉ် ကင်မရာဖလက်ရှ်ကို မှိတ်တုတ်မှိတ်တုတ်ထားပါ။ Glyph မီးလုံးများ၏ သီးခြား။';

  @override
  String get glyphMapTitle => 'Glyph အပြင်အဆင်';

  @override
  String get glyphMapBody =>
      'Nothing Phone 1 Glyph LED ဇုန်များ။ အထွက်နှင့် ခေါ်ဆိုမှုအတွင်း ကာတွန်းရုပ်ပုံများသည် ဤချန်နယ်များကို အသုံးပြုသည်။';

  @override
  String get answerMethodTitle => 'အဖြေနည်းလမ်း';

  @override
  String get glyphOutgoingCallStyleTitle => 'အထွက်ခေါ်ဆိုမှုပုံစံ';

  @override
  String get glyphInCallAnimationTitle => 'Glyph in-call animation';

  @override
  String get themePickerTitle => 'အပြင်အဆင်';

  @override
  String get torchIncomingTitle => 'အဝင်ခေါ်ဆိုမှု မီးတုတ်';

  @override
  String get torchOutgoingTitle => 'အထွက်ခေါ်ဆိုမှု မီးရှူးတိုင်';

  @override
  String get torchOngoingTitle => 'ခေါ်ဆိုနေဆဲ မီးတိုင်';

  @override
  String get timePeriodTitle => 'အချိန်ကာလ';

  @override
  String get ok => 'အိုကေ';

  @override
  String get confirmDeleteCall => 'ဤခေါ်ဆိုမှုမှတ်တမ်းကို ဖျက်မလား။';

  @override
  String get confirmDeleteAllCalls =>
      'ဤနံပါတ်ဖြင့်ခေါ်ဆိုမှုအားလုံးကို ဖျက်မလား။';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'မက်ဆေ့ခ်ျပို့ပါ။';

  @override
  String get addToExistingContactAction => 'အဆက်အသွယ်တစ်ခုသို့ ထည့်ပါ။';

  @override
  String get mobileLabel => 'မိုဘိုင်း';

  @override
  String get callingSimForContactTitle => 'ဤအဆက်အသွယ်အတွက် SIM ခေါ်ဆိုနေသည်။';

  @override
  String get contactSettings => 'ဆက်သွယ်ရန် ဆက်တင်များ';

  @override
  String get setCallingSim => 'ဖုန်းခေါ်ဆိုခြင်း SIM ကို သတ်မှတ်ပါ။';

  @override
  String get contactRingtone => 'ဆက်သွယ်ရန် ဖုန်းမြည်သံ';

  @override
  String get shareContact => 'အဆက်အသွယ်မျှဝေပါ။';

  @override
  String get blockNumbers => 'နံပါတ်များကိုပိတ်ဆို့ပါ။';

  @override
  String get unblockNumbers => 'နံပါတ်များကို ပြန်ဖွင့်ပါ။';

  @override
  String get connectedApps => 'ချိတ်ဆက်ထားသောအက်ပ်များ';

  @override
  String get simNotSet => 'မသတ်မှတ်ထားဘူး။';

  @override
  String get ringtoneDefault => 'ပုံသေ';

  @override
  String get customRingtone => 'စိတ်ကြိုက်';

  @override
  String get aboutSection => 'အကြောင်း';

  @override
  String get aboutFeedbackSection => 'အကြောင်း & အကြံပြုချက်';

  @override
  String get aboutDescription =>
      'Dialer သည် open source မဟုတ်ပါ။ အကယ်၍ သင်သည် ဆော့ဖ်ဝဲရေးသားသူဖြစ်ပါက၊ သင်သည် ကုဒ်ကိုရှာဖွေပြီး ပါဝင်ကူညီရန် ကြိုဆိုပါသည်။';

  @override
  String get aboutViewSource => 'GitHub တွင်ကြည့်ရှုပါ။';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'လင့်ခ်ကို ဖွင့်၍မရပါ။';

  @override
  String get reviewSection => 'သုံးသပ်ချက်';

  @override
  String get reviewDescription =>
      'Noth Dialer ကို နှစ်သက်ပါသလား။ Google Play ရှိ သင့်အဆင့်သတ်မှတ်ချက်သည် အခြားသူများ အက်ပ်ကို ရှာဖွေရာတွင် ကူညီပေးသည်။';

  @override
  String get reviewRateOnPlay => 'Google Play တွင် အဆင့်သတ်မှတ်ပါ။';

  @override
  String get reviewRateOnPlaySubtitle => 'အက်ပ်ကို မထွက်ဘဲ အဆင့်သတ်မှတ်ပါ။';

  @override
  String get reviewCouldNotOpen => 'Google Play ကို ဖွင့်၍မရပါ။';

  @override
  String get breathSpeed => 'အသက်ရှုနှုန်း';

  @override
  String get breathSpeedBlinkHint =>
      'အနိမ့် = မှိတ်တုတ်၊ ပိုမြင့် = နှေးကွေးသောအသက်ရှု';

  @override
  String get speedSliderHint => 'အနိမ့် = ပိုမြန်၊ ပိုမြင့် = နှေးသည်';

  @override
  String get swatchDefault => 'ပုံသေ';

  @override
  String get customAccentColorPicker => 'စိတ်ကြိုက် လေယူလေသိမ်းအရောင်';

  @override
  String get customLightBackgroundPicker => 'စိတ်ကြိုက်အလင်းနောက်ခံ';

  @override
  String get customDarkBackgroundPicker => 'စိတ်ကြိုက်အမှောင်နောက်ခံ';

  @override
  String get customCallBackgroundPicker => 'စိတ်ကြိုက်ခေါ်ဆိုမှုနောက်ခံ';

  @override
  String get ongoingCallStyleTitle => 'လက်ရှိခေါ်ဆိုမှုပုံစံ';

  @override
  String get glyphMapUnavailable => 'Glyph မြေပုံကို မရနိုင်ပါ။';

  @override
  String get animationDelayRange => 'အန်နီမေးရှင်းနှောင့်နှေးခြင်း (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Animation Delay (0.1s - 10s)';

  @override
  String get inCallMute => 'အသံတိတ်';

  @override
  String get inCallKeypad => 'ကီးဘုတ်';

  @override
  String get inCallSpeaker => 'စပီကာ';

  @override
  String get inCallMore => 'နောက်ထပ်';

  @override
  String get inCallBluetooth => 'ဘလူးတုသ်';

  @override
  String get inCallPhone => 'ဖုန်း';

  @override
  String get inCallAddCall => 'ခေါ်ဆိုမှုထည့်ပါ။';

  @override
  String get inCallChangeSim => 'SIM ကိုပြောင်းပါ။';

  @override
  String get inCallDecline => 'ငြင်းသည်။';

  @override
  String get inCallAnswer => 'ဖြေ';

  @override
  String get inCallMessage => 'မက်ဆေ့ချ်';

  @override
  String get inCallCalling => 'ခေါ်နေသည်...';

  @override
  String get inCallIncoming => 'အဝင်ခေါ်ဆိုမှု';

  @override
  String get inCallSelectSim => 'SIM ကို ရွေးပါ...';

  @override
  String get inCallSwitchingSim => 'SIM ပြောင်းနေသည်…';

  @override
  String get inCallCallEnded => 'ခေါ်ဆိုမှုပြီးသွားပါပြီ။';

  @override
  String inCallCallingVia(String sim) {
    return '$sim မှတဆင့် ဖုန်းခေါ်ဆိုခြင်း';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '<b>$sim</b> မှတဆင့် ဖုန်းခေါ်ဆိုခြင်း';
  }

  @override
  String get inCallChooseSim => 'ဤခေါ်ဆိုမှုအတွက် SIM ကို ရွေးပါ။';

  @override
  String get inCallDragAnswerDecline =>
      'ဖြေရန် ညာဘက်ကို ဖိဆွဲပါ · ငြင်းပယ်ရန် ဘယ်ဘက်သို့ ဖိဆွဲပါ။';

  @override
  String inCallMobileNumber(String number) {
    return 'မိုဘိုင်း $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (လက်ရှိ)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return '<b>$sim</b> မှ တစ်ဆင့် ဖုန်းခေါ်ဆိုပါ။';
  }

  @override
  String get inCallCallFrom => 'ထံမှဖုန်းဆက်ပါ။';

  @override
  String get inCallUnknown => 'မသိ';

  @override
  String get selectContactRingtone => 'အဆက်အသွယ်ဖုန်းမြည်သံကို ရွေးပါ။';

  @override
  String get speakToSearchPrompt => 'ရှာဖွေရန် စကားပြောပါ။';

  @override
  String get phonePermissionRequired => 'ဖုန်းခွင့်ပြုချက် လိုအပ်ပါသည်။';

  @override
  String callFailed(String error) {
    return 'ခေါ်ဆိုမှု မအောင်မြင်ပါ- $error';
  }

  @override
  String get callPermissionDenied => 'ခေါ်ဆိုခွင့်ကို ငြင်းဆိုထားသည်။';

  @override
  String get alreadyDefaultDialer =>
      'မူရင်းဖုန်းခေါ်ဆိုသူအဖြစ် သတ်မှတ်ပြီးဖြစ်သည်။';

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
