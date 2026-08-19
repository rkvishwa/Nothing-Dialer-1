// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'Нищо Dialer';

  @override
  String get settings => 'Настройки';

  @override
  String get settingsSearchHint => 'Настройки за търсене';

  @override
  String get settingsSearchNoResults => 'Няма намерени настройки';

  @override
  String get general => 'генерал';

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
  String get theme => 'Тема';

  @override
  String get themeSystemDefault => 'Системни настройки по подразбиране';

  @override
  String get themeLight => 'светлина';

  @override
  String get themeDark => 'Тъмно';

  @override
  String get themeFollowSystem => 'Следвайте системните настройки';

  @override
  String get themeAlwaysLight => 'Винаги използвайте светла тема';

  @override
  String get themeAlwaysDark => 'Винаги използвайте тъмна тема';

  @override
  String get language => 'език';

  @override
  String get languageDeviceDefault => 'Устройство по подразбиране';

  @override
  String get languagePickerTitle => 'език';

  @override
  String get languageSearchHint => 'Търсене на езици';

  @override
  String get font => 'Шрифт';

  @override
  String get fontSystem => 'Система по подразбиране';

  @override
  String get fontNdot => 'Нищо (NDot)';

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
      'Изтеглянето на шрифта не бе успешно. Проверете връзката си и опитайте отново.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Шрифт';

  @override
  String get fontPreviewSample => 'Нищо Dialer';

  @override
  String get fontAppWide => 'Шрифт на приложението';

  @override
  String get fontApplyTo => 'Приложете към';

  @override
  String get fontApplyEntireApp => 'Цялото приложение';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Един и същ шрифт навсякъде, включително по време на разговор';

  @override
  String get fontApplyTitlesOnly => 'Заглавия и заглавки';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Само големи заглавия и заглавки на секции';

  @override
  String get fontApplyCustomize => 'Персонализиране';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Изберете шрифт за екран и тип текст';

  @override
  String get fontCustomizeSection => 'Персонализиране по екран';

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
  String get fontRolePageTitle => 'Заглавие на страницата';

  @override
  String get fontRoleSectionHeader => 'Заглавка на раздел';

  @override
  String get fontRolePrimary => 'Основен текст';

  @override
  String get fontRoleSecondary => 'Вторичен текст';

  @override
  String get fontRoleButton => 'Бутони';

  @override
  String get fontRoleDialKey => 'Клавиши на клавиатурата за набиране';

  @override
  String get fontSurfaceRecents => 'Скорошни';

  @override
  String get fontSurfaceContacts => 'Контакти';

  @override
  String get fontSurfaceSettings => 'Настройки';

  @override
  String get fontSurfaceDialpad => 'Клавиатура за набиране';

  @override
  String get fontSurfaceShell => 'Навигация';

  @override
  String get fontSurfaceDefaultDialer => 'Подкана за набиране по подразбиране';

  @override
  String get fontSurfaceFavourites => 'Любими';

  @override
  String get fontSurfaceBlocked => 'Блокирани номера';

  @override
  String get fontSurfaceContactDetail => 'Данни за контакт';

  @override
  String get fontSurfaceCallHistory => 'История на обажданията';

  @override
  String get fontSurfaceSheets => 'Чаршафи и брачи';

  @override
  String get fontSurfaceInCall => 'Екран при повикване';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — цялото приложение';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — само заглавия';
  }

  @override
  String get fontSubtitleCustomize => 'Персонализирано за екран';

  @override
  String get background => 'Фон';

  @override
  String get accent => 'Акцент';

  @override
  String get lightBackground => 'Светъл фон';

  @override
  String get lightAccent => 'Светъл акцент';

  @override
  String get darkBackground => 'Тъмен фон';

  @override
  String get darkAccent => 'Тъмен акцент';

  @override
  String get callBackground => 'Фон на обаждането';

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
  String get appIcon => 'Икона на приложението';

  @override
  String get answerMethod => 'Метод на отговор';

  @override
  String get answerSlide => 'Плъзнете, за да отговорите';

  @override
  String get answerSlideSubtitle =>
      'Плъзнете наляво/надясно по лентата, като Google Phone';

  @override
  String get answerButton => 'Докосване на бутон';

  @override
  String get answerButtonSubtitle => 'Докоснете бутоните за отговор или отказ';

  @override
  String get answerHuawei => 'Стил на Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Плъзнете кръгчето до зеления телефон, за да отговорите';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — плъзнете до зелено/червено';

  @override
  String get calling => 'Обаждане';

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
  String get defaultSim => 'SIM по подразбиране';

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
  String get askEveryTime => 'Питай всеки път';

  @override
  String get askEveryTimeSubtitle =>
      'Показване на инструмента за избор на SIM преди всяко повикване';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Няма намерени SIM карти';

  @override
  String couldNotLoadSims(String error) {
    return 'Неуспешно зареждане на SIM карти: $error';
  }

  @override
  String get allFavourites => 'Всички любими';

  @override
  String get allFavouritesSubtitle =>
      'Пренареждайте, премахвайте и добавяйте от контакти';

  @override
  String get blockedNumbers => 'Блокирани номера';

  @override
  String get blockedNumbersSubtitle => 'Преглед и деблокиране на номера';

  @override
  String get soundsAndVibration => 'Звуци и вибрации';

  @override
  String get soundsAndVibrationSubtitle =>
      'Мелодия, вибрация, тонове на клавиатурата';

  @override
  String couldNotOpenSettings(String error) {
    return 'Не можах да отворя настройките: $error';
  }

  @override
  String get frequentlyContacted => 'Често се свързват';

  @override
  String get numberOfRecords => 'Брой записи';

  @override
  String get timePeriod => 'Период от време';

  @override
  String get periodLast24Hours => 'Последни 24 часа';

  @override
  String get periodLast24HoursSubtitle => 'Обаждания от последния ден';

  @override
  String get periodLast7Days => 'Последните 7 дни';

  @override
  String get periodLast7DaysSubtitle => 'Обаждания от миналата седмица';

  @override
  String get periodLast30Days => 'Последните 30 дни';

  @override
  String get periodLast30DaysSubtitle => 'Обаждания от последния месец';

  @override
  String get periodLast12Months => 'Последните 12 месеца';

  @override
  String get periodLast12MonthsSubtitle => 'Обаждания от миналата година';

  @override
  String get periodAllTime => 'През цялото време';

  @override
  String get periodAllTimeSubtitle => 'Цялата история на обажданията';

  @override
  String get frequentMaxOff => 'Изкл';

  @override
  String frequentMaxCount(int count) {
    return '$count контакти';
  }

  @override
  String get torchBlink => 'Мигане на факла';

  @override
  String get torchIncomingCall => 'Факел за входящо повикване';

  @override
  String get torchOutgoingCall => 'Факел за изходящо повикване';

  @override
  String get torchOngoingCall => 'Факел за текущо обаждане';

  @override
  String get torchIncomingInterval => 'Интервал на входящи мигания';

  @override
  String get torchOutgoingInterval => 'Изходящ интервал на мигане';

  @override
  String get torchOngoingInterval => 'Текущ интервал на мигане';

  @override
  String get torchOff => 'Изкл';

  @override
  String get torchOffIncomingSubtitle => 'Няма факла, докато звъни';

  @override
  String get torchOffOutgoingSubtitle => 'Без фенер при набиране';

  @override
  String get torchOffOngoingSubtitle =>
      'Няма фенерче по време на активен разговор';

  @override
  String get torchFixedInterval => 'Фиксиран интервал';

  @override
  String get torchFixedIntervalSubtitle => 'Мигайте със зададена скорост';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds с';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds мига';
  }

  @override
  String get flashlightUnavailable =>
      'Фенерчето не е налично на това устройство';

  @override
  String get glyphLights => 'Глифни светлини';

  @override
  String get glyphCallingAnimation => 'Анимация за извикване на глиф';

  @override
  String get glyphOngoingAnimation => 'Глиф за текущо повикване';

  @override
  String get glyphNone => 'Няма';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Деактивирайте светлините на глиф за изходящи повиквания';

  @override
  String get glyphNoneInCallSubtitle =>
      'Деактивирайте светлините на Glyph, докато сте в активно повикване';

  @override
  String get glyphBreathProgress => 'Дъх и прогрес';

  @override
  String get glyphBreathProgressSubtitle =>
      'Светлините дишат, докато линията се изпълва над 65 секунди';

  @override
  String get glyphAccumulate => 'Натрупвайте';

  @override
  String get glyphAccumulateSubtitle =>
      'Натрупване на анимация на светлини C1-C4';

  @override
  String get glyphSingle => 'Неженен';

  @override
  String get glyphSingleSubtitle => 'Единична светлина, движеща се през C1-C4';

  @override
  String get glyphBreath => 'дъх';

  @override
  String get glyphBreathSubtitle => 'Изберете светлини и скорост';

  @override
  String get glyphSteady => 'Стабилно';

  @override
  String get glyphSteadySubtitle => 'Избраните светлини остават включени';

  @override
  String get breathSettings => 'Настройки на дишането';

  @override
  String get activeLights => 'Активни светлини';

  @override
  String lightsCount(int count) {
    return '$count светлини';
  }

  @override
  String get speedSettings => 'Настройки на скоростта';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms забавяне';
  }

  @override
  String get durationAndSpeed => 'Продължителност и скорост';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s продължителност, ${interval}ms интервал';
  }

  @override
  String get cancel => 'Отказ';

  @override
  String get done => 'Готово';

  @override
  String get save => 'Запазване';

  @override
  String get block => 'Блокирайте';

  @override
  String get delete => 'Изтриване';

  @override
  String get recents => 'Скорошни';

  @override
  String get contacts => 'Контакти';

  @override
  String get hideFavouritesOnRecents => 'Скриване на любимите в Скорошни';

  @override
  String get showFavouritesOnRecents => 'Показване на любими в Скорошни';

  @override
  String get ongoingCall => 'Текущ разговор';

  @override
  String get setAsDefaultTitle => 'ЗАДАВАНЕ КАТО\nПО ПОДРАЗБИРАНЕ';

  @override
  String get setAsDefaultBody =>
      'За да използвате Nothing Dialer, той трябва да бъде зададен като приложение за телефон по подразбиране. Това ви позволява да управлявате повиквания, да преглеждате хронология и да използвате анимации на глифове.';

  @override
  String get setAsDefaultButton => 'ЗАДАДЕ КАТО ПО ПОДРАЗБИРАНЕ';

  @override
  String get nothingDialerBrand => 'НИЩО НАБИРАНЕ 1';

  @override
  String get favourites => 'Любими';

  @override
  String get addFavourite => 'Добавяне на любими';

  @override
  String get favouritesDrawerHint =>
      'Използвайте менюто, за да добавите контакти. Докоснете извън чекмеджето или го затворете с пръст. Маркирайте контакт със звезда от техните данни или натиснете дълго обаждане в Скорошни.';

  @override
  String get menu => 'Меню';

  @override
  String get noFavouritesYet =>
      'Все още няма любими.\nОтворете менюто, за да добавите такъв, или звезда за контакт.';

  @override
  String get contactsPermissionNeeded => 'Необходимо е разрешение за контакти';

  @override
  String get chooseContact => 'Изберете контакт';

  @override
  String get noPhone => 'Без телефон';

  @override
  String get pickNumber => 'Изберете номер';

  @override
  String get contactHasNoPhone => 'Този контакт няма телефонен номер';

  @override
  String get blockNumber => 'Номер на блок';

  @override
  String get enterPhoneNumber => 'Въведете телефонен номер';

  @override
  String unblockedDisplay(String display) {
    return 'Отблокиран $display';
  }

  @override
  String get couldNotUnblockNumber => 'Номерът не можа да бъде отблокиран';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked блокиран • $matched съвпадение';
  }

  @override
  String get contactsPermissionMissing =>
      'Липсва разрешение за контакти. Докоснете за коригиране.';

  @override
  String get noBlockedNumbers => 'Няма блокирани номера';

  @override
  String get unknownContact => 'Неизвестен контакт';

  @override
  String get unblock => 'Отблокирай';

  @override
  String get permissionNeeded => 'Необходимо е разрешение';

  @override
  String get grantPhonePermission =>
      'Разрешете на телефона да вижда историята на обажданията ви.';

  @override
  String get grantContactsPermission =>
      'Дайте разрешение на контактите да виждат вашата адресна книга.';

  @override
  String get openSettings => 'Отворете Настройки';

  @override
  String get tryAgain => 'Опитайте отново';

  @override
  String get couldNotLoadContacts => 'Контактите не можаха да се заредят';

  @override
  String get contactsLoadError =>
      'Нещо се обърка при четенето на вашата адресна книга.';

  @override
  String get noContactsFound => 'Няма намерени контакти';

  @override
  String get contactsEmptySubtitle =>
      'Контактите от вашето устройство ще се появят тук.';

  @override
  String get searchContacts => 'Търсене на контакти...';

  @override
  String get searchRecentCalls => 'Търсете скорошни обаждания';

  @override
  String get fromContacts => 'От контакти';

  @override
  String get recentsSearchSection => 'Скорошно търсене';

  @override
  String get recentsSearchShowContacts => 'Показване на контакти при търсене';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Докато търсите Скорошни, покажете и съвпадащи хора от вашата адресна книга под резултатите от историята на обажданията.';

  @override
  String get voiceSearch => 'Гласово търсене';

  @override
  String get createNewContact => 'Създайте нов контакт';

  @override
  String callError(String error) {
    return 'Грешка при повикване: $error';
  }

  @override
  String get noRecentCalls => 'Няма скорошни обаждания';

  @override
  String get callHistoryEmpty => 'Историята на обажданията ви ще се появи тук.';

  @override
  String get loadMore => 'Заредете повече';

  @override
  String get frequentlyContactedHeader => 'Често се свързват';

  @override
  String get recentHistory => 'Скорошна история';

  @override
  String get noFavouritesRecentsHint =>
      'Все още няма любими. Означете със звезда контакт, натиснете продължително повикване или използвайте раздела Любими.';

  @override
  String get copyNumber => 'Номер на копие';

  @override
  String get editNumberBeforeCall => 'Редактирайте номера преди обаждане';

  @override
  String get removeFromFavourites => 'Премахване от любими';

  @override
  String get addToFavourites => 'Добавяне към любими';

  @override
  String get blockNumberQuestion => 'Номер на блок?';

  @override
  String blockNumberConfirm(String number) {
    return 'Вече няма да получавате обаждания или текстови съобщения от $number.';
  }

  @override
  String get blocked => 'блокиран';

  @override
  String get couldNotBlock => 'Не може да се блокира';

  @override
  String get contactNotOnDevice => 'Контактът не е запазен на това устройство';

  @override
  String get unblocked => 'Отблокиран';

  @override
  String get numberCopied => 'Номерът е копиран';

  @override
  String get showLess => 'Покажи по-малко';

  @override
  String get showAllTimes => 'Показване на всички времена';

  @override
  String mostRecent(String time) {
    return 'Най-нови · $time';
  }

  @override
  String get videoCall => 'Видео разговор';

  @override
  String get couldNotPlaceVideoCall => 'Неуспешно видеообаждане';

  @override
  String get message => 'Съобщение';

  @override
  String get couldNotOpenMessaging =>
      'Приложението за съобщения не можа да се отвори';

  @override
  String get history => 'История';

  @override
  String get viewContact => 'Вижте контакта';

  @override
  String get addToContact => 'Добавяне към контакт';

  @override
  String get callTypeMissed => 'Пропуснато';

  @override
  String get callTypeRejected => 'Отхвърлено';

  @override
  String get callTypeIncoming => 'Входящи';

  @override
  String get callTypeOutgoing => 'Изходящ';

  @override
  String get today => 'Днес';

  @override
  String get yesterday => 'Вчера';

  @override
  String get justNow => 'Току-що';

  @override
  String minutesAgo(int count) {
    return 'преди $count мин';
  }

  @override
  String hoursAgo(int count) {
    return 'преди $count ч';
  }

  @override
  String get filterAll => 'Всички';

  @override
  String get filterMissed => 'Пропуснато';

  @override
  String get filterContacts => 'Контакти';

  @override
  String get filterNonContacts => 'Безконтактни';

  @override
  String get iconUpdated =>
      'Иконата е актуализирана. Опресняването на началния ви екран може да отнеме малко време.';

  @override
  String get iconSavedRelease =>
      'Изборът е запазен. Иконата на началния екран се актуализира в версиите на версията.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Не може да се промени иконата: $error';
  }

  @override
  String get launcherClassicBlack => 'Класически (черен)';

  @override
  String get launcherLight => 'светлина';

  @override
  String get launcherNothingRed => 'Нищо червено';

  @override
  String get launcherDarkGrey => 'Тъмно сиво';

  @override
  String get launcherCream => 'крем';

  @override
  String get launcherRetroPhone => 'Ретро телефон';

  @override
  String get launcherRetroPhoneLight => 'Ретро телефон (светъл)';

  @override
  String get voiceSearchUnavailable =>
      'Гласовото търсене не е налично на това устройство.';

  @override
  String voiceSearchFailed(String error) {
    return 'Неуспешно гласово търсене: $error';
  }

  @override
  String get customColor => 'По поръчка';

  @override
  String get selectColor => 'Изберете цвят';

  @override
  String get reset => 'Нулиране';

  @override
  String get simPickerTitle => 'Изберете SIM';

  @override
  String get simChooseForCall => 'Изберете SIM за това обаждане';

  @override
  String get defaultSimAsk => 'Питай всеки път';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Данни за контакт';

  @override
  String get call => 'Обадете се';

  @override
  String get share => 'Споделете';

  @override
  String get favourite => 'Любима';

  @override
  String get unfavourite => 'Нелюбим';

  @override
  String get blockContact => 'Блокиране на контакт';

  @override
  String get unblockContact => 'Отблокиране на контакт';

  @override
  String get deleteContact => 'Изтриване на контакт';

  @override
  String get phone => 'Телефон';

  @override
  String get email => 'Имейл';

  @override
  String get ringtone => 'мелодия';

  @override
  String get defaultRingtone => 'По подразбиране';

  @override
  String get simForContact => 'SIM за този контакт';

  @override
  String get callHistoryTitle => 'История на обажданията';

  @override
  String get noCallsWithNumber => 'Няма обаждания с този номер';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Глиф анимация';

  @override
  String get inCallGlyphAnimationStyle => 'Глиф анимация по време на разговор';

  @override
  String get recordsOff => 'Изкл';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM по подразбиране';

  @override
  String get nothingPhoneOnly => 'Нищо Само телефон';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Функциите на глифа изискват Nothing Phone';

  @override
  String get custom => 'По поръчка';

  @override
  String presetColorHex(String hex) {
    return 'Предварително зададено · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Персонализирано · $hex';
  }

  @override
  String get oneContact => '1 контакт';

  @override
  String upToContacts(int count) {
    return 'До $count контакта';
  }

  @override
  String get answerButtonTapSubtitle => 'Натиснете бутона, за да отговорите';

  @override
  String get filterCalls => 'Филтриране на обажданията';

  @override
  String get filterTooltip => 'Филтър';

  @override
  String get settingsTooltip => 'Настройки';

  @override
  String get filterAllSubtitle => 'Целият регистър на обажданията';

  @override
  String get filterMissedSubtitle => 'Пропуснати и отхвърлени';

  @override
  String get filterContactsSubtitle =>
      'Обажданията съответстват на запазен контакт';

  @override
  String get filterNonContactsSubtitle =>
      'Номерата не са във вашата адресна книга';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Текущо обаждане: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM по подразбиране за разговори';

  @override
  String get blinkInterval => 'Интервал на мигане';

  @override
  String get close => 'затвори';

  @override
  String get frequentlyContactedInfoBody =>
      'Показва най-често обажданите ви телефонни номера в горната част на раздела „Последни“ въз основа на това колко входящи, изходящи, пропуснати или отхвърлени повиквания сте имали с всеки номер в избрания от вас период от време.\n\nБрой записи: задайте 0, за да изключите това. Използвайте 1–20, за да покажете толкова много топ контакти.\n\nВремевият период се прилага само когато е показан поне един контакт.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count светлини, ${ms}ms скорост';
  }

  @override
  String get deleteContactQuestion => 'Изтриване на контакт?';

  @override
  String get deleteContactBody =>
      'Този контакт ще бъде изтрит за постоянно от вашето устройство.';

  @override
  String get blockContactQuestion => 'Блокиране на контакт?';

  @override
  String get unblockContactQuestion => 'Да се ​​отблокира ли контактът?';

  @override
  String get blockContactBody =>
      'Вече няма да получавате обаждания или текстови съобщения от този контакт.';

  @override
  String get unblockContactBody =>
      'Ще започнете да получавате обаждания и текстови съобщения от този контакт.';

  @override
  String get contactBlocked => 'Контактът е блокиран';

  @override
  String get contactUnblocked => 'Контактът е деблокиран';

  @override
  String get noPhoneNumbersToBlock => 'Няма телефонни номера за блокиране';

  @override
  String get simSameAsSystem => 'Същото като системата';

  @override
  String get simSameAsSystemSubtitle =>
      'Следва SIM по подразбиране в Настройки';

  @override
  String get simAskEveryTimeForContact =>
      'Винаги показвайте инструмента за избор на SIM за този контакт';

  @override
  String get ringtoneSetForContact =>
      'Тон на звънене, зададен глобално за този контакт';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Неуспешен избор на мелодия: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Грешка: $error';
  }

  @override
  String get noCallHistoryFound => 'Няма намерена хронология на обажданията';

  @override
  String get speedDialVoicemail => 'Бързо набиране: Гласова поща';

  @override
  String shareContactSubject(String name) {
    return 'За контакт: $name';
  }

  @override
  String get contactInfo => 'Информация за контакт';

  @override
  String get dontAskAgainSim => 'Не питай отново';

  @override
  String get simDontAskAgainSubtitle =>
      'Използвайте тази SIM карта по подразбиране (променете в Настройки)';

  @override
  String get addContact => 'Добавете контакт';

  @override
  String get createContact => 'Създайте контакт';

  @override
  String get paste => 'Залепете';

  @override
  String get clear => 'ясно';

  @override
  String get returnToCall => 'Връщане към обаждането';

  @override
  String get numberOfRecordsTitle => 'Брой записи';

  @override
  String get recordsPickerSubtitle =>
      'Колко често контактувани записи да се показват (0 = изключено)';

  @override
  String get torchInfoTitle => 'Мигане на факла';

  @override
  String get torchInfoBody =>
      'Мига светкавицата на камерата по време на входящи, изходящи или текущи повиквания. Независимо от Glyph светлините.';

  @override
  String get glyphMapTitle => 'Оформление на глиф';

  @override
  String get glyphMapBody =>
      'Нищо Телефон 1 Глиф LED зони. Анимациите при изходящи и повиквания използват тези канали.';

  @override
  String get answerMethodTitle => 'Метод на отговор';

  @override
  String get glyphOutgoingCallStyleTitle => 'Стил на изходящо повикване';

  @override
  String get glyphInCallAnimationTitle => 'Глиф анимация по време на разговор';

  @override
  String get themePickerTitle => 'Тема';

  @override
  String get torchIncomingTitle => 'Факел за входящо повикване';

  @override
  String get torchOutgoingTitle => 'Факел за изходящо повикване';

  @override
  String get torchOngoingTitle => 'Факел за текущо обаждане';

  @override
  String get timePeriodTitle => 'Период от време';

  @override
  String get ok => 'добре';

  @override
  String get confirmDeleteCall =>
      'Да се ​​изтрие ли това обаждане от историята?';

  @override
  String get confirmDeleteAllCalls =>
      'Да се ​​изтрият ли всички обаждания с този номер?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Изпратете съобщение';

  @override
  String get addToExistingContactAction => 'Добавяне към контакт';

  @override
  String get mobileLabel => 'Мобилен';

  @override
  String get callingSimForContactTitle => 'Обаждане на SIM за този контакт';

  @override
  String get contactSettings => 'Настройки за контакт';

  @override
  String get setCallingSim => 'Задайте SIM за повикване';

  @override
  String get contactRingtone => 'Мелодия за контакт';

  @override
  String get shareContact => 'Споделяне на контакт';

  @override
  String get blockNumbers => 'Блокиране на номера';

  @override
  String get unblockNumbers => 'Деблокиране на номера';

  @override
  String get connectedApps => 'Свързани приложения';

  @override
  String get simNotSet => 'Не е зададено';

  @override
  String get ringtoneDefault => 'По подразбиране';

  @override
  String get customRingtone => 'По поръчка';

  @override
  String get aboutSection => 'За';

  @override
  String get aboutFeedbackSection => 'Информация и отзиви';

  @override
  String get aboutDescription =>
      'Nothing Dialer е с отворен код. Ако сте разработчик, можете да проучите кода и да допринесете.';

  @override
  String get aboutViewSource => 'Вижте в GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Връзката не можа да се отвори';

  @override
  String get reviewSection => 'Преглед';

  @override
  String get reviewDescription =>
      'Харесвате ли Nothing Dialer? Вашата оценка в Google Play помага на другите да намерят приложението.';

  @override
  String get reviewRateOnPlay => 'Оценете в Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Google Play не можа да се отвори';

  @override
  String get breathSpeed => 'Скорост на дишане';

  @override
  String get breathSpeedBlinkHint =>
      'По-ниско = Мигане, По-високо = Бавно дишане';

  @override
  String get speedSliderHint => 'По-ниско = по-бързо, по-високо = по-бавно';

  @override
  String get swatchDefault => 'По подразбиране';

  @override
  String get customAccentColorPicker => 'Персонализиран цвят на акцента';

  @override
  String get customLightBackgroundPicker => 'Персонализиран светъл фон';

  @override
  String get customDarkBackgroundPicker => 'Персонализиран тъмен фон';

  @override
  String get customCallBackgroundPicker => 'Персонализиран фон на разговора';

  @override
  String get ongoingCallStyleTitle => 'Стил на текущо обаждане';

  @override
  String get glyphMapUnavailable => 'Картата на глифа не е налична';

  @override
  String get animationDelayRange => 'Забавяне на анимацията (1s - 10s)';

  @override
  String get animationDelayRangeSingle =>
      'Забавяне на анимацията (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Без звук';

  @override
  String get inCallKeypad => 'Клавиатура';

  @override
  String get inCallSpeaker => 'Говорител';

  @override
  String get inCallMore => 'повече';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Телефон';

  @override
  String get inCallAddCall => 'Добавете обаждане';

  @override
  String get inCallChangeSim => 'Смени SIM';

  @override
  String get inCallDecline => 'Откажи';

  @override
  String get inCallAnswer => 'отговор';

  @override
  String get inCallMessage => 'Съобщение';

  @override
  String get inCallCalling => 'Обаждане...';

  @override
  String get inCallIncoming => 'Входящо повикване';

  @override
  String get inCallSelectSim => 'Изберете SIM...';

  @override
  String get inCallSwitchingSim => 'SIM картата се превключва...';

  @override
  String get inCallCallEnded => 'Обаждането приключи';

  @override
  String inCallCallingVia(String sim) {
    return 'Обаждане чрез $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Обаждане чрез <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Изберете SIM за това обаждане';

  @override
  String get inCallDragAnswerDecline =>
      'Плъзнете надясно, за да отговорите · Плъзнете наляво, за да откажете';

  @override
  String inCallMobileNumber(String number) {
    return 'Мобилен $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (текущ)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Обадете се чрез <b>$sim</b> от';
  }

  @override
  String get inCallCallFrom => 'Обаждане от';

  @override
  String get inCallUnknown => 'неизвестен';

  @override
  String get selectContactRingtone => 'Изберете мелодия за контакт';

  @override
  String get speakToSearchPrompt => 'Говорете за търсене';

  @override
  String get phonePermissionRequired => 'Изисква се разрешение от телефона';

  @override
  String callFailed(String error) {
    return 'Неуспешно обаждане: $error';
  }

  @override
  String get callPermissionDenied => 'Разрешението за обаждане е отказано';

  @override
  String get alreadyDefaultDialer =>
      'Вече е зададено като набиране по подразбиране';

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
