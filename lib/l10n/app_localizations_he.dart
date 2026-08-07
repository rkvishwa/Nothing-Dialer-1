// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'שום דבר חייגן';

  @override
  String get settings => 'הגדרות';

  @override
  String get settingsSearchHint => 'הגדרות חיפוש';

  @override
  String get settingsSearchNoResults => 'לא נמצאו הגדרות';

  @override
  String get general => 'כְּלָלִי';

  @override
  String get theme => 'נוֹשֵׂא';

  @override
  String get themeSystemDefault => 'מערכת ברירת מחדל';

  @override
  String get themeLight => 'אוֹר';

  @override
  String get themeDark => 'כֵּהֶה';

  @override
  String get themeFollowSystem => 'עקוב אחר הגדרות המערכת';

  @override
  String get themeAlwaysLight => 'השתמש תמיד בערכת נושא קלה';

  @override
  String get themeAlwaysDark => 'השתמש תמיד בערכת נושא כהה';

  @override
  String get language => 'שָׂפָה';

  @override
  String get languageDeviceDefault => 'ברירת מחדל של מכשיר';

  @override
  String get languagePickerTitle => 'שָׂפָה';

  @override
  String get languageSearchHint => 'חיפוש שפות';

  @override
  String get font => 'גוֹפָן';

  @override
  String get fontSystem => 'ברירת המחדל של המערכת';

  @override
  String get fontNdot => 'כלום (NDot)';

  @override
  String get fontSerif => 'רובוטו סריף';

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
      'הורדת הגופן נכשלה. בדוק את החיבור שלך ונסה שוב.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'גוֹפָן';

  @override
  String get fontPreviewSample => 'שום דבר חייגן';

  @override
  String get fontAppWide => 'גופן אפליקציה';

  @override
  String get fontApplyTo => 'הגשת בקשה ל';

  @override
  String get fontApplyEntireApp => 'אפליקציה שלמה';

  @override
  String get fontApplyEntireAppSubtitle => 'אותו גופן בכל מקום, כולל בשיחה';

  @override
  String get fontApplyTitlesOnly => 'כותרות וכותרות';

  @override
  String get fontApplyTitlesOnlySubtitle => 'כותרות גדולות וכותרות מקטעים בלבד';

  @override
  String get fontApplyCustomize => 'התאמה אישית';

  @override
  String get fontApplyCustomizeSubtitle => 'בחר גופן לכל מסך וסוג טקסט';

  @override
  String get fontCustomizeSection => 'התאמה אישית לפי מסך';

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
  String get fontRolePageTitle => 'כותרת העמוד';

  @override
  String get fontRoleSectionHeader => 'כותרת מדור';

  @override
  String get fontRolePrimary => 'טקסט ראשי';

  @override
  String get fontRoleSecondary => 'טקסט משני';

  @override
  String get fontRoleButton => 'כפתורים';

  @override
  String get fontRoleDialKey => 'מקשי לוח החיוג';

  @override
  String get fontSurfaceRecents => 'אחרונים';

  @override
  String get fontSurfaceContacts => 'אנשי קשר';

  @override
  String get fontSurfaceSettings => 'הגדרות';

  @override
  String get fontSurfaceDialpad => 'לוח חיוג';

  @override
  String get fontSurfaceShell => 'ניווט';

  @override
  String get fontSurfaceDefaultDialer => 'הנחית חייגן המוגדרת כברירת מחדל';

  @override
  String get fontSurfaceFavourites => 'מועדפים';

  @override
  String get fontSurfaceBlocked => 'מספרים חסומים';

  @override
  String get fontSurfaceContactDetail => 'פרטי יצירת קשר';

  @override
  String get fontSurfaceCallHistory => 'היסטוריית שיחות';

  @override
  String get fontSurfaceSheets => 'סדינים וקוטפים';

  @override
  String get fontSurfaceInCall => 'מסך בשיחה';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font - האפליקציה כולה';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font - כותרות בלבד';
  }

  @override
  String get fontSubtitleCustomize => 'מותאם אישית לכל מסך';

  @override
  String get background => 'רֶקַע';

  @override
  String get accent => 'מִבטָא';

  @override
  String get lightBackground => 'רקע בהיר';

  @override
  String get lightAccent => 'מבטא קל';

  @override
  String get darkBackground => 'רקע כהה';

  @override
  String get darkAccent => 'מבטא כהה';

  @override
  String get callBackground => 'רקע שיחה';

  @override
  String get appIcon => 'סמל אפליקציה';

  @override
  String get answerMethod => 'שיטת תשובה';

  @override
  String get answerSlide => 'החלק כדי לענות';

  @override
  String get answerSlideSubtitle => 'החלק שמאלה/ימינה בסרגל, כמו Google Phone';

  @override
  String get answerButton => 'הקשה על הכפתור';

  @override
  String get answerButtonSubtitle => 'הקש על לחצני תשובה או דחייה';

  @override
  String get answerHuawei => 'סגנון Huawei';

  @override
  String get answerHuaweiSubtitle => 'גרור את העיגול לטלפון הירוק כדי לענות';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — גרור לירוק/אדום';

  @override
  String get calling => 'יִעוּד';

  @override
  String get defaultSim => 'סים ברירת מחדל';

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
  String get askEveryTime => 'תשאל כל פעם';

  @override
  String get askEveryTimeSubtitle => 'הצג את בוחר ה-SIM לפני כל שיחה';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'לא נמצאו כרטיסי SIM';

  @override
  String couldNotLoadSims(String error) {
    return 'לא ניתן היה לטעון סים: $error';
  }

  @override
  String get allFavourites => 'כל המועדפים';

  @override
  String get allFavouritesSubtitle => 'סדר מחדש, הסר והוסף מאנשי קשר';

  @override
  String get blockedNumbers => 'מספרים חסומים';

  @override
  String get blockedNumbersSubtitle => 'הצג ובטל את החסימה של מספרים';

  @override
  String get soundsAndVibration => 'צלילים ורטט';

  @override
  String get soundsAndVibrationSubtitle => 'רינגטון, רטט, צלילי לוח חיוג';

  @override
  String couldNotOpenSettings(String error) {
    return 'לא ניתן היה לפתוח את ההגדרות: $error';
  }

  @override
  String get frequentlyContacted => 'יצירת קשר תדיר';

  @override
  String get numberOfRecords => 'מספר רשומות';

  @override
  String get timePeriod => 'פרק זמן';

  @override
  String get periodLast24Hours => '24 השעות האחרונות';

  @override
  String get periodLast24HoursSubtitle => 'שיחות מהיום האחרון';

  @override
  String get periodLast7Days => '7 ימים אחרונים';

  @override
  String get periodLast7DaysSubtitle => 'שיחות מהשבוע האחרון';

  @override
  String get periodLast30Days => '30 הימים האחרונים';

  @override
  String get periodLast30DaysSubtitle => 'שיחות מהחודש האחרון';

  @override
  String get periodLast12Months => '12 חודשים אחרונים';

  @override
  String get periodLast12MonthsSubtitle => 'שיחות מהשנה האחרונה';

  @override
  String get periodAllTime => 'כל הזמן';

  @override
  String get periodAllTimeSubtitle => 'היסטוריית השיחות שלמה';

  @override
  String get frequentMaxOff => 'כבוי';

  @override
  String frequentMaxCount(int count) {
    return '$count אנשי קשר';
  }

  @override
  String get torchBlink => 'לפיד מצמוץ';

  @override
  String get torchIncomingCall => 'לפיד שיחה נכנסת';

  @override
  String get torchOutgoingCall => 'לפיד שיחה יוצאת';

  @override
  String get torchOngoingCall => 'לפיד שיחה מתמשכת';

  @override
  String get torchIncomingInterval => 'מרווח מצמוץ נכנס';

  @override
  String get torchOutgoingInterval => 'מרווח מצמוץ יוצא';

  @override
  String get torchOngoingInterval => 'מרווח מצמוץ מתמשך';

  @override
  String get torchOff => 'כבוי';

  @override
  String get torchOffIncomingSubtitle => 'אין לפיד בזמן צלצול';

  @override
  String get torchOffOutgoingSubtitle => 'אין לפיד בזמן חיוג';

  @override
  String get torchOffOngoingSubtitle => 'אין לפיד במהלך שיחה פעילה';

  @override
  String get torchFixedInterval => 'מרווח קבוע';

  @override
  String get torchFixedIntervalSubtitle => 'מהבהב במהירות מוגדרת';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds ש\'';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds מצמוץ';
  }

  @override
  String get flashlightUnavailable => 'פנס לא זמין במכשיר זה';

  @override
  String get glyphLights => 'אורות גליף';

  @override
  String get glyphCallingAnimation => 'אנימציה של קריאת גליפים';

  @override
  String get glyphOngoingAnimation => 'אנימציית שיחה מתמשכת של Glyph';

  @override
  String get glyphNone => 'אַף לֹא אֶחָד';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'השבת את נורות ה-Glyph עבור שיחות יוצאות';

  @override
  String get glyphNoneInCallSubtitle => 'השבת את נורות ה-Glyph בזמן שיחה פעילה';

  @override
  String get glyphBreathProgress => 'נשימה והתקדמות';

  @override
  String get glyphBreathProgressSubtitle =>
      'אורות נושמים בעוד הקו מתמלא מעל 65 שניות';

  @override
  String get glyphAccumulate => 'לִצְבּוֹר';

  @override
  String get glyphAccumulateSubtitle => 'אנימציה מצטברת על האורות C1-C4';

  @override
  String get glyphSingle => 'אֶחָד';

  @override
  String get glyphSingleSubtitle => 'אור בודד נע על פני C1-C4';

  @override
  String get glyphBreath => 'נְשִׁימָה';

  @override
  String get glyphBreathSubtitle => 'בחר אורות ומהירות';

  @override
  String get glyphSteady => 'יַצִיב';

  @override
  String get glyphSteadySubtitle => 'הנורות שנבחרו נשארות דולקות';

  @override
  String get breathSettings => 'הגדרות נשימה';

  @override
  String get activeLights => 'אורות אקטיביים';

  @override
  String lightsCount(int count) {
    return '$count אורות';
  }

  @override
  String get speedSettings => 'הגדרות מהירות';

  @override
  String speedSettingsDelay(int ms) {
    return 'עיכוב של ${ms}ms';
  }

  @override
  String get durationAndSpeed => 'משך ומהירות';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'משך ${duration}s, מרווח של ${interval}ms';
  }

  @override
  String get cancel => 'לְבַטֵל';

  @override
  String get done => 'נַעֲשָׂה';

  @override
  String get save => 'לְהַצִיל';

  @override
  String get block => 'לַחסוֹם';

  @override
  String get delete => 'לִמְחוֹק';

  @override
  String get recents => 'אחרונים';

  @override
  String get contacts => 'אנשי קשר';

  @override
  String get hideFavouritesOnRecents => 'הסתר מועדפים ב-Recents';

  @override
  String get showFavouritesOnRecents => 'הצג מועדפים ב-Recents';

  @override
  String get ongoingCall => 'שיחה מתמשכת';

  @override
  String get setAsDefaultTitle => 'הגדר כ\nברירת מחדל';

  @override
  String get setAsDefaultBody =>
      'כדי להשתמש ב-Nothing Dialer, זה חייב להיות מוגדר כאפליקציית ברירת המחדל שלך לטלפון. זה מאפשר לך לנהל שיחות, להציג היסטוריה ולהשתמש בהנפשות Glyph.';

  @override
  String get setAsDefaultButton => 'הגדר כברירת מחדל';

  @override
  String get nothingDialerBrand => 'שום דבר חייגן 1';

  @override
  String get favourites => 'מועדפים';

  @override
  String get addFavourite => 'הוסף מועדף';

  @override
  String get favouritesDrawerHint =>
      'השתמש בתפריט כדי להוסיף אנשי קשר. הקש מחוץ למגירה או החלק אותה סגורה. סמן איש קשר מהפרטים שלו, או לחץ לחיצה ארוכה על שיחה ב\'אחרונים\'.';

  @override
  String get menu => 'תַפרִיט';

  @override
  String get noFavouritesYet =>
      'עדיין אין מועדפים.\nפתח את התפריט כדי להוסיף אחד, או בכוכב איש קשר.';

  @override
  String get contactsPermissionNeeded => 'דרושה הרשאת אנשי קשר';

  @override
  String get chooseContact => 'בחר איש קשר';

  @override
  String get noPhone => 'אין טלפון';

  @override
  String get pickNumber => 'בחר מספר';

  @override
  String get contactHasNoPhone => 'לאיש קשר זה אין מספר טלפון';

  @override
  String get blockNumber => 'מספר בלוק';

  @override
  String get enterPhoneNumber => 'הזן מספר טלפון';

  @override
  String unblockedDisplay(String display) {
    return 'בוטלה חסימה $display';
  }

  @override
  String get couldNotUnblockNumber => 'לא ניתן לבטל את חסימת המספר';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked חסום • $matched תואם';
  }

  @override
  String get contactsPermissionMissing => 'חסרה הרשאת אנשי קשר. הקש כדי לתקן.';

  @override
  String get noBlockedNumbers => 'אין מספרים חסומים';

  @override
  String get unknownContact => 'איש קשר לא ידוע';

  @override
  String get unblock => 'בטל את החסימה';

  @override
  String get permissionNeeded => 'צריך רשות';

  @override
  String get grantPhonePermission =>
      'הענק הרשאה לטלפון כדי לראות את היסטוריית השיחות שלך.';

  @override
  String get grantContactsPermission =>
      'הענק הרשאה לאנשי קשר לראות את ספר הכתובות שלך.';

  @override
  String get openSettings => 'פתח את ההגדרות';

  @override
  String get tryAgain => 'נסה שוב';

  @override
  String get couldNotLoadContacts => 'לא ניתן לטעון אנשי קשר';

  @override
  String get contactsLoadError => 'משהו השתבש בקריאת ספר הכתובות שלך.';

  @override
  String get noContactsFound => 'לא נמצאו אנשי קשר';

  @override
  String get contactsEmptySubtitle => 'אנשי קשר מהמכשיר שלך יופיעו כאן.';

  @override
  String get searchContacts => 'חפש אנשי קשר...';

  @override
  String get searchRecentCalls => 'חפש שיחות אחרונות';

  @override
  String get fromContacts => 'מתוך אנשי קשר';

  @override
  String get recentsSearchSection => 'חיפוש אחרון';

  @override
  String get recentsSearchShowContacts => 'הצג אנשי קשר בחיפוש';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'בזמן חיפוש אחרונים, הצג גם אנשים תואמים מפנקס הכתובות שלך מתחת לתוצאות היסטוריית השיחות.';

  @override
  String get voiceSearch => 'חיפוש קולי';

  @override
  String get createNewContact => 'צור איש קשר חדש';

  @override
  String callError(String error) {
    return 'שגיאת שיחה: $error';
  }

  @override
  String get noRecentCalls => 'אין שיחות אחרונות';

  @override
  String get callHistoryEmpty => 'היסטוריית השיחות שלך תופיע כאן.';

  @override
  String get loadMore => 'טען עוד';

  @override
  String get frequentlyContactedHeader => 'יצר קשר תדיר';

  @override
  String get recentHistory => 'היסטוריה אחרונה';

  @override
  String get noFavouritesRecentsHint =>
      'עדיין אין מועדפים. סמן איש קשר בכוכב, לחץ לחיצה ארוכה על שיחה או השתמש בכרטיסייה מועדפים.';

  @override
  String get copyNumber => 'העתק מספר';

  @override
  String get editNumberBeforeCall => 'ערוך מספר לפני השיחה';

  @override
  String get removeFromFavourites => 'הסר מהמועדפים';

  @override
  String get addToFavourites => 'הוסף למועדפים';

  @override
  String get blockNumberQuestion => 'מספר חסום?';

  @override
  String blockNumberConfirm(String number) {
    return 'לא תקבל יותר שיחות או הודעות טקסט מ-$number.';
  }

  @override
  String get blocked => 'חָסוּם';

  @override
  String get couldNotBlock => 'לא ניתן לחסום';

  @override
  String get contactNotOnDevice => 'איש הקשר לא נשמר במכשיר זה';

  @override
  String get unblocked => 'בוטלה החסימה';

  @override
  String get numberCopied => 'המספר הועתק';

  @override
  String get showLess => 'הצג פחות';

  @override
  String get showAllTimes => 'הצג את כל הזמנים';

  @override
  String mostRecent(String time) {
    return 'האחרון · $time';
  }

  @override
  String get videoCall => 'שיחת וידאו';

  @override
  String get couldNotPlaceVideoCall => 'לא ניתן היה לבצע שיחת וידאו';

  @override
  String get message => 'הוֹדָעָה';

  @override
  String get couldNotOpenMessaging =>
      'לא ניתן היה לפתוח את אפליקציית העברת ההודעות';

  @override
  String get history => 'הִיסטוֹרִיָה';

  @override
  String get viewContact => 'הצג איש קשר';

  @override
  String get addToContact => 'הוסף ליצירת קשר';

  @override
  String get callTypeMissed => 'החמצה';

  @override
  String get callTypeRejected => 'נִדחֶה';

  @override
  String get callTypeIncoming => 'נִכנָס';

  @override
  String get callTypeOutgoing => 'יוֹצֵא';

  @override
  String get today => 'הַיוֹם';

  @override
  String get yesterday => 'אֶתמוֹל';

  @override
  String get justNow => 'זֶה עַתָה';

  @override
  String minutesAgo(int count) {
    return 'לפני $count דקות';
  }

  @override
  String hoursAgo(int count) {
    return 'לפני $count שעות';
  }

  @override
  String get filterAll => 'כֹּל';

  @override
  String get filterMissed => 'החמצה';

  @override
  String get filterContacts => 'אנשי קשר';

  @override
  String get filterNonContacts => 'ללא אנשי קשר';

  @override
  String get iconUpdated => 'הסמל עודכן. ייתכן שיידרש רגע לרענון מסך הבית שלך.';

  @override
  String get iconSavedRelease =>
      'הבחירה נשמרה. סמל מסך הבית מתעדכן בגירסה בונה.';

  @override
  String couldNotChangeIcon(String error) {
    return 'לא ניתן לשנות את הסמל: $error';
  }

  @override
  String get launcherClassicBlack => 'קלאסי (שחור)';

  @override
  String get launcherLight => 'אוֹר';

  @override
  String get launcherNothingRed => 'שום דבר אדום';

  @override
  String get launcherDarkGrey => 'אפור כהה';

  @override
  String get launcherCream => 'קרֶם';

  @override
  String get launcherRetroPhone => 'טלפון רטרו';

  @override
  String get launcherRetroPhoneLight => 'טלפון רטרו (קל)';

  @override
  String get voiceSearchUnavailable => 'חיפוש קולי אינו זמין במכשיר זה.';

  @override
  String voiceSearchFailed(String error) {
    return 'החיפוש הקולי נכשל: $error';
  }

  @override
  String get customColor => 'מִנְהָג';

  @override
  String get selectColor => 'בחר צבע';

  @override
  String get reset => 'אִתחוּל';

  @override
  String get simPickerTitle => 'בחר SIM';

  @override
  String get simChooseForCall => 'בחר SIM עבור שיחה זו';

  @override
  String get defaultSimAsk => 'תשאל כל פעם';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'פרטי יצירת קשר';

  @override
  String get call => 'שִׂיחָה';

  @override
  String get share => 'לַחֲלוֹק';

  @override
  String get favourite => 'מוּעֲדָף';

  @override
  String get unfavourite => 'לא מועדף';

  @override
  String get blockContact => 'חסום איש קשר';

  @override
  String get unblockContact => 'בטל את חסימת איש הקשר';

  @override
  String get deleteContact => 'מחק איש קשר';

  @override
  String get phone => 'טֵלֵפוֹן';

  @override
  String get email => 'אֶלֶקטרוֹנִי';

  @override
  String get ringtone => 'רינגטון';

  @override
  String get defaultRingtone => 'בְּרִירַת מֶחדָל';

  @override
  String get simForContact => 'SIM עבור איש קשר זה';

  @override
  String get callHistoryTitle => 'היסטוריית שיחות';

  @override
  String get noCallsWithNumber => 'אין שיחות עם המספר הזה';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutesמ ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '$secondsש\'';
  }

  @override
  String get glyphAnimationStyle => 'אנימציית גליפים';

  @override
  String get inCallGlyphAnimationStyle => 'אנימציית Glyph במהלך שיחה';

  @override
  String get recordsOff => 'כבוי';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'סים ברירת מחדל';

  @override
  String get nothingPhoneOnly => 'כלום טלפון בלבד';

  @override
  String get nothingPhoneOnlySubtitle => 'תכונות גליף דורשות Nothing Phone';

  @override
  String get custom => 'מִנְהָג';

  @override
  String presetColorHex(String hex) {
    return 'מוגדר מראש · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'מותאם אישית · $hex';
  }

  @override
  String get oneContact => 'איש קשר 1';

  @override
  String upToContacts(int count) {
    return 'עד $count אנשי קשר';
  }

  @override
  String get answerButtonTapSubtitle => 'הקש על הלחצן כדי לענות';

  @override
  String get filterCalls => 'סינון שיחות';

  @override
  String get filterTooltip => 'לְסַנֵן';

  @override
  String get settingsTooltip => 'הגדרות';

  @override
  String get filterAllSubtitle => 'יומן שיחות שלם';

  @override
  String get filterMissedSubtitle => 'החמיצו ונדחו';

  @override
  String get filterContactsSubtitle => 'שיחות שהותאמו לאיש קשר שמור';

  @override
  String get filterNonContactsSubtitle => 'מספרים אינם בפנקס הכתובות שלך';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'שיחה מתמשכת: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM ברירת מחדל לשיחות';

  @override
  String get blinkInterval => 'מרווח מצמוצים';

  @override
  String get close => 'לִסְגוֹר';

  @override
  String get frequentlyContactedInfoBody =>
      'מציג את מספרי הטלפון הנקראים ביותר שלך בראש הכרטיסייה \'אחרונים\', בהתבסס על מספר השיחות הנכנסות, היוצאות, שלא נענו או נדחו שהיו לך עם כל מספר בפרק הזמן שתבחר.\n\nמספר רשומות: הגדר ל-0 כדי לכבות זאת. השתמש ב-1-20 כדי להראות כמה אנשי קשר מובילים.\n\nפרק הזמן חל רק כאשר מוצג איש קשר אחד לפחות.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count אורות, ${ms}ms מהירות';
  }

  @override
  String get deleteContactQuestion => 'למחוק איש קשר?';

  @override
  String get deleteContactBody => 'איש קשר זה יימחק לצמיתות מהמכשיר שלך.';

  @override
  String get blockContactQuestion => 'לחסום איש קשר?';

  @override
  String get unblockContactQuestion => 'לבטל את חסימת איש הקשר?';

  @override
  String get blockContactBody =>
      'לא תקבל עוד שיחות או הודעות טקסט מאיש קשר זה.';

  @override
  String get unblockContactBody => 'תתחיל לקבל שיחות והודעות טקסט מאיש קשר זה.';

  @override
  String get contactBlocked => 'איש הקשר נחסם';

  @override
  String get contactUnblocked => 'איש הקשר בוטל';

  @override
  String get noPhoneNumbersToBlock => 'אין מספרי טלפון לחסום';

  @override
  String get simSameAsSystem => 'זהה למערכת';

  @override
  String get simSameAsSystemSubtitle => 'עוקב אחר ברירת המחדל של SIM בהגדרות';

  @override
  String get simAskEveryTimeForContact =>
      'הצג תמיד את בוחר ה-SIM עבור איש קשר זה';

  @override
  String get ringtoneSetForContact => 'רינגטון מוגדר גלובלי עבור איש קשר זה';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'בחירת הרינגטון נכשלה: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'שגיאה: $error';
  }

  @override
  String get noCallHistoryFound => 'לא נמצאה היסטוריית שיחות';

  @override
  String get speedDialVoicemail => 'חיוג מהיר: תא קולי';

  @override
  String shareContactSubject(String name) {
    return 'איש קשר: $name';
  }

  @override
  String get contactInfo => 'פרטי יצירת קשר';

  @override
  String get dontAskAgainSim => 'אל תשאל שוב';

  @override
  String get simDontAskAgainSubtitle =>
      'השתמש ב-SIM זה כברירת מחדל (שינוי בהגדרות)';

  @override
  String get addContact => 'הוסף איש קשר';

  @override
  String get createContact => 'צור קשר';

  @override
  String get paste => 'לְהַדבִּיק';

  @override
  String get clear => 'בָּרוּר';

  @override
  String get returnToCall => 'חזור לשיחה';

  @override
  String get numberOfRecordsTitle => 'מספר רשומות';

  @override
  String get recordsPickerSubtitle =>
      'כמה ערכים שיוצרו קשר תכופים להציג (0 = מושבת)';

  @override
  String get torchInfoTitle => 'מצמוץ לפיד';

  @override
  String get torchInfoBody =>
      'מהבהב את פלאש המצלמה במהלך שיחות נכנסות, יוצאות או מתמשכות. ללא תלות בנורות Glyph.';

  @override
  String get glyphMapTitle => 'פריסת גליפים';

  @override
  String get glyphMapBody =>
      'שום דבר טלפון 1 אזורי LED Glyph. אנימציות יוצאות ושיחות משתמשות בערוצים אלה.';

  @override
  String get answerMethodTitle => 'שיטת תשובה';

  @override
  String get glyphOutgoingCallStyleTitle => 'סגנון שיחה יוצאת';

  @override
  String get glyphInCallAnimationTitle => 'אנימציה של גליף בשיחה';

  @override
  String get themePickerTitle => 'נוֹשֵׂא';

  @override
  String get torchIncomingTitle => 'לפיד שיחה נכנסת';

  @override
  String get torchOutgoingTitle => 'לפיד שיחה יוצאת';

  @override
  String get torchOngoingTitle => 'לפיד שיחה מתמשכת';

  @override
  String get timePeriodTitle => 'פרק זמן';

  @override
  String get ok => 'בסדר';

  @override
  String get confirmDeleteCall => 'למחוק את השיחה הזו מההיסטוריה?';

  @override
  String get confirmDeleteAllCalls => 'למחוק את כל השיחות עם המספר הזה?';

  @override
  String get whatsapp => 'וואטסאפ';

  @override
  String get sendMessage => 'שלח הודעה';

  @override
  String get addToExistingContactAction => 'הוסף לאיש קשר';

  @override
  String get mobileLabel => 'נייד';

  @override
  String get callingSimForContactTitle => 'מתקשר ל-SIM עבור איש הקשר הזה';

  @override
  String get contactSettings => 'הגדרות אנשי קשר';

  @override
  String get setCallingSim => 'הגדר SIM להתקשרות';

  @override
  String get contactRingtone => 'רינגטון ליצירת קשר';

  @override
  String get shareContact => 'שתף איש קשר';

  @override
  String get blockNumbers => 'חסום מספרים';

  @override
  String get unblockNumbers => 'בטל חסימה של מספרים';

  @override
  String get connectedApps => 'אפליקציות מחוברות';

  @override
  String get simNotSet => 'לא מוגדר';

  @override
  String get ringtoneDefault => 'בְּרִירַת מֶחדָל';

  @override
  String get customRingtone => 'מִנְהָג';

  @override
  String get aboutSection => 'אוֹדוֹת';

  @override
  String get aboutFeedbackSection => 'אודות ומשוב';

  @override
  String get aboutDescription =>
      'Nothing Dialer הוא קוד פתוח. אם אתה מפתח, אתה מוזמן לחקור את הקוד ולתרום.';

  @override
  String get aboutViewSource => 'הצג ב-GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'לא ניתן היה לפתוח את הקישור';

  @override
  String get reviewSection => 'סְקִירָה';

  @override
  String get reviewDescription =>
      'נהנה מכלום חייגן? הדירוג שלך ב-Google Play עוזר לאחרים למצוא את האפליקציה.';

  @override
  String get reviewRateOnPlay => 'דרג ב-Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'השאר דירוג מבלי לצאת מהאפליקציה';

  @override
  String get reviewCouldNotOpen => 'לא ניתן היה לפתוח את Google Play';

  @override
  String get breathSpeed => 'מהירות נשימה';

  @override
  String get breathSpeedBlinkHint =>
      'נמוך יותר = מצמוץ, גבוה יותר = נשימה איטית';

  @override
  String get speedSliderHint => 'נמוך יותר = מהיר יותר, גבוה יותר = איטי יותר';

  @override
  String get swatchDefault => 'בְּרִירַת מֶחדָל';

  @override
  String get customAccentColorPicker => 'צבע מבטא מותאם אישית';

  @override
  String get customLightBackgroundPicker => 'רקע אור מותאם אישית';

  @override
  String get customDarkBackgroundPicker => 'רקע כהה מותאם אישית';

  @override
  String get customCallBackgroundPicker => 'רקע שיחה מותאם אישית';

  @override
  String get ongoingCallStyleTitle => 'סגנון שיחה מתמשך';

  @override
  String get glyphMapUnavailable => 'מפת גליפים לא זמינה';

  @override
  String get animationDelayRange => 'השהיית אנימציה (1 שניות - 10 שניות)';

  @override
  String get animationDelayRangeSingle =>
      'השהיית אנימציה (0.1 שניות - 10 שניות)';

  @override
  String get inCallMute => 'לְהַשְׁתִיק';

  @override
  String get inCallKeypad => 'לוח מקשים';

  @override
  String get inCallSpeaker => 'רַמקוֹל';

  @override
  String get inCallMore => 'יוֹתֵר';

  @override
  String get inCallBluetooth => 'בלוטות\'';

  @override
  String get inCallPhone => 'טֵלֵפוֹן';

  @override
  String get inCallAddCall => 'הוסף שיחה';

  @override
  String get inCallChangeSim => 'שנה SIM';

  @override
  String get inCallDecline => 'יְרִידָה';

  @override
  String get inCallAnswer => 'תְשׁוּבָה';

  @override
  String get inCallMessage => 'הוֹדָעָה';

  @override
  String get inCallCalling => 'יִעוּד…';

  @override
  String get inCallIncoming => 'שיחה נכנסת';

  @override
  String get inCallSelectSim => 'בחר SIM...';

  @override
  String get inCallSwitchingSim => 'מחליף SIM...';

  @override
  String get inCallCallEnded => 'השיחה הסתיימה';

  @override
  String inCallCallingVia(String sim) {
    return 'מתקשר דרך $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'מתקשר דרך <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'בחר SIM עבור שיחה זו';

  @override
  String get inCallDragAnswerDecline =>
      'גרור ימינה כדי לענות · גרור שמאלה כדי לדחות';

  @override
  String inCallMobileNumber(String number) {
    return 'נייד $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (נוכחי)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'התקשר דרך <b>$sim</b> מ';
  }

  @override
  String get inCallCallFrom => 'התקשר מ';

  @override
  String get inCallUnknown => 'לֹא יְדוּעַ';

  @override
  String get selectContactRingtone => 'בחר רינגטון ליצירת קשר';

  @override
  String get speakToSearchPrompt => 'דבר כדי לחפש';

  @override
  String get phonePermissionRequired => 'נדרשת אישור טלפוני';

  @override
  String callFailed(String error) {
    return 'השיחה נכשלה: $error';
  }

  @override
  String get callPermissionDenied => 'הרשאת השיחה נדחתה';

  @override
  String get alreadyDefaultDialer => 'כבר מוגדר כחייגן ברירת מחדל';

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
