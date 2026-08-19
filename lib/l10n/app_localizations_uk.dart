// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Нічого номеронабирач';

  @override
  String get settings => 'Налаштування';

  @override
  String get settingsSearchHint => 'Налаштування пошуку';

  @override
  String get settingsSearchNoResults => 'Налаштувань не знайдено';

  @override
  String get general => 'Загальний';

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
  String get themeSystemDefault => 'Системне за замовчуванням';

  @override
  String get themeLight => 'світло';

  @override
  String get themeDark => 'Темний';

  @override
  String get themeFollowSystem => 'Дотримуйтеся налаштувань системи';

  @override
  String get themeAlwaysLight => 'Завжди використовуйте світлу тему';

  @override
  String get themeAlwaysDark => 'Завжди використовуйте темну тему';

  @override
  String get language => 'Мова';

  @override
  String get languageDeviceDefault => 'Пристрій за замовчуванням';

  @override
  String get languagePickerTitle => 'Мова';

  @override
  String get languageSearchHint => 'Пошук мов';

  @override
  String get font => 'Шрифт';

  @override
  String get fontSystem => 'Система за умовчанням';

  @override
  String get fontNdot => 'Нічого (NDot)';

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
      'Помилка завантаження шрифту. Перевірте підключення та повторіть спробу.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Шрифт';

  @override
  String get fontPreviewSample => 'Нічого номеронабирач';

  @override
  String get fontAppWide => 'Шрифт програми';

  @override
  String get fontApplyTo => 'Застосувати до';

  @override
  String get fontApplyEntireApp => 'Весь додаток';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Скрізь однаковий шрифт, у тому числі під час виклику';

  @override
  String get fontApplyTitlesOnly => 'Заголовки та заголовки';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Тільки великі заголовки та заголовки розділів';

  @override
  String get fontApplyCustomize => 'Налаштувати';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Виберіть шрифт для кожного екрана та типу тексту';

  @override
  String get fontCustomizeSection => 'Налаштувати за екраном';

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
  String get fontRolePageTitle => 'Назва сторінки';

  @override
  String get fontRoleSectionHeader => 'Заголовок розділу';

  @override
  String get fontRolePrimary => 'Первинний текст';

  @override
  String get fontRoleSecondary => 'Другорядний текст';

  @override
  String get fontRoleButton => 'кнопки';

  @override
  String get fontRoleDialKey => 'Клавіші цифрової клавіатури';

  @override
  String get fontSurfaceRecents => 'Останні';

  @override
  String get fontSurfaceContacts => 'Контакти';

  @override
  String get fontSurfaceSettings => 'Налаштування';

  @override
  String get fontSurfaceDialpad => 'Клавіатура набору номера';

  @override
  String get fontSurfaceShell => 'Навігація';

  @override
  String get fontSurfaceDefaultDialer => 'Підказка дозвону за замовчуванням';

  @override
  String get fontSurfaceFavourites => 'Вибране';

  @override
  String get fontSurfaceBlocked => 'Заблоковані номери';

  @override
  String get fontSurfaceContactDetail => 'Контактна інформація';

  @override
  String get fontSurfaceCallHistory => 'Історія викликів';

  @override
  String get fontSurfaceSheets => 'Листи та збирачі';

  @override
  String get fontSurfaceInCall => 'Екран під час виклику';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — весь додаток';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — лише заголовки';
  }

  @override
  String get fontSubtitleCustomize => 'Спеціальний для кожного екрана';

  @override
  String get background => 'Фон';

  @override
  String get accent => 'Акцент';

  @override
  String get lightBackground => 'Світлий фон';

  @override
  String get lightAccent => 'Світлий акцент';

  @override
  String get darkBackground => 'Темний фон';

  @override
  String get darkAccent => 'Темний акцент';

  @override
  String get callBackground => 'Фон виклику';

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
  String get appIcon => 'Значок програми';

  @override
  String get answerMethod => 'Спосіб відповіді';

  @override
  String get answerSlide => 'Проведіть пальцем, щоб відповісти';

  @override
  String get answerSlideSubtitle =>
      'Гортайте ліворуч/праворуч на панелі, як Google Phone';

  @override
  String get answerButton => 'Натискання кнопки';

  @override
  String get answerButtonSubtitle =>
      'Торкніться кнопок відповісти або відхилити';

  @override
  String get answerHuawei => 'Стиль Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Щоб відповісти, перетягніть кружечок до зеленого телефону';

  @override
  String get answerHuaweiTileSubtitle =>
      'Huawei — перетягніть до зеленого/червоного';

  @override
  String get calling => 'Дзвінок';

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
  String get defaultSim => 'Стандартна SIM-карта';

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
  String get askEveryTime => 'Запитуйте кожен раз';

  @override
  String get askEveryTimeSubtitle =>
      'Показувати засіб вибору SIM перед кожним викликом';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'SIM-карти не знайдено';

  @override
  String couldNotLoadSims(String error) {
    return 'Не вдалося завантажити SIM-карти: $error';
  }

  @override
  String get allFavourites => 'Всі улюблені';

  @override
  String get allFavouritesSubtitle =>
      'Змінюйте порядок, видаляйте та додавайте з контактів';

  @override
  String get blockedNumbers => 'Заблоковані номери';

  @override
  String get blockedNumbersSubtitle => 'Перегляд і розблокування номерів';

  @override
  String get soundsAndVibration => 'Звуки та вібрація';

  @override
  String get soundsAndVibrationSubtitle =>
      'Рінгтон, вібрація, звуки набору номера';

  @override
  String couldNotOpenSettings(String error) {
    return 'Не вдалося відкрити налаштування: $error';
  }

  @override
  String get frequentlyContacted => 'З якими часто спілкуються';

  @override
  String get numberOfRecords => 'Кількість записів';

  @override
  String get timePeriod => 'Період часу';

  @override
  String get periodLast24Hours => 'Останні 24 години';

  @override
  String get periodLast24HoursSubtitle => 'Дзвінки минулого дня';

  @override
  String get periodLast7Days => 'Останні 7 днів';

  @override
  String get periodLast7DaysSubtitle => 'Дзвінки минулого тижня';

  @override
  String get periodLast30Days => 'Останні 30 днів';

  @override
  String get periodLast30DaysSubtitle => 'Дзвінки за останній місяць';

  @override
  String get periodLast12Months => 'Останні 12 місяців';

  @override
  String get periodLast12MonthsSubtitle => 'Дзвінки з минулого року';

  @override
  String get periodAllTime => 'Весь час';

  @override
  String get periodAllTimeSubtitle => 'Вся історія викликів';

  @override
  String get frequentMaxOff => 'Вимкнено';

  @override
  String frequentMaxCount(int count) {
    return '$count контакти';
  }

  @override
  String get torchBlink => 'Блимання факела';

  @override
  String get torchIncomingCall => 'Ліхтарик вхідного дзвінка';

  @override
  String get torchOutgoingCall => 'Ліхтарик вихідного дзвінка';

  @override
  String get torchOngoingCall => 'Ліхтарик поточного виклику';

  @override
  String get torchIncomingInterval => 'Вхідний інтервал блимання';

  @override
  String get torchOutgoingInterval => 'Вихідний інтервал блимання';

  @override
  String get torchOngoingInterval => 'Постійний інтервал блимання';

  @override
  String get torchOff => 'Вимкнено';

  @override
  String get torchOffIncomingSubtitle => 'Немає факела під час дзвінка';

  @override
  String get torchOffOutgoingSubtitle => 'Без ліхтарика під час набору';

  @override
  String get torchOffOngoingSubtitle =>
      'Немає ліхтарика під час активного виклику';

  @override
  String get torchFixedInterval => 'Фіксований інтервал';

  @override
  String get torchFixedIntervalSubtitle => 'Моргайте із заданою швидкістю';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds с';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds блимати';
  }

  @override
  String get flashlightUnavailable => 'Ліхтарик недоступний на цьому пристрої';

  @override
  String get glyphLights => 'Вогні гліфів';

  @override
  String get glyphCallingAnimation => 'Анімація виклику гліфів';

  @override
  String get glyphOngoingAnimation => 'Гліф анімації поточного виклику';

  @override
  String get glyphNone => 'Жодного';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Вимкнути індикатори гліфів для вихідних викликів';

  @override
  String get glyphNoneInCallSubtitle =>
      'Вимкніть індикатори Glyph під час активного виклику';

  @override
  String get glyphBreathProgress => 'Подих і прогрес';

  @override
  String get glyphBreathProgressSubtitle =>
      'Світло дихає, поки лінія заповнюється протягом 65 секунд';

  @override
  String get glyphAccumulate => 'Накопичувати';

  @override
  String get glyphAccumulateSubtitle =>
      'Накопичується анімація на лампах C1-C4';

  @override
  String get glyphSingle => 'неодружений';

  @override
  String get glyphSingleSubtitle => 'Одиночне світло, що рухається через C1-C4';

  @override
  String get glyphBreath => 'Дихання';

  @override
  String get glyphBreathSubtitle => 'Виберіть світло та швидкість';

  @override
  String get glyphSteady => 'Стійкий';

  @override
  String get glyphSteadySubtitle => 'Вибрані лампочки залишаються ввімкненими';

  @override
  String get breathSettings => 'Налаштування дихання';

  @override
  String get activeLights => 'Активні вогні';

  @override
  String lightsCount(int count) {
    return '$count вогні';
  }

  @override
  String get speedSettings => 'Налаштування швидкості';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms затримка';
  }

  @override
  String get durationAndSpeed => 'Тривалість і швидкість';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Тривалість $durationс, інтервал $intervalмс';
  }

  @override
  String get cancel => 'Скасувати';

  @override
  String get done => 'Готово';

  @override
  String get save => 'зберегти';

  @override
  String get block => 'Блокувати';

  @override
  String get delete => 'Видалити';

  @override
  String get recents => 'Останні';

  @override
  String get contacts => 'Контакти';

  @override
  String get hideFavouritesOnRecents => 'Приховати вибране на «Останніх».';

  @override
  String get showFavouritesOnRecents => 'Показати вибране на Recents';

  @override
  String get ongoingCall => 'Поточний дзвінок';

  @override
  String get setAsDefaultTitle => 'ВСТАНОВИТИ ЯК\nЗА ПРОМОВЧАННЯМ';

  @override
  String get setAsDefaultBody =>
      'Щоб використовувати Nothing Dialer, його потрібно встановити як програму для телефону за умовчанням. Це дозволяє керувати дзвінками, переглядати історію та використовувати анімацію гліфів.';

  @override
  String get setAsDefaultButton => 'ВСТАНОВИТИ ЗА ПРОМОВЧАННЯМ';

  @override
  String get nothingDialerBrand => 'НІЧОГО ДОБРАНА 1';

  @override
  String get favourites => 'Вибране';

  @override
  String get addFavourite => 'Додати улюблене';

  @override
  String get favouritesDrawerHint =>
      'Використовуйте меню для додавання контактів. Торкніться зовні ящика або закрийте його пальцем. Позначте контакт зірочкою з його даних або натисніть і утримуйте виклик у Недавніх.';

  @override
  String get menu => 'Меню';

  @override
  String get noFavouritesYet =>
      'Вибраних ще немає.\nВідкрийте меню, щоб додати контакт, або позначте його зірочкою.';

  @override
  String get contactsPermissionNeeded => 'Потрібен дозвіл на контакти';

  @override
  String get chooseContact => 'Виберіть контакт';

  @override
  String get noPhone => 'Без телефону';

  @override
  String get pickNumber => 'Виберіть номер';

  @override
  String get contactHasNoPhone => 'Цей контакт не має номера телефону';

  @override
  String get blockNumber => 'Номер блоку';

  @override
  String get enterPhoneNumber => 'Введіть номер телефону';

  @override
  String unblockedDisplay(String display) {
    return 'Розблоковано $display';
  }

  @override
  String get couldNotUnblockNumber => 'Не вдалося розблокувати номер';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked заблоковано • $matched знайдено';
  }

  @override
  String get contactsPermissionMissing =>
      'Відсутній дозвіл на контакти. Торкніться, щоб виправити.';

  @override
  String get noBlockedNumbers => 'Немає заблокованих номерів';

  @override
  String get unknownContact => 'Невідомий контакт';

  @override
  String get unblock => 'Розблокувати';

  @override
  String get permissionNeeded => 'Потрібен дозвіл';

  @override
  String get grantPhonePermission =>
      'Надайте телефону дозвіл переглядати вашу історію викликів.';

  @override
  String get grantContactsPermission =>
      'Надайте контактам дозвіл переглядати вашу адресну книгу.';

  @override
  String get openSettings => 'Відкрийте налаштування';

  @override
  String get tryAgain => 'Спробуйте знову';

  @override
  String get couldNotLoadContacts => 'Не вдалося завантажити контакти';

  @override
  String get contactsLoadError =>
      'Під час читання адресної книги сталася помилка.';

  @override
  String get noContactsFound => 'Контакти не знайдено';

  @override
  String get contactsEmptySubtitle =>
      'Тут з’являться контакти з вашого пристрою.';

  @override
  String get searchContacts => 'Пошук контактів…';

  @override
  String get searchRecentCalls => 'Пошук останніх дзвінків';

  @override
  String get fromContacts => 'З контактів';

  @override
  String get recentsSearchSection => 'Останні пошуки';

  @override
  String get recentsSearchShowContacts => 'Показати контакти в пошуку';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Під час пошуку «Останні» також показуйте відповідних людей із вашої адресної книги під результатами історії викликів.';

  @override
  String get voiceSearch => 'Голосовий пошук';

  @override
  String get createNewContact => 'Створити новий контакт';

  @override
  String callError(String error) {
    return 'Помилка виклику: $error';
  }

  @override
  String get noRecentCalls => 'Немає останніх дзвінків';

  @override
  String get callHistoryEmpty => 'Тут з’явиться ваша історія викликів.';

  @override
  String get loadMore => 'Завантажте більше';

  @override
  String get frequentlyContactedHeader => 'Часто спілкуються';

  @override
  String get recentHistory => 'Новітня історія';

  @override
  String get noFavouritesRecentsHint =>
      'Вибраних ще немає. Позначте контакт зірочкою, натисніть і утримуйте виклик або скористайтеся вкладкою «Вибране».';

  @override
  String get copyNumber => 'Номер копії';

  @override
  String get editNumberBeforeCall => 'Відредагуйте номер перед дзвінком';

  @override
  String get removeFromFavourites => 'Видалити з вибраного';

  @override
  String get addToFavourites => 'Додати в обране';

  @override
  String get blockNumberQuestion => 'Номер блоку?';

  @override
  String blockNumberConfirm(String number) {
    return 'Ви більше не будете отримувати дзвінки чи повідомлення з $number.';
  }

  @override
  String get blocked => 'заблоковано';

  @override
  String get couldNotBlock => 'Не вдалося заблокувати';

  @override
  String get contactNotOnDevice => 'Контакт не збережено на цьому пристрої';

  @override
  String get unblocked => 'Розблоковано';

  @override
  String get numberCopied => 'Номер скопійовано';

  @override
  String get showLess => 'Показувати менше';

  @override
  String get showAllTimes => 'Показати всі часи';

  @override
  String mostRecent(String time) {
    return 'Останні · $time';
  }

  @override
  String get videoCall => 'Відеодзвінок';

  @override
  String get couldNotPlaceVideoCall => 'Не вдалося здійснити відеодзвінок';

  @override
  String get message => 'повідомлення';

  @override
  String get couldNotOpenMessaging =>
      'Не вдалося відкрити програму обміну повідомленнями';

  @override
  String get history => 'історія';

  @override
  String get viewContact => 'Переглянути контакт';

  @override
  String get addToContact => 'Додати в контакт';

  @override
  String get callTypeMissed => 'Пропущений';

  @override
  String get callTypeRejected => 'Відхилено';

  @override
  String get callTypeIncoming => 'Вхідні';

  @override
  String get callTypeOutgoing => 'Вихідний';

  @override
  String get today => 'Сьогодні';

  @override
  String get yesterday => 'вчора';

  @override
  String get justNow => 'Просто зараз';

  @override
  String minutesAgo(int count) {
    return '$count хв тому';
  }

  @override
  String hoursAgo(int count) {
    return '$count год тому';
  }

  @override
  String get filterAll => 'всі';

  @override
  String get filterMissed => 'Пропущений';

  @override
  String get filterContacts => 'Контакти';

  @override
  String get filterNonContacts => 'Безконтактні';

  @override
  String get iconUpdated => 'Значок оновлено. Ваш головний екран оновиться.';

  @override
  String get iconSavedRelease =>
      'Вибір збережено. Піктограма головного екрана оновлюється у випусках збірок.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Не вдалося змінити значок: $error';
  }

  @override
  String get launcherClassicBlack => 'Класичний (чорний)';

  @override
  String get launcherLight => 'світло';

  @override
  String get launcherNothingRed => 'Нічого червоного';

  @override
  String get launcherDarkGrey => 'Темно-сірий';

  @override
  String get launcherCream => 'вершки';

  @override
  String get launcherRetroPhone => 'Ретро телефон';

  @override
  String get launcherRetroPhoneLight => 'Ретро телефон (світлий)';

  @override
  String get voiceSearchUnavailable =>
      'Голосовий пошук недоступний на цьому пристрої.';

  @override
  String voiceSearchFailed(String error) {
    return 'Помилка голосового пошуку: $error';
  }

  @override
  String get customColor => 'Custom';

  @override
  String get selectColor => 'Виберіть колір';

  @override
  String get reset => 'Скинути';

  @override
  String get simPickerTitle => 'Виберіть SIM';

  @override
  String get simChooseForCall => 'Виберіть SIM для цього виклику';

  @override
  String get defaultSimAsk => 'Запитуйте кожен раз';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Контактні дані';

  @override
  String get call => 'Телефонуйте';

  @override
  String get share => 'Поділіться';

  @override
  String get favourite => 'улюблений';

  @override
  String get unfavourite => 'Вилучити з улюбленого';

  @override
  String get blockContact => 'Заблокувати контакт';

  @override
  String get unblockContact => 'Розблокувати контакт';

  @override
  String get deleteContact => 'Видалити контакт';

  @override
  String get phone => 'Телефон';

  @override
  String get email => 'Електронна пошта';

  @override
  String get ringtone => 'Рінгтон';

  @override
  String get defaultRingtone => 'За замовчуванням';

  @override
  String get simForContact => 'SIM для цього контакту';

  @override
  String get callHistoryTitle => 'Історія викликів';

  @override
  String get noCallsWithNumber => 'Немає дзвінків з цього номера';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutesм $secondsс';
  }

  @override
  String durationSeconds(int seconds) {
    return '$secondsс';
  }

  @override
  String get glyphAnimationStyle => 'Анімація гліфів';

  @override
  String get inCallGlyphAnimationStyle => 'Анімація гліфів під час виклику';

  @override
  String get recordsOff => 'Вимкнено';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Стандартна SIM-карта';

  @override
  String get nothingPhoneOnly => 'Нічого, тільки телефон';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Функції гліфа вимагають Nothing Phone';

  @override
  String get custom => 'Custom';

  @override
  String presetColorHex(String hex) {
    return 'Попереднє налаштування · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'На замовлення · $hex';
  }

  @override
  String get oneContact => '1 контакт';

  @override
  String upToContacts(int count) {
    return 'До $count контактів';
  }

  @override
  String get answerButtonTapSubtitle => 'Натисніть кнопку, щоб відповісти';

  @override
  String get filterCalls => 'Фільтрувати дзвінки';

  @override
  String get filterTooltip => 'фільтр';

  @override
  String get settingsTooltip => 'Налаштування';

  @override
  String get filterAllSubtitle => 'Весь журнал викликів';

  @override
  String get filterMissedSubtitle => 'Пропущений і відхилений';

  @override
  String get filterContactsSubtitle => 'Дзвінки зі збереженим контактом';

  @override
  String get filterNonContactsSubtitle =>
      'Номерів немає у вашій адресній книзі';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Поточний дзвінок: $detail';
  }

  @override
  String get defaultSimForCalls => 'Стандартна SIM-карта для дзвінків';

  @override
  String get blinkInterval => 'Інтервал моргання';

  @override
  String get close => 'Закрити';

  @override
  String get frequentlyContactedInfoBody =>
      'Показує ваші телефонні номери, за якими телефонували найчастіше, у верхній частині вкладки «Останні» на основі кількості вхідних, вихідних, пропущених або відхилених викликів, які ви мали на кожен номер у вибраний період часу.\n\nКількість записів: встановіть 0, щоб вимкнути це. Використовуйте 1–20, щоб показати стільки найкращих контактів.\n\nПеріод часу застосовується лише тоді, коли показано хоча б один контакт.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count світло, ${ms}ms швидкість';
  }

  @override
  String get deleteContactQuestion => 'Видалити контакт?';

  @override
  String get deleteContactBody =>
      'Цей контакт буде остаточно видалено з вашого пристрою.';

  @override
  String get blockContactQuestion => 'Заблокувати контакт?';

  @override
  String get unblockContactQuestion => 'Розблокувати контакт?';

  @override
  String get blockContactBody =>
      'Ви більше не отримуватимете дзвінків і повідомлень від цього контакту.';

  @override
  String get unblockContactBody =>
      'Ви почнете отримувати дзвінки та повідомлення від цього контакту.';

  @override
  String get contactBlocked => 'Контакт заблоковано';

  @override
  String get contactUnblocked => 'Контакт розблоковано';

  @override
  String get noPhoneNumbersToBlock => 'Немає номерів телефонів для блокування';

  @override
  String get simSameAsSystem => 'Те саме, що система';

  @override
  String get simSameAsSystemSubtitle =>
      'Дотримуйтеся SIM-карти за умовчанням у налаштуваннях';

  @override
  String get simAskEveryTimeForContact =>
      'Завжди показувати засіб вибору SIM для цього контакту';

  @override
  String get ringtoneSetForContact =>
      'Рінгтон встановлено глобально для цього контакту';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Не вдалося вибрати мелодію: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Помилка: $error';
  }

  @override
  String get noCallHistoryFound => 'Журнал викликів не знайдено';

  @override
  String get speedDialVoicemail => 'Швидкий набір: голосова пошта';

  @override
  String shareContactSubject(String name) {
    return 'Контакт: $name';
  }

  @override
  String get contactInfo => 'Контактна інформація';

  @override
  String get dontAskAgainSim => 'Більше не питай';

  @override
  String get simDontAskAgainSubtitle =>
      'Використовувати цю SIM-картку за умовчанням (змінити в налаштуваннях)';

  @override
  String get addContact => 'Додати контакт';

  @override
  String get createContact => 'Створити контакт';

  @override
  String get paste => 'Вставити';

  @override
  String get clear => 'ясно';

  @override
  String get returnToCall => 'Повернутися до виклику';

  @override
  String get numberOfRecordsTitle => 'Кількість записів';

  @override
  String get recordsPickerSubtitle =>
      'Скільки записів, з якими часто спілкуються, відображати (0 = вимкнено)';

  @override
  String get torchInfoTitle => 'Блимає факел';

  @override
  String get torchInfoBody =>
      'Блимає спалах камери під час вхідних, вихідних або поточних викликів. Незалежно від світла Glyph.';

  @override
  String get glyphMapTitle => 'Макет гліфів';

  @override
  String get glyphMapBody =>
      'Нічого Телефон 1 Гліф світлодіодні зони. Ці канали використовують анімацію вихідних і дзвінків.';

  @override
  String get answerMethodTitle => 'Спосіб відповіді';

  @override
  String get glyphOutgoingCallStyleTitle => 'Стиль вихідного дзвінка';

  @override
  String get glyphInCallAnimationTitle => 'Анімація гліфів під час виклику';

  @override
  String get themePickerTitle => 'Тема';

  @override
  String get torchIncomingTitle => 'Ліхтарик вхідного дзвінка';

  @override
  String get torchOutgoingTitle => 'Ліхтарик вихідного дзвінка';

  @override
  String get torchOngoingTitle => 'Ліхтарик поточного виклику';

  @override
  String get timePeriodTitle => 'Період часу';

  @override
  String get ok => 'добре';

  @override
  String get confirmDeleteCall => 'Видалити цей виклик з історії?';

  @override
  String get confirmDeleteAllCalls => 'Видалити всі дзвінки з цього номера?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Надіслати повідомлення';

  @override
  String get addToExistingContactAction => 'Додати до контакту';

  @override
  String get mobileLabel => 'Мобільний';

  @override
  String get callingSimForContactTitle => 'Виклик SIM для цього контакту';

  @override
  String get contactSettings => 'Налаштування контактів';

  @override
  String get setCallingSim => 'Налаштуйте SIM-картку для виклику';

  @override
  String get contactRingtone => 'Мелодія контакту';

  @override
  String get shareContact => 'Поділіться контактом';

  @override
  String get blockNumbers => 'Блокувати номери';

  @override
  String get unblockNumbers => 'Розблокувати номери';

  @override
  String get connectedApps => 'Підключені програми';

  @override
  String get simNotSet => 'Не встановлено';

  @override
  String get ringtoneDefault => 'За замовчуванням';

  @override
  String get customRingtone => 'Custom';

  @override
  String get aboutSection => 'про';

  @override
  String get aboutFeedbackSection => 'Про та відгуки';

  @override
  String get aboutDescription =>
      'Nothing Dialer є відкритим кодом. Якщо ви розробник, ви можете вивчити код і внести свій внесок.';

  @override
  String get aboutViewSource => 'Переглянути на GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Не вдалося відкрити посилання';

  @override
  String get reviewSection => 'огляд';

  @override
  String get reviewDescription =>
      'Вам подобається Nothing Dialer? Ваша оцінка в Google Play допомагає іншим знайти додаток.';

  @override
  String get reviewRateOnPlay => 'Оцініть в Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Не вдалося відкрити Google Play';

  @override
  String get breathSpeed => 'Швидкість дихання';

  @override
  String get breathSpeedBlinkHint =>
      'Нижче = моргання, вище = повільне дихання';

  @override
  String get speedSliderHint => 'Нижче = швидше, вище = повільніше';

  @override
  String get swatchDefault => 'За замовчуванням';

  @override
  String get customAccentColorPicker => 'Індивідуальний колір акценту';

  @override
  String get customLightBackgroundPicker => 'Спеціальний світлий фон';

  @override
  String get customDarkBackgroundPicker => 'Спеціальний темний фон';

  @override
  String get customCallBackgroundPicker => 'Спеціальний фон виклику';

  @override
  String get ongoingCallStyleTitle => 'Стиль поточного дзвінка';

  @override
  String get glyphMapUnavailable => 'Карта гліфів недоступна';

  @override
  String get animationDelayRange => 'Затримка анімації (1-10 с)';

  @override
  String get animationDelayRangeSingle => 'Затримка анімації (0,1 с - 10 с)';

  @override
  String get inCallMute => 'Вимкнути звук';

  @override
  String get inCallKeypad => 'Клавіатура';

  @override
  String get inCallSpeaker => 'Спікер';

  @override
  String get inCallMore => 'більше';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Телефон';

  @override
  String get inCallAddCall => 'Додати виклик';

  @override
  String get inCallChangeSim => 'Змінити SIM';

  @override
  String get inCallDecline => 'відхилити';

  @override
  String get inCallAnswer => 'Відповідь';

  @override
  String get inCallMessage => 'повідомлення';

  @override
  String get inCallCalling => 'Телефоную…';

  @override
  String get inCallIncoming => 'Вхідний дзвінок';

  @override
  String get inCallSelectSim => 'Виберіть SIM…';

  @override
  String get inCallSwitchingSim => 'Перемикання SIM-карти…';

  @override
  String get inCallCallEnded => 'Дзвінок завершено';

  @override
  String inCallCallingVia(String sim) {
    return 'Дзвінок через $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Дзвінок через <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Виберіть SIM для цього виклику';

  @override
  String get inCallDragAnswerDecline =>
      'Перетягніть праворуч, щоб відповісти · Перетягніть ліворуч, щоб відхилити';

  @override
  String inCallMobileNumber(String number) {
    return 'Мобільний $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Поточний)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Телефонуйте за номером <b>$sim</b> з';
  }

  @override
  String get inCallCallFrom => 'Телефонувати з';

  @override
  String get inCallUnknown => 'Невідомий';

  @override
  String get selectContactRingtone => 'Виберіть мелодію контакту';

  @override
  String get speakToSearchPrompt => 'Говоріть для пошуку';

  @override
  String get phonePermissionRequired => 'Потрібен дозвіл на телефон';

  @override
  String callFailed(String error) {
    return 'Помилка виклику: $error';
  }

  @override
  String get callPermissionDenied => 'У дозволі на виклик відмовлено';

  @override
  String get alreadyDefaultDialer =>
      'Уже встановлено як номеронабирач за замовчуванням';

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
