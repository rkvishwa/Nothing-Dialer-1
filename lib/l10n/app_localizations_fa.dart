// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'هیچی شماره گیر';

  @override
  String get settings => 'تنظیمات';

  @override
  String get settingsSearchHint => 'تنظیمات جستجو';

  @override
  String get settingsSearchNoResults => 'تنظیماتی پیدا نشد';

  @override
  String get general => 'ژنرال';

  @override
  String get theme => 'موضوع';

  @override
  String get themeSystemDefault => 'پیش فرض سیستم';

  @override
  String get themeLight => 'نور';

  @override
  String get themeDark => 'تاریک';

  @override
  String get themeFollowSystem => 'تنظیمات سیستم را دنبال کنید';

  @override
  String get themeAlwaysLight => 'همیشه از تم روشن استفاده کنید';

  @override
  String get themeAlwaysDark => 'همیشه از تم تیره استفاده کنید';

  @override
  String get language => 'زبان';

  @override
  String get languageDeviceDefault => 'پیش فرض دستگاه';

  @override
  String get languagePickerTitle => 'زبان';

  @override
  String get languageSearchHint => 'جستجوی زبان ها';

  @override
  String get font => 'فونت';

  @override
  String get fontSystem => 'پیش فرض سیستم';

  @override
  String get fontNdot => 'هیچی (نه)';

  @override
  String get fontSerif => 'ربات سریف';

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
      'دانلود فونت انجام نشد. اتصال خود را بررسی کنید و دوباره امتحان کنید.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'فونت';

  @override
  String get fontPreviewSample => 'هیچی شماره گیر';

  @override
  String get fontAppWide => 'فونت برنامه';

  @override
  String get fontApplyTo => 'درخواست به';

  @override
  String get fontApplyEntireApp => 'کل برنامه';

  @override
  String get fontApplyEntireAppSubtitle =>
      'فونت یکسان در همه جا، از جمله در تماس';

  @override
  String get fontApplyTitlesOnly => 'عناوین و سرصفحه ها';

  @override
  String get fontApplyTitlesOnlySubtitle => 'فقط عناوین بزرگ و سرصفحه ها';

  @override
  String get fontApplyCustomize => 'سفارشی کنید';

  @override
  String get fontApplyCustomizeSubtitle =>
      'فونت را در هر صفحه و نوع متن انتخاب کنید';

  @override
  String get fontCustomizeSection => 'سفارشی کردن بر اساس صفحه نمایش';

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
  String get fontRolePageTitle => 'عنوان صفحه';

  @override
  String get fontRoleSectionHeader => 'سربرگ بخش';

  @override
  String get fontRolePrimary => 'متن اصلی';

  @override
  String get fontRoleSecondary => 'متن ثانویه';

  @override
  String get fontRoleButton => 'دکمه ها';

  @override
  String get fontRoleDialKey => 'کلیدهای صفحه شماره گیری';

  @override
  String get fontSurfaceRecents => 'اخیر';

  @override
  String get fontSurfaceContacts => 'مخاطبین';

  @override
  String get fontSurfaceSettings => 'تنظیمات';

  @override
  String get fontSurfaceDialpad => 'صفحه شماره گیری';

  @override
  String get fontSurfaceShell => 'ناوبری';

  @override
  String get fontSurfaceDefaultDialer => 'درخواست شماره گیر پیش فرض';

  @override
  String get fontSurfaceFavourites => 'موارد دلخواه';

  @override
  String get fontSurfaceBlocked => 'شماره های مسدود شده';

  @override
  String get fontSurfaceContactDetail => 'جزئیات تماس';

  @override
  String get fontSurfaceCallHistory => 'سابقه تماس';

  @override
  String get fontSurfaceSheets => 'برگه ها و جمع کننده ها';

  @override
  String get fontSurfaceInCall => 'صفحه نمایش در تماس';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font - کل برنامه';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — فقط عنوان';
  }

  @override
  String get fontSubtitleCustomize => 'سفارشی در هر صفحه نمایش';

  @override
  String get background => 'پس زمینه';

  @override
  String get accent => 'لهجه';

  @override
  String get lightBackground => 'پس زمینه روشن';

  @override
  String get lightAccent => 'لهجه سبک';

  @override
  String get darkBackground => 'پس زمینه تیره';

  @override
  String get darkAccent => 'لهجه تیره';

  @override
  String get callBackground => 'پس زمینه تماس';

  @override
  String get appIcon => 'نماد برنامه';

  @override
  String get answerMethod => 'روش جواب دادن';

  @override
  String get answerSlide => 'برای پاسخ دادن اسلاید کنید';

  @override
  String get answerSlideSubtitle =>
      'مانند Google Phone روی نوار به چپ/راست بکشید';

  @override
  String get answerButton => 'دکمه ضربه بزنید';

  @override
  String get answerButtonSubtitle => 'روی دکمه های پاسخ یا رد ضربه بزنید';

  @override
  String get answerHuawei => 'سبک هواوی';

  @override
  String get answerHuaweiSubtitle =>
      'برای پاسخ، دایره را به تلفن سبز رنگ بکشید';

  @override
  String get answerHuaweiTileSubtitle => 'هواوی - به رنگ سبز/قرمز بکشید';

  @override
  String get calling => 'تماس گرفتن';

  @override
  String get defaultSim => 'سیم کارت پیش فرض';

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
  String get askEveryTime => 'هر بار بپرس';

  @override
  String get askEveryTimeSubtitle =>
      'قبل از هر تماس انتخابگر سیم کارت را نشان دهید';

  @override
  String simSlot(int slot) {
    return 'سیم کارت $slot';
  }

  @override
  String get noSimCardsFound => 'سیم کارتی پیدا نشد';

  @override
  String couldNotLoadSims(String error) {
    return 'سیم‌کارت‌ها بارگیری نشد: $error';
  }

  @override
  String get allFavourites => 'همه موارد دلخواه';

  @override
  String get allFavouritesSubtitle =>
      'دوباره سفارش دهید، حذف کنید و از مخاطبین اضافه کنید';

  @override
  String get blockedNumbers => 'شماره های مسدود شده';

  @override
  String get blockedNumbersSubtitle => 'مشاهده و رفع انسداد شماره ها';

  @override
  String get soundsAndVibration => 'صداها و ارتعاش';

  @override
  String get soundsAndVibrationSubtitle =>
      'آهنگ زنگ، لرزش، صداهای صفحه شماره گیری';

  @override
  String couldNotOpenSettings(String error) {
    return 'تنظیمات باز نشد: $error';
  }

  @override
  String get frequentlyContacted => 'اغلب تماس گرفته شده است';

  @override
  String get numberOfRecords => 'تعداد رکوردها';

  @override
  String get timePeriod => 'دوره زمانی';

  @override
  String get periodLast24Hours => '24 ساعت گذشته';

  @override
  String get periodLast24HoursSubtitle => 'تماس های روز گذشته';

  @override
  String get periodLast7Days => '7 روز گذشته';

  @override
  String get periodLast7DaysSubtitle => 'تماس های هفته گذشته';

  @override
  String get periodLast30Days => '30 روز گذشته';

  @override
  String get periodLast30DaysSubtitle => 'تماس های ماه گذشته';

  @override
  String get periodLast12Months => '12 ماه گذشته';

  @override
  String get periodLast12MonthsSubtitle => 'تماس های سال گذشته';

  @override
  String get periodAllTime => 'تمام زمان';

  @override
  String get periodAllTimeSubtitle => 'کل تاریخچه تماس';

  @override
  String get frequentMaxOff => 'خاموش';

  @override
  String frequentMaxCount(int count) {
    return '$count مخاطبین';
  }

  @override
  String get torchBlink => 'چشمک زدن مشعل';

  @override
  String get torchIncomingCall => 'مشعل تماس ورودی';

  @override
  String get torchOutgoingCall => 'مشعل تماس خروجی';

  @override
  String get torchOngoingCall => 'مشعل تماس در حال انجام';

  @override
  String get torchIncomingInterval => 'فاصله چشمک زدن ورودی';

  @override
  String get torchOutgoingInterval => 'فاصله چشمک زدن خروجی';

  @override
  String get torchOngoingInterval => 'فاصله چشمک زدن مداوم';

  @override
  String get torchOff => 'خاموش';

  @override
  String get torchOffIncomingSubtitle => 'بدون مشعل هنگام زنگ زدن';

  @override
  String get torchOffOutgoingSubtitle => 'بدون مشعل هنگام شماره گیری';

  @override
  String get torchOffOngoingSubtitle => 'بدون مشعل در طول تماس فعال';

  @override
  String get torchFixedInterval => 'فاصله ثابت';

  @override
  String get torchFixedIntervalSubtitle => 'با سرعت تعیین شده پلک بزنید';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds ثانیه';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds پلک زدن';
  }

  @override
  String get flashlightUnavailable => 'چراغ قوه در این دستگاه موجود نیست';

  @override
  String get glyphLights => 'چراغ های گلیف';

  @override
  String get glyphCallingAnimation => 'انیمیشن فراخوانی گلیف';

  @override
  String get glyphOngoingAnimation => 'پویانمایی تماس مداوم را نشان دهید';

  @override
  String get glyphNone => 'هیچ کدام';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'چراغ های Glyph را برای تماس های خروجی غیرفعال کنید';

  @override
  String get glyphNoneInCallSubtitle =>
      'هنگام تماس فعال، چراغ‌های Glyph را غیرفعال کنید';

  @override
  String get glyphBreathProgress => 'نفس و پیشرفت';

  @override
  String get glyphBreathProgressSubtitle =>
      'نورها نفس می کشند در حالی که خط بیش از 65 ثانیه پر می شود';

  @override
  String get glyphAccumulate => 'انباشته کردن';

  @override
  String get glyphAccumulateSubtitle =>
      'انباشته شدن انیمیشن روی چراغ های C1-C4';

  @override
  String get glyphSingle => 'مجرد';

  @override
  String get glyphSingleSubtitle => 'تک نوری که در سراسر C1-C4 حرکت می کند';

  @override
  String get glyphBreath => 'نفس';

  @override
  String get glyphBreathSubtitle => 'نور و سرعت را انتخاب کنید';

  @override
  String get glyphSteady => 'ثابت';

  @override
  String get glyphSteadySubtitle => 'چراغ های انتخاب شده روشن می مانند';

  @override
  String get breathSettings => 'تنظیمات تنفس';

  @override
  String get activeLights => 'چراغ های فعال';

  @override
  String lightsCount(int count) {
    return '$count چراغ';
  }

  @override
  String get speedSettings => 'تنظیمات سرعت';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms تاخیر';
  }

  @override
  String get durationAndSpeed => 'مدت زمان و سرعت';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'مدت زمان $duration ثانیه، فاصله زمانی ${interval}ms';
  }

  @override
  String get cancel => 'لغو کنید';

  @override
  String get done => 'انجام شد';

  @override
  String get save => 'ذخیره کنید';

  @override
  String get block => 'مسدود کردن';

  @override
  String get delete => 'حذف کنید';

  @override
  String get recents => 'اخیر';

  @override
  String get contacts => 'مخاطبین';

  @override
  String get hideFavouritesOnRecents =>
      'موارد دلخواه را در موارد اخیر پنهان کنید';

  @override
  String get showFavouritesOnRecents => 'نمایش موارد دلخواه در موارد اخیر';

  @override
  String get ongoingCall => 'تماس در حال انجام';

  @override
  String get setAsDefaultTitle => 'تنظیم AS\nپیش فرض';

  @override
  String get setAsDefaultBody =>
      'برای استفاده از Nothing Dialer، باید به عنوان برنامه پیش‌فرض تلفن شما تنظیم شود. این به شما امکان می دهد تماس ها را مدیریت کنید، تاریخچه را مشاهده کنید و از انیمیشن های Glyph استفاده کنید.';

  @override
  String get setAsDefaultButton => 'تنظیم به عنوان پیش فرض';

  @override
  String get nothingDialerBrand => 'شماره گیر هیچی 1';

  @override
  String get favourites => 'موارد دلخواه';

  @override
  String get addFavourite => 'مورد علاقه را اضافه کنید';

  @override
  String get favouritesDrawerHint =>
      'از منو برای افزودن مخاطبین استفاده کنید. به بیرون کشو ضربه بزنید یا آن را بکشید. یک مخاطب را از اطلاعات آنها ستاره دار کنید، یا تماسی را در «اخیرا» به مدت طولانی فشار دهید.';

  @override
  String get menu => 'منو';

  @override
  String get noFavouritesYet =>
      'هنوز موارد دلخواه وجود ندارد.\nمنو را برای افزودن یک مخاطب باز کنید یا یک مخاطب را ستاره دار کنید.';

  @override
  String get contactsPermissionNeeded => 'مجوز مخاطبین مورد نیاز است';

  @override
  String get chooseContact => 'مخاطب را انتخاب کنید';

  @override
  String get noPhone => 'تلفن وجود ندارد';

  @override
  String get pickNumber => 'شماره را انتخاب کنید';

  @override
  String get contactHasNoPhone => 'این مخاطب شماره تلفن ندارد';

  @override
  String get blockNumber => 'شماره بلوک';

  @override
  String get enterPhoneNumber => 'شماره تلفن را وارد کنید';

  @override
  String unblockedDisplay(String display) {
    return 'رفع انسداد $display';
  }

  @override
  String get couldNotUnblockNumber => 'شماره رفع انسداد نشد';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked مسدود شده • $matched مطابقت دارد';
  }

  @override
  String get contactsPermissionMissing =>
      'مجوز مخاطبین وجود ندارد. برای رفع مشکل ضربه بزنید.';

  @override
  String get noBlockedNumbers => 'بدون شماره های مسدود شده';

  @override
  String get unknownContact => 'مخاطب ناشناس';

  @override
  String get unblock => 'رفع انسداد';

  @override
  String get permissionNeeded => 'مجوز لازم است';

  @override
  String get grantPhonePermission =>
      'به تلفن اجازه دهید سابقه تماس شما را ببیند.';

  @override
  String get grantContactsPermission =>
      'به مخاطبین اجازه دهید دفترچه آدرس شما را ببینند.';

  @override
  String get openSettings => 'تنظیمات را باز کنید';

  @override
  String get tryAgain => 'دوباره امتحان کنید';

  @override
  String get couldNotLoadContacts => 'مخاطبین بارگیری نشد';

  @override
  String get contactsLoadError => 'هنگام خواندن دفترچه آدرس شما مشکلی پیش آمد.';

  @override
  String get noContactsFound => 'هیچ مخاطبی پیدا نشد';

  @override
  String get contactsEmptySubtitle =>
      'مخاطبین دستگاه شما در اینجا ظاهر می شوند.';

  @override
  String get searchContacts => 'جستجوی مخاطبین…';

  @override
  String get searchRecentCalls => 'تماس های اخیر را جستجو کنید';

  @override
  String get fromContacts => 'از مخاطبین';

  @override
  String get recentsSearchSection => 'جستجوی اخیر';

  @override
  String get recentsSearchShowContacts => 'نمایش مخاطبین در جستجو';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'هنگام جستجوی Recents، همچنین افراد منطبق از دفترچه آدرس خود را در زیر نتایج سابقه تماس نشان دهید.';

  @override
  String get voiceSearch => 'جستجوی صوتی';

  @override
  String get createNewContact => 'مخاطب جدید ایجاد کنید';

  @override
  String callError(String error) {
    return 'خطای تماس: $error';
  }

  @override
  String get noRecentCalls => 'هیچ تماس اخیری وجود ندارد';

  @override
  String get callHistoryEmpty => 'سابقه تماس شما در اینجا ظاهر می شود.';

  @override
  String get loadMore => 'بیشتر بارگیری کنید';

  @override
  String get frequentlyContactedHeader => 'اغلب تماس گرفته شده است';

  @override
  String get recentHistory => 'تاریخ اخیر';

  @override
  String get noFavouritesRecentsHint =>
      'هنوز موارد دلخواه وجود ندارد. یک مخاطب را ستاره دار کنید، یک تماس را طولانی فشار دهید یا از برگه موارد دلخواه استفاده کنید.';

  @override
  String get copyNumber => 'کپی شماره';

  @override
  String get editNumberBeforeCall => 'قبل از تماس شماره را ویرایش کنید';

  @override
  String get removeFromFavourites => 'حذف از موارد دلخواه';

  @override
  String get addToFavourites => 'به علاقه مندی ها اضافه کنید';

  @override
  String get blockNumberQuestion => 'شماره بلوک؟';

  @override
  String blockNumberConfirm(String number) {
    return 'دیگر از $number تماس یا پیامک دریافت نخواهید کرد.';
  }

  @override
  String get blocked => 'مسدود شده است';

  @override
  String get couldNotBlock => 'مسدود نشد';

  @override
  String get contactNotOnDevice => 'مخاطب در این دستگاه ذخیره نشده است';

  @override
  String get unblocked => 'رفع انسداد';

  @override
  String get numberCopied => 'شماره کپی شد';

  @override
  String get showLess => 'کمتر نشان دادن';

  @override
  String get showAllTimes => 'نمایش همه زمان ها';

  @override
  String mostRecent(String time) {
    return 'جدیدترین · $time';
  }

  @override
  String get videoCall => 'تماس تصویری';

  @override
  String get couldNotPlaceVideoCall => 'تماس ویدیویی برقرار نشد';

  @override
  String get message => 'پیام';

  @override
  String get couldNotOpenMessaging => 'برنامه پیام رسانی باز نشد';

  @override
  String get history => 'تاریخچه';

  @override
  String get viewContact => 'مشاهده مخاطب';

  @override
  String get addToContact => 'به مخاطب اضافه کنید';

  @override
  String get callTypeMissed => 'از دست رفته';

  @override
  String get callTypeRejected => 'رد شد';

  @override
  String get callTypeIncoming => 'ورودی';

  @override
  String get callTypeOutgoing => 'خروجی';

  @override
  String get today => 'امروز';

  @override
  String get yesterday => 'دیروز';

  @override
  String get justNow => 'همین الان';

  @override
  String minutesAgo(int count) {
    return '$count دقیقه قبل';
  }

  @override
  String hoursAgo(int count) {
    return '$count ساعت قبل';
  }

  @override
  String get filterAll => 'همه';

  @override
  String get filterMissed => 'از دست رفته';

  @override
  String get filterContacts => 'مخاطبین';

  @override
  String get filterNonContacts => 'غیر تماسی';

  @override
  String get iconUpdated =>
      'نماد به روز شد. ممکن است بازخوانی صفحه اصلی شما یک لحظه طول بکشد.';

  @override
  String get iconSavedRelease =>
      'انتخاب ذخیره شد. نماد صفحه اصلی در نسخه‌های انتشار به‌روزرسانی می‌شود.';

  @override
  String couldNotChangeIcon(String error) {
    return 'نمی توان نماد را تغییر داد: $error';
  }

  @override
  String get launcherClassicBlack => 'کلاسیک (سیاه)';

  @override
  String get launcherLight => 'نور';

  @override
  String get launcherNothingRed => 'هیچی قرمز نیست';

  @override
  String get launcherDarkGrey => 'خاکستری تیره';

  @override
  String get launcherCream => 'کرم';

  @override
  String get launcherRetroPhone => 'تلفن یکپارچهسازی با سیستمعامل';

  @override
  String get launcherRetroPhoneLight => 'تلفن یکپارچهسازی با سیستمعامل (سبک)';

  @override
  String get voiceSearchUnavailable =>
      'جستجوی صوتی در این دستگاه در دسترس نیست.';

  @override
  String voiceSearchFailed(String error) {
    return 'جستجوی صوتی ناموفق بود: $error';
  }

  @override
  String get customColor => 'سفارشی';

  @override
  String get selectColor => 'رنگ را انتخاب کنید';

  @override
  String get reset => 'بازنشانی کنید';

  @override
  String get simPickerTitle => 'سیم کارت را انتخاب کنید';

  @override
  String get simChooseForCall => 'سیم کارت را برای این تماس انتخاب کنید';

  @override
  String get defaultSimAsk => 'هر بار بپرس';

  @override
  String defaultSimFixed(int slot) {
    return 'سیم کارت $slot';
  }

  @override
  String get contactDetails => 'جزئیات تماس';

  @override
  String get call => 'تماس بگیرید';

  @override
  String get share => 'به اشتراک بگذارید';

  @override
  String get favourite => 'مورد علاقه';

  @override
  String get unfavourite => 'نامطلوب';

  @override
  String get blockContact => 'مسدود کردن مخاطب';

  @override
  String get unblockContact => 'رفع انسداد مخاطب';

  @override
  String get deleteContact => 'مخاطب را حذف کنید';

  @override
  String get phone => 'تلفن';

  @override
  String get email => 'ایمیل';

  @override
  String get ringtone => 'آهنگ زنگ';

  @override
  String get defaultRingtone => 'پیش فرض';

  @override
  String get simForContact => 'سیم کارت این مخاطب';

  @override
  String get callHistoryTitle => 'سابقه تماس';

  @override
  String get noCallsWithNumber => 'بدون تماس با این شماره';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '$seconds ثانیه';
  }

  @override
  String get glyphAnimationStyle => 'انیمیشن گلیف';

  @override
  String get inCallGlyphAnimationStyle => 'انیمیشن Glyph در تماس';

  @override
  String get recordsOff => 'خاموش';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'سیم کارت پیش فرض';

  @override
  String get nothingPhoneOnly => 'هیچی فقط تلفن';

  @override
  String get nothingPhoneOnlySubtitle =>
      'ویژگی‌های Glyph به تلفن Nothing نیاز دارند';

  @override
  String get custom => 'سفارشی';

  @override
  String presetColorHex(String hex) {
    return 'از پیش تعیین شده · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'سفارشی · $hex';
  }

  @override
  String get oneContact => '1 تماس';

  @override
  String upToContacts(int count) {
    return 'حداکثر $count مخاطب';
  }

  @override
  String get answerButtonTapSubtitle => 'برای پاسخ دادن روی دکمه ضربه بزنید';

  @override
  String get filterCalls => 'فیلتر کردن تماس ها';

  @override
  String get filterTooltip => 'فیلتر کنید';

  @override
  String get settingsTooltip => 'تنظیمات';

  @override
  String get filterAllSubtitle => 'کل گزارش تماس';

  @override
  String get filterMissedSubtitle => 'از دست رفته و رد شده است';

  @override
  String get filterContactsSubtitle =>
      'تماس‌ها با یک مخاطب ذخیره شده مطابقت دارند';

  @override
  String get filterNonContactsSubtitle => 'اعدادی که در دفترچه آدرس شما نیستند';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'تماس در حال انجام: $detail';
  }

  @override
  String get defaultSimForCalls => 'سیم کارت پیش فرض برای تماس';

  @override
  String get blinkInterval => 'فاصله چشمک زدن';

  @override
  String get close => 'بستن';

  @override
  String get frequentlyContactedInfoBody =>
      'بر اساس تعداد تماس‌های ورودی، خروجی، از دست رفته یا ردشده‌ای که با هر شماره در بازه زمانی انتخابی خود داشته‌اید، شماره تلفن‌هایی را که بیشترین تماس را داشته‌اید، در بالای برگه اخیر نشان می‌دهد.\n\nتعداد رکوردها: روی 0 تنظیم کنید تا خاموش شود. از 1 تا 20 برای نشان دادن تعداد زیادی مخاطب برتر استفاده کنید.\n\nبازه زمانی فقط زمانی اعمال می شود که حداقل یک مخاطب نشان داده شود.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count چراغ، ${ms}ms سرعت';
  }

  @override
  String get deleteContactQuestion => 'مخاطب حذف شود؟';

  @override
  String get deleteContactBody =>
      'این مخاطب برای همیشه از دستگاه شما حذف خواهد شد.';

  @override
  String get blockContactQuestion => 'مخاطب مسدود شود؟';

  @override
  String get unblockContactQuestion => 'مخاطب رفع انسداد شود؟';

  @override
  String get blockContactBody =>
      'دیگر تماس یا پیامی از این مخاطب دریافت نخواهید کرد.';

  @override
  String get unblockContactBody =>
      'از این مخاطب شروع به دریافت تماس و پیامک خواهید کرد.';

  @override
  String get contactBlocked => 'مخاطب مسدود شد';

  @override
  String get contactUnblocked => 'تماس رفع انسداد شد';

  @override
  String get noPhoneNumbersToBlock => 'شماره تلفنی برای مسدود کردن وجود ندارد';

  @override
  String get simSameAsSystem => 'همان سیستم';

  @override
  String get simSameAsSystemSubtitle =>
      'از سیم کارت پیش فرض در تنظیمات پیروی می کند';

  @override
  String get simAskEveryTimeForContact =>
      'همیشه انتخابگر سیم کارت برای این مخاطب نشان داده شود';

  @override
  String get ringtoneSetForContact =>
      'آهنگ زنگ به صورت جهانی برای این مخاطب تنظیم شده است';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'آهنگ زنگ انتخاب نشد: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'خطا: $error';
  }

  @override
  String get noCallHistoryFound => 'هیچ سابقه تماسی پیدا نشد';

  @override
  String get speedDialVoicemail => 'شماره گیری سریع: پست صوتی';

  @override
  String shareContactSubject(String name) {
    return 'تماس: $name';
  }

  @override
  String get contactInfo => 'اطلاعات تماس';

  @override
  String get dontAskAgainSim => 'دیگه نپرس';

  @override
  String get simDontAskAgainSubtitle =>
      'از این سیم‌کارت به‌عنوان پیش‌فرض استفاده کنید (تغییر در تنظیمات)';

  @override
  String get addContact => 'افزودن مخاطب';

  @override
  String get createContact => 'تماس ایجاد کنید';

  @override
  String get paste => 'چسباندن';

  @override
  String get clear => 'پاک کردن';

  @override
  String get returnToCall => 'بازگشت به تماس';

  @override
  String get numberOfRecordsTitle => 'تعداد رکوردها';

  @override
  String get recordsPickerSubtitle =>
      'تعداد ورودی هایی که اغلب با آنها تماس گرفته می شود برای نمایش (0 = خاموش)';

  @override
  String get torchInfoTitle => 'چشمک زدن مشعل';

  @override
  String get torchInfoBody =>
      'در هنگام تماس های ورودی، خروجی یا جاری، فلاش دوربین را چشمک می زند. مستقل از چراغ های گلیف.';

  @override
  String get glyphMapTitle => 'طرح گلیف';

  @override
  String get glyphMapBody =>
      'Nothing Phone 1 Glyph LED zones. انیمیشن های خروجی و در تماس از این کانال ها استفاده می کنند.';

  @override
  String get answerMethodTitle => 'روش جواب دادن';

  @override
  String get glyphOutgoingCallStyleTitle => 'سبک تماس خروجی';

  @override
  String get glyphInCallAnimationTitle => 'Glyph in-call انیمیشن';

  @override
  String get themePickerTitle => 'موضوع';

  @override
  String get torchIncomingTitle => 'مشعل تماس ورودی';

  @override
  String get torchOutgoingTitle => 'مشعل تماس خروجی';

  @override
  String get torchOngoingTitle => 'مشعل تماس در حال انجام';

  @override
  String get timePeriodTitle => 'دوره زمانی';

  @override
  String get ok => 'باشه';

  @override
  String get confirmDeleteCall => 'این تماس از سابقه حذف شود؟';

  @override
  String get confirmDeleteAllCalls => 'همه تماس‌های با این شماره حذف شود؟';

  @override
  String get whatsapp => 'واتس اپ';

  @override
  String get sendMessage => 'ارسال پیام';

  @override
  String get addToExistingContactAction => 'به مخاطب اضافه کنید';

  @override
  String get mobileLabel => 'موبایل';

  @override
  String get callingSimForContactTitle => 'تماس با سیم کارت برای این مخاطب';

  @override
  String get contactSettings => 'تنظیمات تماس';

  @override
  String get setCallingSim => 'سیم‌کارت تماس را تنظیم کنید';

  @override
  String get contactRingtone => 'آهنگ زنگ تماس';

  @override
  String get shareContact => 'تماس را به اشتراک بگذارید';

  @override
  String get blockNumbers => 'اعداد را مسدود کنید';

  @override
  String get unblockNumbers => 'رفع انسداد شماره ها';

  @override
  String get connectedApps => 'برنامه های متصل';

  @override
  String get simNotSet => 'تنظیم نشده است';

  @override
  String get ringtoneDefault => 'پیش فرض';

  @override
  String get customRingtone => 'سفارشی';

  @override
  String get aboutSection => 'درباره';

  @override
  String get aboutFeedbackSection => 'درباره و بازخورد';

  @override
  String get aboutDescription =>
      'Nothing Dialer منبع باز است. اگر توسعه‌دهنده هستید، می‌توانید کد را بررسی کنید و مشارکت کنید.';

  @override
  String get aboutViewSource => 'در GitHub مشاهده کنید';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'لینک باز نشد';

  @override
  String get reviewSection => 'بررسی کنید';

  @override
  String get reviewDescription =>
      'از Nothing Dialer لذت می برید؟ رتبه‌بندی شما در Google Play به دیگران کمک می‌کند برنامه را پیدا کنند.';

  @override
  String get reviewRateOnPlay => 'در گوگل پلی امتیاز دهید';

  @override
  String get reviewRateOnPlaySubtitle => 'بدون خروج از برنامه رتبه بندی کنید';

  @override
  String get reviewCouldNotOpen => 'Google Play باز نشد';

  @override
  String get breathSpeed => 'سرعت تنفس';

  @override
  String get breathSpeedBlinkHint => 'پایین = پلک زدن، بالاتر = نفس آهسته';

  @override
  String get speedSliderHint => 'پایین تر = سریع تر، بالاتر = آهسته تر';

  @override
  String get swatchDefault => 'پیش فرض';

  @override
  String get customAccentColorPicker => 'رنگ تاکیدی سفارشی';

  @override
  String get customLightBackgroundPicker => 'پس زمینه نور سفارشی';

  @override
  String get customDarkBackgroundPicker => 'پس زمینه تاریک سفارشی';

  @override
  String get customCallBackgroundPicker => 'پس زمینه تماس سفارشی';

  @override
  String get ongoingCallStyleTitle => 'سبک تماس مداوم';

  @override
  String get glyphMapUnavailable => 'نقشه گلیف در دسترس نیست';

  @override
  String get animationDelayRange => 'تأخیر انیمیشن (1 تا 10 ثانیه)';

  @override
  String get animationDelayRangeSingle => 'تاخیر انیمیشن (0.1s - 10s)';

  @override
  String get inCallMute => 'بی صدا';

  @override
  String get inCallKeypad => 'صفحه کلید';

  @override
  String get inCallSpeaker => 'بلندگو';

  @override
  String get inCallMore => 'بیشتر';

  @override
  String get inCallBluetooth => 'بلوتوث';

  @override
  String get inCallPhone => 'تلفن';

  @override
  String get inCallAddCall => 'افزودن تماس';

  @override
  String get inCallChangeSim => 'سیم کارت را عوض کنید';

  @override
  String get inCallDecline => 'رد کردن';

  @override
  String get inCallAnswer => 'پاسخ دهید';

  @override
  String get inCallMessage => 'پیام';

  @override
  String get inCallCalling => 'تماس گرفتن…';

  @override
  String get inCallIncoming => 'تماس ورودی';

  @override
  String get inCallSelectSim => 'سیم کارت را انتخاب کنید…';

  @override
  String get inCallSwitchingSim => 'در حال تعویض سیم کارت…';

  @override
  String get inCallCallEnded => 'تماس به پایان رسید';

  @override
  String inCallCallingVia(String sim) {
    return 'تماس از طریق $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'تماس از طریق <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'سیم کارت را برای این تماس انتخاب کنید';

  @override
  String get inCallDragAnswerDecline =>
      'برای پاسخ به سمت راست بکشید · برای رد کردن به چپ بکشید';

  @override
  String inCallMobileNumber(String number) {
    return 'موبایل $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (جاری)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'تماس از طریق <b>$sim</b> از';
  }

  @override
  String get inCallCallFrom => 'تماس از';

  @override
  String get inCallUnknown => 'ناشناس';

  @override
  String get selectContactRingtone => 'آهنگ زنگ تماس را انتخاب کنید';

  @override
  String get speakToSearchPrompt => 'برای جستجو صحبت کنید';

  @override
  String get phonePermissionRequired => 'مجوز تلفن مورد نیاز است';

  @override
  String callFailed(String error) {
    return 'تماس ناموفق بود: $error';
  }

  @override
  String get callPermissionDenied => 'اجازه تماس رد شد';

  @override
  String get alreadyDefaultDialer =>
      'قبلاً به عنوان شماره گیر پیش فرض تنظیم شده است';

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
