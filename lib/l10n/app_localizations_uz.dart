// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get appTitle => 'Hech narsa teruvchi';

  @override
  String get settings => 'Sozlamalar';

  @override
  String get settingsSearchHint => 'Qidiruv sozlamalari';

  @override
  String get settingsSearchNoResults => 'Hech qanday sozlamalar topilmadi';

  @override
  String get general => 'General';

  @override
  String get theme => 'Mavzu';

  @override
  String get themeSystemDefault => 'Tizim standarti';

  @override
  String get themeLight => 'Nur';

  @override
  String get themeDark => 'Qorong\'i';

  @override
  String get themeFollowSystem => 'Tizim sozlamalariga rioya qiling';

  @override
  String get themeAlwaysLight => 'Har doim engil mavzudan foydalaning';

  @override
  String get themeAlwaysDark => 'Har doim qorong\'u mavzudan foydalaning';

  @override
  String get language => 'Til';

  @override
  String get languageDeviceDefault => 'Qurilma standarti';

  @override
  String get languagePickerTitle => 'Til';

  @override
  String get languageSearchHint => 'Tillarni qidirish';

  @override
  String get font => 'Shrift';

  @override
  String get fontSystem => 'Tizim standarti';

  @override
  String get fontNdot => 'Hech narsa (NDot)';

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
      'Shrift yuklab olinmadi. Ulanishingizni tekshiring va qaytadan urining.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Shrift';

  @override
  String get fontPreviewSample => 'Hech narsa teruvchi';

  @override
  String get fontAppWide => 'Ilova shrifti';

  @override
  String get fontApplyTo => 'ga murojaat qiling';

  @override
  String get fontApplyEntireApp => 'Butun ilova';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Hamma joyda bir xil shrift, shu jumladan qo\'ng\'iroq paytida';

  @override
  String get fontApplyTitlesOnly => 'Sarlavhalar va sarlavhalar';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Faqat katta sarlavhalar va bo\'lim sarlavhalari';

  @override
  String get fontApplyCustomize => 'Moslashtiring';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Har bir ekran va matn turi uchun shriftni tanlang';

  @override
  String get fontCustomizeSection => 'Ekran bo\'yicha moslashtiring';

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
  String get fontRolePageTitle => 'Sahifa sarlavhasi';

  @override
  String get fontRoleSectionHeader => 'Bo\'lim sarlavhasi';

  @override
  String get fontRolePrimary => 'Asosiy matn';

  @override
  String get fontRoleSecondary => 'Ikkilamchi matn';

  @override
  String get fontRoleButton => 'Tugmalar';

  @override
  String get fontRoleDialKey => 'Telefon tugmalari';

  @override
  String get fontSurfaceRecents => 'Oxirgilar';

  @override
  String get fontSurfaceContacts => 'Kontaktlar';

  @override
  String get fontSurfaceSettings => 'Sozlamalar';

  @override
  String get fontSurfaceDialpad => 'Terish paneli';

  @override
  String get fontSurfaceShell => 'Navigatsiya';

  @override
  String get fontSurfaceDefaultDialer => 'Odatiy terish so\'rovi';

  @override
  String get fontSurfaceFavourites => 'Sevimlilar';

  @override
  String get fontSurfaceBlocked => 'Bloklangan raqamlar';

  @override
  String get fontSurfaceContactDetail => 'Aloqa ma\'lumotlari';

  @override
  String get fontSurfaceCallHistory => 'Qo\'ng\'iroqlar tarixi';

  @override
  String get fontSurfaceSheets => 'Choyshablar va tanlagichlar';

  @override
  String get fontSurfaceInCall => 'Qo\'ng\'iroq paytida ekran';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font - butun ilova';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — faqat sarlavhalar';
  }

  @override
  String get fontSubtitleCustomize => 'Har bir ekran uchun moslashtirilgan';

  @override
  String get background => 'Fon';

  @override
  String get accent => 'Urg\'u';

  @override
  String get lightBackground => 'Yengil fon';

  @override
  String get lightAccent => 'Yengil aksent';

  @override
  String get darkBackground => 'Qorong\'i fon';

  @override
  String get darkAccent => 'Qorong\'u aksent';

  @override
  String get callBackground => 'Qo\'ng\'iroq foni';

  @override
  String get appIcon => 'Ilova belgisi';

  @override
  String get answerMethod => 'Javob usuli';

  @override
  String get answerSlide => 'Javob berish uchun suring';

  @override
  String get answerSlideSubtitle =>
      'Google Phone kabi panelda chapga/o‘ngga suring';

  @override
  String get answerButton => 'Tugmachani bosish';

  @override
  String get answerButtonSubtitle =>
      'Javob berish yoki rad etish tugmalarini bosing';

  @override
  String get answerHuawei => 'Huawei uslubi';

  @override
  String get answerHuaweiSubtitle =>
      'Javob berish uchun doirani yashil telefonga torting';

  @override
  String get answerHuaweiTileSubtitle =>
      'Huawei — yashil / qizil rangga torting';

  @override
  String get calling => 'Qo\'ng\'iroq qilish';

  @override
  String get defaultSim => 'Standart SIM';

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
  String get askEveryTime => 'Har safar so\'rang';

  @override
  String get askEveryTimeSubtitle =>
      'Har bir qo‘ng‘iroqdan oldin SIM-karta tanlagichni ko‘rsating';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Hech qanday SIM karta topilmadi';

  @override
  String couldNotLoadSims(String error) {
    return 'SIM kartalarni yuklab bo‘lmadi: $error';
  }

  @override
  String get allFavourites => 'Barcha sevimlilar';

  @override
  String get allFavouritesSubtitle =>
      'Qayta tartiblash, olib tashlash va kontaktlardan qo\'shish';

  @override
  String get blockedNumbers => 'Bloklangan raqamlar';

  @override
  String get blockedNumbersSubtitle =>
      'Raqamlarni ko‘rish va blokdan chiqarish';

  @override
  String get soundsAndVibration => 'Ovoz va tebranish';

  @override
  String get soundsAndVibrationSubtitle =>
      'Rington, tebranish, terish paneli ohanglari';

  @override
  String couldNotOpenSettings(String error) {
    return 'Sozlamalarni ochib bo‘lmadi: $error';
  }

  @override
  String get frequentlyContacted => 'Tez-tez aloqada';

  @override
  String get numberOfRecords => 'Yozuvlar soni';

  @override
  String get timePeriod => 'Vaqt davri';

  @override
  String get periodLast24Hours => 'Oxirgi 24 soat';

  @override
  String get periodLast24HoursSubtitle => 'O\'tgan kundan qo\'ng\'iroqlar';

  @override
  String get periodLast7Days => 'Oxirgi 7 kun';

  @override
  String get periodLast7DaysSubtitle => 'O\'tgan haftadagi qo\'ng\'iroqlar';

  @override
  String get periodLast30Days => 'Oxirgi 30 kun';

  @override
  String get periodLast30DaysSubtitle => 'O\'tgan oydagi qo\'ng\'iroqlar';

  @override
  String get periodLast12Months => 'Oxirgi 12 oy';

  @override
  String get periodLast12MonthsSubtitle => 'O\'tgan yili qo\'ng\'iroqlar';

  @override
  String get periodAllTime => 'Hamma vaqt';

  @override
  String get periodAllTimeSubtitle => 'Butun qo\'ng\'iroqlar tarixi';

  @override
  String get frequentMaxOff => 'Oʻchirilgan';

  @override
  String frequentMaxCount(int count) {
    return '$count kontaktlar';
  }

  @override
  String get torchBlink => 'Torch miltillash';

  @override
  String get torchIncomingCall => 'Kiruvchi qo\'ng\'iroq chiroqchasi';

  @override
  String get torchOutgoingCall => 'Chiqish qo\'ng\'irog\'i';

  @override
  String get torchOngoingCall => 'Davom etayotgan qo\'ng\'iroq mash\'alasi';

  @override
  String get torchIncomingInterval => 'Kiruvchi miltillash oralig\'i';

  @override
  String get torchOutgoingInterval => 'Chiquvchi miltillash oralig\'i';

  @override
  String get torchOngoingInterval => 'Davomiy miltillash oralig\'i';

  @override
  String get torchOff => 'Oʻchirilgan';

  @override
  String get torchOffIncomingSubtitle =>
      'Qo\'ng\'iroq paytida mash\'al yoqilmaydi';

  @override
  String get torchOffOutgoingSubtitle => 'Terish paytida chiroq yoqilmaydi';

  @override
  String get torchOffOngoingSubtitle =>
      'Faol qo\'ng\'iroq paytida mash\'al yo\'q';

  @override
  String get torchFixedInterval => 'Ruxsat etilgan interval';

  @override
  String get torchFixedIntervalSubtitle => 'Belgilangan tezlikda miltillash';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds miltillash';
  }

  @override
  String get flashlightUnavailable => 'Chiroq bu qurilmada mavjud emas';

  @override
  String get glyphLights => 'Glif chiroqlari';

  @override
  String get glyphCallingAnimation => 'Glif chaqiruv animatsiyasi';

  @override
  String get glyphOngoingAnimation =>
      'Glif davom etayotgan qo\'ng\'iroq animatsiyasi';

  @override
  String get glyphNone => 'Yo\'q';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Chiquvchi qo\'ng\'iroqlar uchun Glif chiroqlarini o\'chiring';

  @override
  String get glyphNoneInCallSubtitle =>
      'Faol qo\'ng\'iroq paytida Glif chiroqlarini o\'chiring';

  @override
  String get glyphBreathProgress => 'Nafas va taraqqiyot';

  @override
  String get glyphBreathProgressSubtitle =>
      'Chiroqlar nafas oladi, chiziq 65 soniyadan ko\'proq to\'ldiriladi';

  @override
  String get glyphAccumulate => 'To\'plash';

  @override
  String get glyphAccumulateSubtitle =>
      'C1-C4 chiroqlarida animatsiyani to\'plash';

  @override
  String get glyphSingle => 'Bo\'ydoq';

  @override
  String get glyphSingleSubtitle =>
      'C1-C4 bo\'ylab harakatlanadigan yagona yorug\'lik';

  @override
  String get glyphBreath => 'Nafas olish';

  @override
  String get glyphBreathSubtitle => 'Chiroqlarni va tezlikni tanlang';

  @override
  String get glyphSteady => 'Barqaror';

  @override
  String get glyphSteadySubtitle => 'Tanlangan chiroqlar yoniq qoladi';

  @override
  String get breathSettings => 'Nafas olish sozlamalari';

  @override
  String get activeLights => 'Faol chiroqlar';

  @override
  String lightsCount(int count) {
    return '$count chiroqlar';
  }

  @override
  String get speedSettings => 'Tezlik sozlamalari';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms kechikish';
  }

  @override
  String get durationAndSpeed => 'Davomiyligi va tezligi';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s davomiylik, ${interval}ms oraliq';
  }

  @override
  String get cancel => 'Bekor qilish';

  @override
  String get done => 'Bajarildi';

  @override
  String get save => 'Saqlash';

  @override
  String get block => 'Bloklash';

  @override
  String get delete => 'Oʻchirish';

  @override
  String get recents => 'Oxirgilar';

  @override
  String get contacts => 'Kontaktlar';

  @override
  String get hideFavouritesOnRecents =>
      'Oxirgilar sahifasida sevimlilarni yashirish';

  @override
  String get showFavouritesOnRecents =>
      'Oxirgilar boʻlimida sevimlilarni koʻrsatish';

  @override
  String get ongoingCall => 'Davom etayotgan qo\'ng\'iroq';

  @override
  String get setAsDefaultTitle => 'SET AS\nSUVAT';

  @override
  String get setAsDefaultBody =>
      'Nothing Dialer-dan foydalanish uchun u standart telefon ilovasi sifatida sozlanishi kerak. Bu qo‘ng‘iroqlarni boshqarish, tarixni ko‘rish va Glif animatsiyalaridan foydalanish imkonini beradi.';

  @override
  String get setAsDefaultButton => 'SUVGA SOZLASH';

  @override
  String get nothingDialerBrand => 'HECH NARSA TERISH 1';

  @override
  String get favourites => 'Sevimlilar';

  @override
  String get addFavourite => 'Sevimli qo\'shing';

  @override
  String get favouritesDrawerHint =>
      'Kontaktlarni qo\'shish uchun menyudan foydalaning. Jadval tashqarisiga teging yoki uni yoping. Kontaktni tafsilotlaridan yulduzcha bilan belgilang yoki Oxirgilar ilovasida qo‘ng‘iroqni uzoq bosib turing.';

  @override
  String get menu => 'Menyu';

  @override
  String get noFavouritesYet =>
      'Hali sevimlilar yo\'q.\nKontaktni qo\'shish yoki yulduzcha qo\'shish uchun menyuni oching.';

  @override
  String get contactsPermissionNeeded => 'Kontaktlar uchun ruxsat kerak';

  @override
  String get chooseContact => 'Kontaktni tanlang';

  @override
  String get noPhone => 'Telefon yo\'q';

  @override
  String get pickNumber => 'Raqamni tanlang';

  @override
  String get contactHasNoPhone => 'Bu kontaktda telefon raqami yo‘q';

  @override
  String get blockNumber => 'Blok raqami';

  @override
  String get enterPhoneNumber => 'Telefon raqamini kiriting';

  @override
  String unblockedDisplay(String display) {
    return 'Blokdan chiqarildi $display';
  }

  @override
  String get couldNotUnblockNumber => 'Raqam blokdan chiqarilmadi';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bloklandi • $matched mos keldi';
  }

  @override
  String get contactsPermissionMissing =>
      'Kontaktlar uchun ruxsat yo‘q. Tuzatish uchun bosing.';

  @override
  String get noBlockedNumbers => 'Bloklangan raqamlar yo\'q';

  @override
  String get unknownContact => 'Noma\'lum kontakt';

  @override
  String get unblock => 'Blokdan chiqarish';

  @override
  String get permissionNeeded => 'Ruxsat kerak';

  @override
  String get grantPhonePermission =>
      'Qo\'ng\'iroqlar tarixini ko\'rish uchun telefonga ruxsat bering.';

  @override
  String get grantContactsPermission =>
      'Kontaktlarga manzillar kitobingizni koʻrishga ruxsat bering.';

  @override
  String get openSettings => 'Sozlamalarni oching';

  @override
  String get tryAgain => 'Qayta urinib ko\'ring';

  @override
  String get couldNotLoadContacts => 'Kontaktlar yuklanmadi';

  @override
  String get contactsLoadError =>
      'Manzil kitobingizni o‘qishda nimadir xato ketdi.';

  @override
  String get noContactsFound => 'Hech qanday kontakt topilmadi';

  @override
  String get contactsEmptySubtitle =>
      'Bu yerda qurilmangizdagi kontaktlar paydo bo‘ladi.';

  @override
  String get searchContacts => 'Kontaktlarni qidirish…';

  @override
  String get searchRecentCalls => 'Oxirgi qo\'ng\'iroqlarni qidiring';

  @override
  String get fromContacts => 'Kontaktlardan';

  @override
  String get recentsSearchSection => 'Oxirgi qidiruv';

  @override
  String get recentsSearchShowContacts => 'Qidiruvda kontaktlarni ko\'rsatish';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Oxirgilarni qidirayotganda, shuningdek, qo\'ng\'iroqlar tarixi natijalari ostida manzillar kitobingizdan mos keladigan odamlarni ko\'rsating.';

  @override
  String get voiceSearch => 'Ovozli qidiruv';

  @override
  String get createNewContact => 'Yangi kontakt yarating';

  @override
  String callError(String error) {
    return 'Qo‘ng‘iroq xatosi: $error';
  }

  @override
  String get noRecentCalls => 'Yaqinda qo\'ng\'iroqlar yo\'q';

  @override
  String get callHistoryEmpty =>
      'Qo\'ng\'iroqlaringiz tarixi shu yerda paydo bo\'ladi.';

  @override
  String get loadMore => 'Ko\'proq yuklash';

  @override
  String get frequentlyContactedHeader => 'Tez-tez aloqada';

  @override
  String get recentHistory => 'Yaqin tarix';

  @override
  String get noFavouritesRecentsHint =>
      'Hali sevimlilar yo\'q. Kontaktni yulduzcha bilan belgilang, qo\'ng\'iroqni uzoq bosing yoki Sevimlilar yorlig\'idan foydalaning.';

  @override
  String get copyNumber => 'Raqamni nusxalash';

  @override
  String get editNumberBeforeCall =>
      'Qo\'ng\'iroq qilishdan oldin raqamni tahrirlang';

  @override
  String get removeFromFavourites => 'Sevimlilardan olib tashlang';

  @override
  String get addToFavourites => 'Sevimlilarga qo\'shing';

  @override
  String get blockNumberQuestion => 'Blok raqamimi?';

  @override
  String blockNumberConfirm(String number) {
    return 'Siz endi $number raqamidan qo‘ng‘iroqlar yoki SMSlarni qabul qilmaysiz.';
  }

  @override
  String get blocked => 'Bloklangan';

  @override
  String get couldNotBlock => 'Bloklab bo‘lmadi';

  @override
  String get contactNotOnDevice => 'Kontakt bu qurilmada saqlanmadi';

  @override
  String get unblocked => 'Blokdan chiqarildi';

  @override
  String get numberCopied => 'Raqam nusxalandi';

  @override
  String get showLess => 'Kamroq ko\'rsatish';

  @override
  String get showAllTimes => 'Hamma vaqtni ko\'rsatish';

  @override
  String mostRecent(String time) {
    return 'Eng oxirgi · $time';
  }

  @override
  String get videoCall => 'Video qo\'ng\'iroq';

  @override
  String get couldNotPlaceVideoCall =>
      'Video qo‘ng‘iroqni amalga oshirib bo‘lmadi';

  @override
  String get message => 'Xabar';

  @override
  String get couldNotOpenMessaging =>
      'Xabar almashish ilovasini ochib bo‘lmadi';

  @override
  String get history => 'Tarix';

  @override
  String get viewContact => 'Kontaktni ko\'rish';

  @override
  String get addToContact => 'Kontaktga qo\'shing';

  @override
  String get callTypeMissed => 'O\'tkazib yuborilgan';

  @override
  String get callTypeRejected => 'Rad etilgan';

  @override
  String get callTypeIncoming => 'Kiruvchi';

  @override
  String get callTypeOutgoing => 'Chiquvchi';

  @override
  String get today => 'Bugun';

  @override
  String get yesterday => 'Kecha';

  @override
  String get justNow => 'Hozir';

  @override
  String minutesAgo(int count) {
    return '$count daqiqa oldin';
  }

  @override
  String hoursAgo(int count) {
    return '$count soat oldin';
  }

  @override
  String get filterAll => 'Hammasi';

  @override
  String get filterMissed => 'O\'tkazib yuborilgan';

  @override
  String get filterContacts => 'Kontaktlar';

  @override
  String get filterNonContacts => 'Kontaktsizlar';

  @override
  String get iconUpdated =>
      'Belgi yangilandi. Bosh ekranni yangilash biroz vaqt olishi mumkin.';

  @override
  String get iconSavedRelease =>
      'Tanlov saqlandi. Bosh ekran belgisi relizlar uchun yangilanadi.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Belgini oʻzgartirib boʻlmadi: $error';
  }

  @override
  String get launcherClassicBlack => 'Klassik (qora)';

  @override
  String get launcherLight => 'Nur';

  @override
  String get launcherNothingRed => 'Qizil narsa yo\'q';

  @override
  String get launcherDarkGrey => 'Toʻq kulrang';

  @override
  String get launcherCream => 'Krem';

  @override
  String get launcherRetroPhone => 'Retro telefon';

  @override
  String get launcherRetroPhoneLight => 'Retro telefon (yorug\'lik)';

  @override
  String get voiceSearchUnavailable =>
      'Bu qurilmada ovozli qidiruv mavjud emas.';

  @override
  String voiceSearchFailed(String error) {
    return 'Ovozli qidiruv amalga oshmadi: $error';
  }

  @override
  String get customColor => 'Maxsus';

  @override
  String get selectColor => 'Rangni tanlang';

  @override
  String get reset => 'Qayta tiklash';

  @override
  String get simPickerTitle => 'SIM kartani tanlang';

  @override
  String get simChooseForCall => 'Ushbu qo\'ng\'iroq uchun SIM-kartani tanlang';

  @override
  String get defaultSimAsk => 'Har safar so\'rang';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Aloqa ma\'lumotlari';

  @override
  String get call => 'Qo\'ng\'iroq qiling';

  @override
  String get share => 'Ulashish';

  @override
  String get favourite => 'Sevimli';

  @override
  String get unfavourite => 'Sevimli emas';

  @override
  String get blockContact => 'Kontaktni bloklash';

  @override
  String get unblockContact => 'Kontaktni blokdan chiqarish';

  @override
  String get deleteContact => 'Kontaktni o\'chirish';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'Elektron pochta';

  @override
  String get ringtone => 'Ringtone';

  @override
  String get defaultRingtone => 'Standart';

  @override
  String get simForContact => 'Ushbu kontakt uchun SIM';

  @override
  String get callHistoryTitle => 'Qo\'ng\'iroqlar tarixi';

  @override
  String get noCallsWithNumber => 'Bu raqam bilan qo\'ng\'iroqlar yo\'q';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glif animatsiyasi';

  @override
  String get inCallGlyphAnimationStyle => 'Chaqiruvdagi Glif animatsiyasi';

  @override
  String get recordsOff => 'Oʻchirilgan';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Standart SIM';

  @override
  String get nothingPhoneOnly => 'Hech narsa Faqat Telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glif funksiyalari uchun Nothing Phone kerak';

  @override
  String get custom => 'Maxsus';

  @override
  String presetColorHex(String hex) {
    return 'Oldindan oʻrnatilgan · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Maxsus · $hex';
  }

  @override
  String get oneContact => '1 ta kontakt';

  @override
  String upToContacts(int count) {
    return '${count}gacha kontaktlar';
  }

  @override
  String get answerButtonTapSubtitle => 'Javob berish uchun tugmani bosing';

  @override
  String get filterCalls => 'Qo\'ng\'iroqlarni filtrlash';

  @override
  String get filterTooltip => 'Filtr';

  @override
  String get settingsTooltip => 'Sozlamalar';

  @override
  String get filterAllSubtitle => 'Butun qo\'ng\'iroqlar jurnali';

  @override
  String get filterMissedSubtitle => 'O\'tkazib yuborilgan va rad etilgan';

  @override
  String get filterContactsSubtitle =>
      'Qo\'ng\'iroqlar saqlangan kontaktga mos keldi';

  @override
  String get filterNonContactsSubtitle =>
      'Raqamlar sizning manzillar kitobingizda yo\'q';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Davom etayotgan qo‘ng‘iroq: $detail';
  }

  @override
  String get defaultSimForCalls => 'Qo\'ng\'iroqlar uchun standart SIM';

  @override
  String get blinkInterval => 'Miltillash oralig\'i';

  @override
  String get close => 'Yopish';

  @override
  String get frequentlyContactedInfoBody =>
      'Siz tanlagan vaqt oralig‘ida har bir raqam bilan qancha kiruvchi, chiquvchi, o‘tkazib yuborilgan yoki rad etilgan qo‘ng‘iroqlar bo‘lganligi asosida “Oxirgilar” yorlig‘ining tepasida eng ko‘p chaqirilgan telefon raqamlaringizni ko‘rsatadi.\n\nYozuvlar soni: buni o\'chirish uchun 0 ga o\'rnating. Shuncha yuqori kontaktlarni ko\'rsatish uchun 1–20 dan foydalaning.\n\nVaqt oralig\'i faqat kamida bitta kontakt ko\'rsatilganda amal qiladi.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count chiroqlar, ${ms}ms tezlik';
  }

  @override
  String get deleteContactQuestion => 'Kontakt oʻchirilsinmi?';

  @override
  String get deleteContactBody =>
      'Bu kontakt qurilmangizdan butunlay oʻchirib tashlanadi.';

  @override
  String get blockContactQuestion => 'Kontakt bloklansinmi?';

  @override
  String get unblockContactQuestion => 'Kontakt blokdan chiqarilsinmi?';

  @override
  String get blockContactBody =>
      'Siz endi bu kontaktdan qo\'ng\'iroqlar yoki SMSlarni qabul qilmaysiz.';

  @override
  String get unblockContactBody =>
      'Siz ushbu kontaktdan qo\'ng\'iroqlar va SMSlarni qabul qilishni boshlaysiz.';

  @override
  String get contactBlocked => 'Kontakt bloklandi';

  @override
  String get contactUnblocked => 'Kontakt blokdan chiqarildi';

  @override
  String get noPhoneNumbersToBlock => 'Bloklash uchun telefon raqamlari yo\'q';

  @override
  String get simSameAsSystem => 'Tizim bilan bir xil';

  @override
  String get simSameAsSystemSubtitle =>
      'Sozlamalarda standart SIM kartaga amal qiladi';

  @override
  String get simAskEveryTimeForContact =>
      'Ushbu kontakt uchun har doim SIM-karta tanlagichni ko\'rsating';

  @override
  String get ringtoneSetForContact =>
      'Ushbu kontakt uchun rington butun dunyo bo\'ylab o\'rnatilgan';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Ringtonni tanlab boʻlmadi: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Xato: $error';
  }

  @override
  String get noCallHistoryFound => 'Qo‘ng‘iroqlar tarixi topilmadi';

  @override
  String get speedDialVoicemail => 'Tez terish: Ovozli pochta';

  @override
  String shareContactSubject(String name) {
    return 'Aloqa: $name';
  }

  @override
  String get contactInfo => 'Aloqa ma\'lumotlari';

  @override
  String get dontAskAgainSim => 'Yana so\'ramang';

  @override
  String get simDontAskAgainSubtitle =>
      'Ushbu SIM kartadan standart sifatida foydalaning (Sozlamalarda o\'zgartiring)';

  @override
  String get addContact => 'Kontakt qo\'shing';

  @override
  String get createContact => 'Kontakt yarating';

  @override
  String get paste => 'joylashtirish';

  @override
  String get clear => 'Toza';

  @override
  String get returnToCall => 'Qo\'ng\'iroqqa qaytish';

  @override
  String get numberOfRecordsTitle => 'Yozuvlar soni';

  @override
  String get recordsPickerSubtitle =>
      'Qancha tez-tez bog\'langan yozuvlarni ko\'rsatish kerak (0 = o\'chirilgan)';

  @override
  String get torchInfoTitle => 'Chiroq miltillaydi';

  @override
  String get torchInfoBody =>
      'Kiruvchi, chiquvchi yoki davom etayotgan qo\'ng\'iroqlar paytida kamera chirog\'ini miltillaydi. Glif chiroqlaridan mustaqil.';

  @override
  String get glyphMapTitle => 'Glif tartibi';

  @override
  String get glyphMapBody =>
      'Hech narsa Telefon 1 Glyph LED zonalari. Chiquvchi va qo‘ng‘iroq ichidagi animatsiyalar ushbu kanallardan foydalanadi.';

  @override
  String get answerMethodTitle => 'Javob usuli';

  @override
  String get glyphOutgoingCallStyleTitle => 'Chiquvchi qoʻngʻiroq uslubi';

  @override
  String get glyphInCallAnimationTitle => 'Chaqiruvda glif animatsiyasi';

  @override
  String get themePickerTitle => 'Mavzu';

  @override
  String get torchIncomingTitle => 'Kiruvchi qo\'ng\'iroq chiroqchasi';

  @override
  String get torchOutgoingTitle => 'Chiqish qo\'ng\'irog\'i';

  @override
  String get torchOngoingTitle => 'Davom etayotgan qo\'ng\'iroq mash\'alasi';

  @override
  String get timePeriodTitle => 'Vaqt davri';

  @override
  String get ok => 'KELISHDIKMI';

  @override
  String get confirmDeleteCall => 'Bu qo‘ng‘iroq tarixdan o‘chirilsinmi?';

  @override
  String get confirmDeleteAllCalls =>
      'Bu raqam bilan qilingan barcha qoʻngʻiroqlar oʻchirilsinmi?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Xabar yuboring';

  @override
  String get addToExistingContactAction => 'Kontaktga qo\'shish';

  @override
  String get mobileLabel => 'Mobil';

  @override
  String get callingSimForContactTitle =>
      'Ushbu kontakt uchun SIM-kartaga qo‘ng‘iroq qilinmoqda';

  @override
  String get contactSettings => 'Kontakt sozlamalari';

  @override
  String get setCallingSim => 'SIM-kartaga qo\'ng\'iroq qilishni sozlang';

  @override
  String get contactRingtone => 'Aloqa uchun ringtone';

  @override
  String get shareContact => 'Kontaktni baham ko\'ring';

  @override
  String get blockNumbers => 'Blok raqamlari';

  @override
  String get unblockNumbers => 'Raqamlarni blokdan chiqarish';

  @override
  String get connectedApps => 'Ulangan ilovalar';

  @override
  String get simNotSet => 'Belgilanmagan';

  @override
  String get ringtoneDefault => 'Standart';

  @override
  String get customRingtone => 'Maxsus';

  @override
  String get aboutSection => 'Haqida';

  @override
  String get aboutFeedbackSection => 'Haqida va fikr-mulohaza';

  @override
  String get aboutDescription =>
      'Hech narsa Dialer ochiq manba emas. Agar siz dasturchi bo\'lsangiz, kodni o\'rganishingiz va o\'z hissangizni qo\'shishingiz mumkin.';

  @override
  String get aboutViewSource => 'GitHub-da ko\'rish';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Havolani ochib bo\'lmadi';

  @override
  String get reviewSection => 'Ko‘rib chiqish';

  @override
  String get reviewDescription =>
      'Nothing Dialer yoqyaptimi? Google Play xizmatidagi reytingingiz boshqalarga ilovani topishga yordam beradi.';

  @override
  String get reviewRateOnPlay => 'Google Play-da baholang';

  @override
  String get reviewRateOnPlaySubtitle => 'Ilovadan chiqmasdan baho qoldiring';

  @override
  String get reviewCouldNotOpen => 'Google Play ochilmadi';

  @override
  String get breathSpeed => 'Nafas tezligi';

  @override
  String get breathSpeedBlinkHint =>
      'Pastki = miltillash, yuqori = sekin nafas olish';

  @override
  String get speedSliderHint => 'Past = tezroq, yuqori = sekinroq';

  @override
  String get swatchDefault => 'Standart';

  @override
  String get customAccentColorPicker => 'Maxsus aksent rangi';

  @override
  String get customLightBackgroundPicker => 'Maxsus ochiq fon';

  @override
  String get customDarkBackgroundPicker => 'Maxsus quyuq fon';

  @override
  String get customCallBackgroundPicker => 'Maxsus qo\'ng\'iroq foni';

  @override
  String get ongoingCallStyleTitle => 'Davom etayotgan qo\'ng\'iroq uslubi';

  @override
  String get glyphMapUnavailable => 'Glif xaritasi mavjud emas';

  @override
  String get animationDelayRange => 'Animatsiyani kechiktirish (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Animatsiya kechikishi (0,1s - 10s)';

  @override
  String get inCallMute => 'Ovozsiz';

  @override
  String get inCallKeypad => 'Klaviatura';

  @override
  String get inCallSpeaker => 'Spiker';

  @override
  String get inCallMore => 'Ko\'proq';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefon';

  @override
  String get inCallAddCall => 'Qo\'ng\'iroq qo\'shish';

  @override
  String get inCallChangeSim => 'SIM kartani almashtiring';

  @override
  String get inCallDecline => 'Rad etish';

  @override
  String get inCallAnswer => 'Javob';

  @override
  String get inCallMessage => 'Xabar';

  @override
  String get inCallCalling => 'Qo‘ng‘iroq qilinmoqda…';

  @override
  String get inCallIncoming => 'Kiruvchi qo\'ng\'iroq';

  @override
  String get inCallSelectSim => 'SIM-kartani tanlang…';

  @override
  String get inCallSwitchingSim => 'SIM karta almashtirilmoqda…';

  @override
  String get inCallCallEnded => 'Qo\'ng\'iroq tugadi';

  @override
  String inCallCallingVia(String sim) {
    return '$sim orqali qo\'ng\'iroq qilish';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '<b>$sim</b> orqali qo\'ng\'iroq qilish';
  }

  @override
  String get inCallChooseSim => 'Ushbu qo\'ng\'iroq uchun SIM-kartani tanlang';

  @override
  String get inCallDragAnswerDecline =>
      'Javob berish uchun o‘ngga torting · Rad etish uchun chapga torting';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (joriy)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return '<b>$sim</b> orqali qo\'ng\'iroq qiling';
  }

  @override
  String get inCallCallFrom => 'dan qo\'ng\'iroq qiling';

  @override
  String get inCallUnknown => 'Noma\'lum';

  @override
  String get selectContactRingtone => 'Kontakt ringtonini tanlang';

  @override
  String get speakToSearchPrompt => 'Qidirish uchun gapiring';

  @override
  String get phonePermissionRequired => 'Telefon ruxsati talab qilinadi';

  @override
  String callFailed(String error) {
    return 'Qo‘ng‘iroq amalga oshmadi: $error';
  }

  @override
  String get callPermissionDenied => 'Qo‘ng‘iroq qilish ruxsati rad etildi';

  @override
  String get alreadyDefaultDialer =>
      'Allaqachon standart terish sifatida o‘rnatilgan';

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
