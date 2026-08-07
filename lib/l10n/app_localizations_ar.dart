// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'لا شيء المسجل';

  @override
  String get settings => 'الإعدادات';

  @override
  String get settingsSearchHint => 'إعدادات البحث';

  @override
  String get settingsSearchNoResults => 'لم يتم العثور على إعدادات';

  @override
  String get general => 'عام';

  @override
  String get theme => 'السمة';

  @override
  String get themeSystemDefault => 'افتراضي النظام';

  @override
  String get themeLight => 'ضوء';

  @override
  String get themeDark => 'مظلم';

  @override
  String get themeFollowSystem => 'اتبع إعدادات النظام';

  @override
  String get themeAlwaysLight => 'استخدم دائمًا المظهر الفاتح';

  @override
  String get themeAlwaysDark => 'استخدم المظهر الداكن دائمًا';

  @override
  String get language => 'اللغة';

  @override
  String get languageDeviceDefault => 'افتراضي الجهاز';

  @override
  String get languagePickerTitle => 'اللغة';

  @override
  String get languageSearchHint => 'لغات البحث';

  @override
  String get font => 'الخط';

  @override
  String get fontSystem => 'الافتراضي للنظام';

  @override
  String get fontNdot => 'لا شيء (ندوت)';

  @override
  String get fontSerif => 'روبوتو شريف';

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
      'فشل تنزيل الخط. تحقق من اتصالك وحاول مرة أخرى.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'الخط';

  @override
  String get fontPreviewSample => 'لا شيء المسجل';

  @override
  String get fontAppWide => 'خط التطبيق';

  @override
  String get fontApplyTo => 'تنطبق على';

  @override
  String get fontApplyEntireApp => 'التطبيق بأكمله';

  @override
  String get fontApplyEntireAppSubtitle =>
      'نفس الخط في كل مكان، بما في ذلك المكالمات';

  @override
  String get fontApplyTitlesOnly => 'العناوين والعناوين';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'العناوين الكبيرة ورؤوس الأقسام فقط';

  @override
  String get fontApplyCustomize => 'تخصيص';

  @override
  String get fontApplyCustomizeSubtitle => 'اختر الخط لكل شاشة ونوع النص';

  @override
  String get fontCustomizeSection => 'تخصيص حسب الشاشة';

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
  String get fontRolePageTitle => 'عنوان الصفحة';

  @override
  String get fontRoleSectionHeader => 'رأس القسم';

  @override
  String get fontRolePrimary => 'النص الأساسي';

  @override
  String get fontRoleSecondary => 'النص الثانوي';

  @override
  String get fontRoleButton => 'أزرار';

  @override
  String get fontRoleDialKey => 'مفاتيح لوحة الاتصال';

  @override
  String get fontSurfaceRecents => 'الأخيرة';

  @override
  String get fontSurfaceContacts => 'اتصالات';

  @override
  String get fontSurfaceSettings => 'إعدادات';

  @override
  String get fontSurfaceDialpad => 'لوحة الاتصال';

  @override
  String get fontSurfaceShell => 'ملاحة';

  @override
  String get fontSurfaceDefaultDialer => 'موجه المسجل الافتراضي';

  @override
  String get fontSurfaceFavourites => 'المفضلة';

  @override
  String get fontSurfaceBlocked => 'الأرقام المحظورة';

  @override
  String get fontSurfaceContactDetail => 'تفاصيل الاتصال';

  @override
  String get fontSurfaceCallHistory => 'سجل المكالمات';

  @override
  String get fontSurfaceSheets => 'صفائح ومنتقيات';

  @override
  String get fontSurfaceInCall => 'شاشة المكالمات';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — التطبيق بأكمله';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — العناوين فقط';
  }

  @override
  String get fontSubtitleCustomize => 'مخصص لكل شاشة';

  @override
  String get background => 'خلفية';

  @override
  String get accent => 'لهجة';

  @override
  String get lightBackground => 'خلفية فاتحة';

  @override
  String get lightAccent => 'لهجة خفيفة';

  @override
  String get darkBackground => 'خلفية داكنة';

  @override
  String get darkAccent => 'لهجة داكنة';

  @override
  String get callBackground => 'خلفية المكالمة';

  @override
  String get appIcon => 'رمز التطبيق';

  @override
  String get answerMethod => 'طريقة الإجابة';

  @override
  String get answerSlide => 'اسحب للإجابة';

  @override
  String get answerSlideSubtitle =>
      'اسحب لليسار/لليمين على الشريط، مثل هاتف Google';

  @override
  String get answerButton => 'اضغط على زر';

  @override
  String get answerButtonSubtitle => 'اضغط على أزرار الإجابة أو الرفض';

  @override
  String get answerHuawei => 'ستايل هواوي';

  @override
  String get answerHuaweiSubtitle => 'اسحب الدائرة إلى الهاتف الأخضر للرد';

  @override
  String get answerHuaweiTileSubtitle =>
      'هواوي - اسحب إلى اللون الأخضر / الأحمر';

  @override
  String get calling => 'الاتصال';

  @override
  String get defaultSim => 'بطاقة SIM الافتراضية';

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
  String get askEveryTime => 'اسأل في كل مرة';

  @override
  String get askEveryTimeSubtitle => 'إظهار منتقي SIM قبل كل مكالمة';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'لم يتم العثور على بطاقات SIM';

  @override
  String couldNotLoadSims(String error) {
    return 'تعذر تحميل شرائح SIM: $error';
  }

  @override
  String get allFavourites => 'جميع المفضلة';

  @override
  String get allFavouritesSubtitle =>
      'إعادة ترتيب وإزالة وإضافة من جهات الاتصال';

  @override
  String get blockedNumbers => 'الأرقام المحظورة';

  @override
  String get blockedNumbersSubtitle => 'عرض وإلغاء حظر الأرقام';

  @override
  String get soundsAndVibration => 'الأصوات والاهتزاز';

  @override
  String get soundsAndVibrationSubtitle =>
      'نغمة الرنين، والاهتزاز، ونغمات لوحة الاتصال';

  @override
  String couldNotOpenSettings(String error) {
    return 'لا يمكن فتح الإعدادات: $error';
  }

  @override
  String get frequentlyContacted => 'تم الاتصال به بشكل متكرر';

  @override
  String get numberOfRecords => 'عدد السجلات';

  @override
  String get timePeriod => 'الفترة الزمنية';

  @override
  String get periodLast24Hours => 'آخر 24 ساعة';

  @override
  String get periodLast24HoursSubtitle => 'مكالمات من اليوم الماضي';

  @override
  String get periodLast7Days => 'آخر 7 أيام';

  @override
  String get periodLast7DaysSubtitle => 'مكالمات من الأسبوع الماضي';

  @override
  String get periodLast30Days => 'آخر 30 يومًا';

  @override
  String get periodLast30DaysSubtitle => 'مكالمات من الشهر الماضي';

  @override
  String get periodLast12Months => 'آخر 12 شهرًا';

  @override
  String get periodLast12MonthsSubtitle => 'مكالمات من العام الماضي';

  @override
  String get periodAllTime => 'كل الوقت';

  @override
  String get periodAllTimeSubtitle => 'سجل المكالمات بالكامل';

  @override
  String get frequentMaxOff => 'عن';

  @override
  String frequentMaxCount(int count) {
    return '$count جهات الاتصال';
  }

  @override
  String get torchBlink => 'وميض الشعلة';

  @override
  String get torchIncomingCall => 'شعلة مكالمة واردة';

  @override
  String get torchOutgoingCall => 'شعلة المكالمة الصادرة';

  @override
  String get torchOngoingCall => 'شعلة المكالمة الجارية';

  @override
  String get torchIncomingInterval => 'الفاصل الزمني للوميض الوارد';

  @override
  String get torchOutgoingInterval => 'الفاصل الزمني وميض الصادرة';

  @override
  String get torchOngoingInterval => 'الفاصل الزمني المستمر وميض';

  @override
  String get torchOff => 'عن';

  @override
  String get torchOffIncomingSubtitle => 'لا يوجد شعلة أثناء الرنين';

  @override
  String get torchOffOutgoingSubtitle => 'لا يوجد شعلة أثناء الاتصال';

  @override
  String get torchOffOngoingSubtitle => 'لا يوجد شعلة أثناء المكالمة النشطة';

  @override
  String get torchFixedInterval => 'فاصل زمني ثابت';

  @override
  String get torchFixedIntervalSubtitle => 'وميض بسرعة محددة';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$secondsس';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds وميض';
  }

  @override
  String get flashlightUnavailable => 'المصباح غير متوفر على هذا الجهاز';

  @override
  String get glyphLights => 'أضواء الصورة الرمزية';

  @override
  String get glyphCallingAnimation => 'الصورة الرمزية تدعو للرسوم المتحركة';

  @override
  String get glyphOngoingAnimation => 'الرسوم المتحركة للمكالمات المستمرة';

  @override
  String get glyphNone => 'لا أحد';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'تعطيل أضواء الصورة الرمزية للمكالمات الصادرة';

  @override
  String get glyphNoneInCallSubtitle =>
      'قم بتعطيل أضواء Glyph أثناء الاتصال النشط';

  @override
  String get glyphBreathProgress => 'التنفس والتقدم';

  @override
  String get glyphBreathProgressSubtitle =>
      'تتنفس الأضواء بينما يمتلئ الخط لأكثر من 65 ثانية';

  @override
  String get glyphAccumulate => 'تتراكم';

  @override
  String get glyphAccumulateSubtitle =>
      'تراكم الرسوم المتحركة على الأضواء C1-C4';

  @override
  String get glyphSingle => 'أعزب';

  @override
  String get glyphSingleSubtitle => 'ضوء واحد يتحرك عبر C1-C4';

  @override
  String get glyphBreath => 'يتنفس';

  @override
  String get glyphBreathSubtitle => 'اختيار الأضواء والسرعة';

  @override
  String get glyphSteady => 'ثابت';

  @override
  String get glyphSteadySubtitle => 'تبقى الأضواء المحددة مضاءة';

  @override
  String get breathSettings => 'إعدادات التنفس';

  @override
  String get activeLights => 'أضواء نشطة';

  @override
  String lightsCount(int count) {
    return '$count أضواء';
  }

  @override
  String get speedSettings => 'إعدادات السرعة';

  @override
  String speedSettingsDelay(int ms) {
    return 'تأخير $ms مللي ثانية';
  }

  @override
  String get durationAndSpeed => 'المدة والسرعة';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'مدة $duration ثانية، فاصل زمني $interval مللي ثانية';
  }

  @override
  String get cancel => 'يلغي';

  @override
  String get done => 'منتهي';

  @override
  String get save => 'يحفظ';

  @override
  String get block => 'حاجز';

  @override
  String get delete => 'يمسح';

  @override
  String get recents => 'الأخيرة';

  @override
  String get contacts => 'جهات الاتصال';

  @override
  String get hideFavouritesOnRecents => 'إخفاء المفضلة في الآونة الأخيرة';

  @override
  String get showFavouritesOnRecents => 'إظهار المفضلة على الأخيرة';

  @override
  String get ongoingCall => 'مكالمة جارية';

  @override
  String get setAsDefaultTitle => 'تعيين ك\nافتراضي';

  @override
  String get setAsDefaultBody =>
      'لاستخدام Nothing Dialer، يجب تعيينه كتطبيق الهاتف الافتراضي. يتيح لك ذلك إدارة المكالمات وعرض السجل واستخدام الرسوم المتحركة Glyph.';

  @override
  String get setAsDefaultButton => 'تعيين كافتراضي';

  @override
  String get nothingDialerBrand => 'لا شيء طالب 1';

  @override
  String get favourites => 'المفضلة';

  @override
  String get addFavourite => 'أضف المفضلة';

  @override
  String get favouritesDrawerHint =>
      'استخدم القائمة لإضافة جهات اتصال. اضغط خارج الدرج أو اسحبه لإغلاقه. قم بتمييز جهة اتصال بنجمة من التفاصيل الخاصة بها، أو اضغط لفترة طويلة على مكالمة في \"الحديثة\".';

  @override
  String get menu => 'قائمة طعام';

  @override
  String get noFavouritesYet =>
      'لا يوجد مفضلة بعد.\nافتح القائمة لإضافة جهة اتصال أو تمييزها بنجمة.';

  @override
  String get contactsPermissionNeeded => 'إذن جهات الاتصال مطلوب';

  @override
  String get chooseContact => 'اختر جهة اتصال';

  @override
  String get noPhone => 'لا يوجد هاتف';

  @override
  String get pickNumber => 'اختر رقمًا';

  @override
  String get contactHasNoPhone => 'جهة الاتصال هذه ليس لها رقم هاتف';

  @override
  String get blockNumber => 'رقم الكتلة';

  @override
  String get enterPhoneNumber => 'أدخل رقم الهاتف';

  @override
  String unblockedDisplay(String display) {
    return 'غير محظور $display';
  }

  @override
  String get couldNotUnblockNumber => 'تعذر إلغاء حظر الرقم';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked محظور • $matched متطابق';
  }

  @override
  String get contactsPermissionMissing =>
      'إذن جهات الاتصال مفقود. انقر للإصلاح.';

  @override
  String get noBlockedNumbers => 'لا توجد أرقام محظورة';

  @override
  String get unknownContact => 'جهة اتصال غير معروفة';

  @override
  String get unblock => 'إلغاء الحظر';

  @override
  String get permissionNeeded => 'الإذن مطلوب';

  @override
  String get grantPhonePermission =>
      'منح إذن الهاتف لرؤية سجل المكالمات الخاصة بك.';

  @override
  String get grantContactsPermission =>
      'منح جهات الاتصال الإذن لرؤية دفتر العناوين الخاص بك.';

  @override
  String get openSettings => 'افتح الإعدادات';

  @override
  String get tryAgain => 'حاول ثانية';

  @override
  String get couldNotLoadContacts => 'تعذر تحميل جهات الاتصال';

  @override
  String get contactsLoadError =>
      'حدث خطأ ما أثناء قراءة دفتر العناوين الخاص بك.';

  @override
  String get noContactsFound => 'لم يتم العثور على جهات اتصال';

  @override
  String get contactsEmptySubtitle => 'ستظهر هنا جهات الاتصال من جهازك.';

  @override
  String get searchContacts => 'بحث في جهات الاتصال...';

  @override
  String get searchRecentCalls => 'البحث عن المكالمات الأخيرة';

  @override
  String get fromContacts => 'من الاتصالات';

  @override
  String get recentsSearchSection => 'بحث حديث';

  @override
  String get recentsSearchShowContacts => 'إظهار جهات الاتصال في البحث';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'أثناء البحث في الآونة الأخيرة، قم أيضًا بإظهار الأشخاص المطابقين من دفتر العناوين الخاص بك أسفل نتائج سجل المكالمات.';

  @override
  String get voiceSearch => 'البحث الصوتي';

  @override
  String get createNewContact => 'إنشاء جهة اتصال جديدة';

  @override
  String callError(String error) {
    return 'خطأ في الاتصال: $error';
  }

  @override
  String get noRecentCalls => 'لا توجد مكالمات الأخيرة';

  @override
  String get callHistoryEmpty => 'سيظهر سجل مكالماتك هنا.';

  @override
  String get loadMore => 'تحميل المزيد';

  @override
  String get frequentlyContactedHeader => 'تم الاتصال به بشكل متكرر';

  @override
  String get recentHistory => 'التاريخ الحديث';

  @override
  String get noFavouritesRecentsHint =>
      'لا يوجد مفضلة بعد. قم بتمييز جهة اتصال بنجمة، أو اضغط لفترة طويلة على مكالمة، أو استخدم علامة التبويب المفضلة.';

  @override
  String get copyNumber => 'نسخ الرقم';

  @override
  String get editNumberBeforeCall => 'تعديل الرقم قبل الاتصال';

  @override
  String get removeFromFavourites => 'إزالة من المفضلة';

  @override
  String get addToFavourites => 'أضف إلى المفضلة';

  @override
  String get blockNumberQuestion => 'رقم الكتلة؟';

  @override
  String blockNumberConfirm(String number) {
    return 'لن تتلقى بعد الآن مكالمات أو رسائل نصية من $number.';
  }

  @override
  String get blocked => 'محظور';

  @override
  String get couldNotBlock => 'لا يمكن منع';

  @override
  String get contactNotOnDevice => 'لم يتم حفظ جهة الاتصال على هذا الجهاز';

  @override
  String get unblocked => 'غير محظور';

  @override
  String get numberCopied => 'تم نسخ الرقم';

  @override
  String get showLess => 'عرض أقل';

  @override
  String get showAllTimes => 'عرض جميع الأوقات';

  @override
  String mostRecent(String time) {
    return 'الأحدث · $time';
  }

  @override
  String get videoCall => 'مكالمة فيديو';

  @override
  String get couldNotPlaceVideoCall => 'تعذر إجراء مكالمة فيديو';

  @override
  String get message => 'رسالة';

  @override
  String get couldNotOpenMessaging => 'لا يمكن فتح تطبيق المراسلة';

  @override
  String get history => 'تاريخ';

  @override
  String get viewContact => 'عرض جهة الاتصال';

  @override
  String get addToContact => 'إضافة إلى جهة الاتصال';

  @override
  String get callTypeMissed => 'مٌفتَقد';

  @override
  String get callTypeRejected => 'مرفوض';

  @override
  String get callTypeIncoming => 'وارد';

  @override
  String get callTypeOutgoing => 'المنتهية ولايته';

  @override
  String get today => 'اليوم';

  @override
  String get yesterday => 'أمس';

  @override
  String get justNow => 'الآن';

  @override
  String minutesAgo(int count) {
    return '$count دقيقة مضت';
  }

  @override
  String hoursAgo(int count) {
    return '$count منذ ساعة';
  }

  @override
  String get filterAll => 'الجميع';

  @override
  String get filterMissed => 'مٌفتَقد';

  @override
  String get filterContacts => 'اتصالات';

  @override
  String get filterNonContacts => 'عدم الاتصال';

  @override
  String get iconUpdated =>
      'تم تحديث الأيقونة. قد تستغرق شاشتك الرئيسية بعض الوقت للتحديث.';

  @override
  String get iconSavedRelease =>
      'تم حفظ الاختيار. يتم تحديث رمز الشاشة الرئيسية في إصدارات الإصدار.';

  @override
  String couldNotChangeIcon(String error) {
    return 'لا يمكن تغيير الرمز: $error';
  }

  @override
  String get launcherClassicBlack => 'كلاسيكي (أسود)';

  @override
  String get launcherLight => 'ضوء';

  @override
  String get launcherNothingRed => 'لا شيء أحمر';

  @override
  String get launcherDarkGrey => 'رمادي غامق';

  @override
  String get launcherCream => 'كريم';

  @override
  String get launcherRetroPhone => 'الهاتف الرجعية';

  @override
  String get launcherRetroPhoneLight => 'هاتف ريترو (خفيف)';

  @override
  String get voiceSearchUnavailable => 'البحث الصوتي غير متوفر على هذا الجهاز.';

  @override
  String voiceSearchFailed(String error) {
    return 'فشل البحث الصوتي: $error';
  }

  @override
  String get customColor => 'مخصص';

  @override
  String get selectColor => 'اختر اللون';

  @override
  String get reset => 'إعادة ضبط';

  @override
  String get simPickerTitle => 'اختر شريحة SIM';

  @override
  String get simChooseForCall => 'اختر بطاقة SIM لهذه المكالمة';

  @override
  String get defaultSimAsk => 'اسأل في كل مرة';

  @override
  String defaultSimFixed(int slot) {
    return 'شريحة الاتصال $slot';
  }

  @override
  String get contactDetails => 'تفاصيل الاتصال';

  @override
  String get call => 'يتصل';

  @override
  String get share => 'يشارك';

  @override
  String get favourite => 'مفضل';

  @override
  String get unfavourite => 'غير مفضل';

  @override
  String get blockContact => 'حظر الاتصال';

  @override
  String get unblockContact => 'إلغاء حظر جهة الاتصال';

  @override
  String get deleteContact => 'حذف جهة الاتصال';

  @override
  String get phone => 'هاتف';

  @override
  String get email => 'بريد إلكتروني';

  @override
  String get ringtone => 'نغمة رنين';

  @override
  String get defaultRingtone => 'تقصير';

  @override
  String get simForContact => 'بطاقة SIM لجهة الاتصال هذه';

  @override
  String get callHistoryTitle => 'سجل المكالمات';

  @override
  String get noCallsWithNumber => 'لا توجد مكالمات مع هذا الرقم';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutesم $secondsس';
  }

  @override
  String durationSeconds(int seconds) {
    return '$secondsس';
  }

  @override
  String get glyphAnimationStyle => 'الرسوم المتحركة الرسومية';

  @override
  String get inCallGlyphAnimationStyle => 'الرسوم المتحركة في المكالمة';

  @override
  String get recordsOff => 'عن';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'بطاقة SIM الافتراضية';

  @override
  String get nothingPhoneOnly => 'لا شيء الهاتف فقط';

  @override
  String get nothingPhoneOnlySubtitle =>
      'تتطلب ميزات الحروف الرسومية وجود هاتف لا شيء';

  @override
  String get custom => 'مخصص';

  @override
  String presetColorHex(String hex) {
    return 'إعداد مسبق · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'مخصص · $hex';
  }

  @override
  String get oneContact => '1 جهة اتصال';

  @override
  String upToContacts(int count) {
    return 'ما يصل إلى $count جهات الاتصال';
  }

  @override
  String get answerButtonTapSubtitle => 'اضغط على الزر للإجابة';

  @override
  String get filterCalls => 'تصفية المكالمات';

  @override
  String get filterTooltip => 'فلتر';

  @override
  String get settingsTooltip => 'إعدادات';

  @override
  String get filterAllSubtitle => 'سجل المكالمات بالكامل';

  @override
  String get filterMissedSubtitle => 'غاب ورفض';

  @override
  String get filterContactsSubtitle => 'المكالمات المطابقة لجهة اتصال محفوظة';

  @override
  String get filterNonContactsSubtitle =>
      'الأرقام ليست في دفتر العناوين الخاص بك';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'مكالمة جارية: $detail';
  }

  @override
  String get defaultSimForCalls => 'بطاقة SIM الافتراضية للمكالمات';

  @override
  String get blinkInterval => 'الفاصل الزمني وميض';

  @override
  String get close => 'يغلق';

  @override
  String get frequentlyContactedInfoBody =>
      'يعرض أرقام الهواتف الأكثر اتصالاً لديك في أعلى علامة التبويب \"المكالمات الأخيرة\"، استنادًا إلى عدد المكالمات الواردة أو الصادرة أو الفائتة أو المرفوضة التي أجريتها مع كل رقم في الفترة الزمنية التي تختارها.\n\nعدد السجلات: اضبط على 0 لإيقاف هذا. استخدم 1–20 لإظهار العديد من جهات الاتصال المهمة.\n\nتنطبق الفترة الزمنية فقط عند ظهور جهة اتصال واحدة على الأقل.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count أضواء، $msسرعة مللي ثانية';
  }

  @override
  String get deleteContactQuestion => 'هل تريد حذف جهة الاتصال؟';

  @override
  String get deleteContactBody => 'سيتم حذف جهة الاتصال هذه نهائيًا من جهازك.';

  @override
  String get blockContactQuestion => 'منع الاتصال؟';

  @override
  String get unblockContactQuestion => 'هل تريد إلغاء حظر جهة الاتصال؟';

  @override
  String get blockContactBody =>
      'لن تتلقى بعد الآن مكالمات أو رسائل نصية من جهة الاتصال هذه.';

  @override
  String get unblockContactBody =>
      'ستبدأ في تلقي المكالمات والرسائل النصية من جهة الاتصال هذه.';

  @override
  String get contactBlocked => 'تم حظر جهة الاتصال';

  @override
  String get contactUnblocked => 'تم إلغاء حظر جهة الاتصال';

  @override
  String get noPhoneNumbersToBlock => 'لا توجد أرقام هواتف لحظرها';

  @override
  String get simSameAsSystem => 'نفس النظام';

  @override
  String get simSameAsSystemSubtitle =>
      'يتبع بطاقة SIM الافتراضية في الإعدادات';

  @override
  String get simAskEveryTimeForContact =>
      'قم دائمًا بإظهار منتقي بطاقة SIM لجهة الاتصال هذه';

  @override
  String get ringtoneSetForContact =>
      'تم تعيين نغمة الرنين عالميًا لجهة الاتصال هذه';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'فشل في اختيار نغمة الرنين: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'خطأ: $error';
  }

  @override
  String get noCallHistoryFound => 'لم يتم العثور على سجل المكالمات';

  @override
  String get speedDialVoicemail => 'الاتصال السريع: البريد الصوتي';

  @override
  String shareContactSubject(String name) {
    return 'الاتصال: $name';
  }

  @override
  String get contactInfo => 'معلومات الاتصال';

  @override
  String get dontAskAgainSim => 'لا تسأل مرة أخرى';

  @override
  String get simDontAskAgainSubtitle =>
      'استخدم بطاقة SIM هذه كإعداد افتراضي (تغيير في الإعدادات)';

  @override
  String get addContact => 'أضف جهة اتصال';

  @override
  String get createContact => 'إنشاء جهة اتصال';

  @override
  String get paste => 'لصق';

  @override
  String get clear => 'واضح';

  @override
  String get returnToCall => 'العودة إلى المكالمة';

  @override
  String get numberOfRecordsTitle => 'عدد السجلات';

  @override
  String get recordsPickerSubtitle =>
      'كم عدد الإدخالات التي يتم الاتصال بها بشكل متكرر لإظهارها (0 = إيقاف)';

  @override
  String get torchInfoTitle => 'وميض الشعلة';

  @override
  String get torchInfoBody =>
      'يومض فلاش الكاميرا أثناء المكالمات الواردة أو الصادرة أو الجارية. مستقلة عن أضواء الصورة الرمزية.';

  @override
  String get glyphMapTitle => 'تخطيط الصورة الرمزية';

  @override
  String get glyphMapBody =>
      'لا شيء الهاتف 1 مناطق Glyph LED. تستخدم الرسوم المتحركة الصادرة والمتصلة هذه القنوات.';

  @override
  String get answerMethodTitle => 'طريقة الإجابة';

  @override
  String get glyphOutgoingCallStyleTitle => 'نمط المكالمة الصادرة';

  @override
  String get glyphInCallAnimationTitle => 'الرسوم المتحركة في المكالمة';

  @override
  String get themePickerTitle => 'سمة';

  @override
  String get torchIncomingTitle => 'شعلة مكالمة واردة';

  @override
  String get torchOutgoingTitle => 'شعلة المكالمة الصادرة';

  @override
  String get torchOngoingTitle => 'شعلة المكالمة الجارية';

  @override
  String get timePeriodTitle => 'الفترة الزمنية';

  @override
  String get ok => 'نعم';

  @override
  String get confirmDeleteCall => 'هل تريد حذف هذه المكالمة من السجل؟';

  @override
  String get confirmDeleteAllCalls => 'هل تريد حذف جميع المكالمات بهذا الرقم؟';

  @override
  String get whatsapp => 'واتساب';

  @override
  String get sendMessage => 'أرسل رسالة';

  @override
  String get addToExistingContactAction => 'إضافة إلى جهة اتصال';

  @override
  String get mobileLabel => 'متحرك';

  @override
  String get callingSimForContactTitle =>
      'جارٍ الاتصال ببطاقة SIM لجهة الاتصال هذه';

  @override
  String get contactSettings => 'إعدادات الاتصال';

  @override
  String get setCallingSim => 'ضبط بطاقة SIM للاتصال';

  @override
  String get contactRingtone => 'نغمة الاتصال';

  @override
  String get shareContact => 'مشاركة الاتصال';

  @override
  String get blockNumbers => 'أرقام الكتلة';

  @override
  String get unblockNumbers => 'إلغاء حظر الأرقام';

  @override
  String get connectedApps => 'التطبيقات المتصلة';

  @override
  String get simNotSet => 'لم يتم ضبطه';

  @override
  String get ringtoneDefault => 'تقصير';

  @override
  String get customRingtone => 'مخصص';

  @override
  String get aboutSection => 'حول';

  @override
  String get aboutFeedbackSection => 'حول وردود الفعل';

  @override
  String get aboutDescription =>
      'Nothing Dialer مفتوح المصدر. إذا كنت مطوّرًا، يمكنك استكشاف الشيفرة والمساهمة.';

  @override
  String get aboutViewSource => 'عرض على GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'تعذّر فتح الرابط';

  @override
  String get reviewSection => 'التقييم';

  @override
  String get reviewDescription =>
      'هل تستمتع بـ Nothing Dialer؟ تقييمك على Google Play يساعد الآخرين على اكتشاف التطبيق.';

  @override
  String get reviewRateOnPlay => 'قيّم على Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'قيّم دون مغادرة التطبيق';

  @override
  String get reviewCouldNotOpen => 'تعذّر فتح Google Play';

  @override
  String get breathSpeed => 'سرعة التنفس';

  @override
  String get breathSpeedBlinkHint => 'أقل = وميض، أعلى = نفس بطيء';

  @override
  String get speedSliderHint => 'أقل = أسرع، أعلى = أبطأ';

  @override
  String get swatchDefault => 'تقصير';

  @override
  String get customAccentColorPicker => 'لون لهجة مخصصة';

  @override
  String get customLightBackgroundPicker => 'خلفية مضيئة مخصصة';

  @override
  String get customDarkBackgroundPicker => 'خلفية داكنة مخصصة';

  @override
  String get customCallBackgroundPicker => 'خلفية مكالمة مخصصة';

  @override
  String get ongoingCallStyleTitle => 'أسلوب الاتصال المستمر';

  @override
  String get glyphMapUnavailable => 'خريطة الحروف الرسومية غير متوفرة';

  @override
  String get animationDelayRange =>
      'تأخير الرسوم المتحركة (1 ثانية - 10 ثانية)';

  @override
  String get animationDelayRangeSingle =>
      'تأخير الرسوم المتحركة (0.1 ثانية - 10 ثانية)';

  @override
  String get inCallMute => 'كتم';

  @override
  String get inCallKeypad => 'لوحة المفاتيح';

  @override
  String get inCallSpeaker => 'مكبر الصوت';

  @override
  String get inCallMore => 'المزيد';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'الهاتف';

  @override
  String get inCallAddCall => 'إضافة مكالمة';

  @override
  String get inCallChangeSim => 'تغيير الشريحة';

  @override
  String get inCallDecline => 'رفض';

  @override
  String get inCallAnswer => 'رد';

  @override
  String get inCallMessage => 'رسالة';

  @override
  String get inCallCalling => 'جارٍ الاتصال…';

  @override
  String get inCallIncoming => 'مكالمة واردة';

  @override
  String get inCallSelectSim => 'اختر الشريحة…';

  @override
  String get inCallSwitchingSim => 'جارٍ تبديل الشريحة…';

  @override
  String get inCallCallEnded => 'انتهت المكالمة';

  @override
  String inCallCallingVia(String sim) {
    return 'اتصال عبر $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'اتصال عبر <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'اختر الشريحة لهذه المكالمة';

  @override
  String get inCallDragAnswerDecline => 'اسحب يمينًا للرد · يسارًا للرفض';

  @override
  String inCallMobileNumber(String number) {
    return 'جوال $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label  (الحالي)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'مكالمة عبر <b>$sim</b> من';
  }

  @override
  String get inCallCallFrom => 'مكالمة من';

  @override
  String get inCallUnknown => 'غير معروف';

  @override
  String get selectContactRingtone => 'اختر نغمة جهة الاتصال';

  @override
  String get speakToSearchPrompt => 'تحدث للبحث';

  @override
  String get phonePermissionRequired => 'يلزم إذن الهاتف';

  @override
  String callFailed(String error) {
    return 'فشلت المكالمة: $error';
  }

  @override
  String get callPermissionDenied => 'تم رفض إذن المكالمة';

  @override
  String get alreadyDefaultDialer => 'مُعيَّن بالفعل كتطبيق الهاتف الافتراضي';

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
