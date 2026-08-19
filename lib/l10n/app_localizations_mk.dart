// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get appTitle => 'Ништо Бирач';

  @override
  String get settings => 'Поставки';

  @override
  String get settingsSearchHint => 'Поставки за пребарување';

  @override
  String get settingsSearchNoResults => 'Не се пронајдени поставки';

  @override
  String get general => 'Општо';

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
  String get themeSystemDefault => 'Стандарден систем';

  @override
  String get themeLight => 'Светлина';

  @override
  String get themeDark => 'Темно';

  @override
  String get themeFollowSystem => 'Следете ги системските поставки';

  @override
  String get themeAlwaysLight => 'Секогаш користете светла тема';

  @override
  String get themeAlwaysDark => 'Секогаш користете темна тема';

  @override
  String get language => 'Јазик';

  @override
  String get languageDeviceDefault => 'Стандарден уред';

  @override
  String get languagePickerTitle => 'Јазик';

  @override
  String get languageSearchHint => 'Јазици за пребарување';

  @override
  String get font => 'Фонт';

  @override
  String get fontSystem => 'Стандардно на системот';

  @override
  String get fontNdot => 'Ништо (НЕ)';

  @override
  String get fontSerif => 'Робото Сериф';

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
      'Преземањето на фонтот не успеа. Проверете ја врската и обидете се повторно.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Фонт';

  @override
  String get fontPreviewSample => 'Ништо Бирач';

  @override
  String get fontAppWide => 'Фонт на апликацијата';

  @override
  String get fontApplyTo => 'Примени на';

  @override
  String get fontApplyEntireApp => 'Цела апликација';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Истиот фонт насекаде, вклучително и во повик';

  @override
  String get fontApplyTitlesOnly => 'Наслови и заглавија';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Само големи наслови и заглавија на секции';

  @override
  String get fontApplyCustomize => 'Прилагодете';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Изберете фонт по екран и тип на текст';

  @override
  String get fontCustomizeSection => 'Приспособете по екран';

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
  String get fontRolePageTitle => 'Наслов на страницата';

  @override
  String get fontRoleSectionHeader => 'Заглавие на делот';

  @override
  String get fontRolePrimary => 'Примарен текст';

  @override
  String get fontRoleSecondary => 'Секундарен текст';

  @override
  String get fontRoleButton => 'Копчиња';

  @override
  String get fontRoleDialKey => 'Копчиња за бирање';

  @override
  String get fontSurfaceRecents => 'Неодамнешни';

  @override
  String get fontSurfaceContacts => 'Контакти';

  @override
  String get fontSurfaceSettings => 'Поставки';

  @override
  String get fontSurfaceDialpad => 'Тастатура за бирање';

  @override
  String get fontSurfaceShell => 'Навигација';

  @override
  String get fontSurfaceDefaultDialer => 'Стандардно известување за бирач';

  @override
  String get fontSurfaceFavourites => 'Омилени';

  @override
  String get fontSurfaceBlocked => 'Блокирани броеви';

  @override
  String get fontSurfaceContactDetail => 'Детали за контакт';

  @override
  String get fontSurfaceCallHistory => 'Историја на повици';

  @override
  String get fontSurfaceSheets => 'Листови и берачи';

  @override
  String get fontSurfaceInCall => 'Екран за повик';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — целата апликација';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — само наслови';
  }

  @override
  String get fontSubtitleCustomize => 'Прилагодено по екран';

  @override
  String get background => 'Позадина';

  @override
  String get accent => 'Акцент';

  @override
  String get lightBackground => 'Светла позадина';

  @override
  String get lightAccent => 'Лесен акцент';

  @override
  String get darkBackground => 'Темна позадина';

  @override
  String get darkAccent => 'Темен акцент';

  @override
  String get callBackground => 'Заднина на повици';

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
  String get appIcon => 'Икона за апликација';

  @override
  String get answerMethod => 'Метод на одговор';

  @override
  String get answerSlide => 'Лизгајте за да одговорите';

  @override
  String get answerSlideSubtitle =>
      'Повлечете лево/десно на лентата, како Google Phone';

  @override
  String get answerButton => 'Допрете го копчето';

  @override
  String get answerButtonSubtitle =>
      'Допрете ги копчињата за одговор или одбивање';

  @override
  String get answerHuawei => 'Стил на Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Повлечете го кругот до зелениот телефон за да одговорите';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — повлечете на зелено/црвено';

  @override
  String get calling => 'Повикувајќи се';

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
  String get defaultSim => 'Стандардна SIM';

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
  String get askEveryTime => 'Прашај секој пат';

  @override
  String get askEveryTimeSubtitle =>
      'Покажете го избирачот на СИМ пред секој повик';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Не се пронајдени SIM-картички';

  @override
  String couldNotLoadSims(String error) {
    return 'Не може да се вчитаат SIM-картичките: $error';
  }

  @override
  String get allFavourites => 'Сите омилени';

  @override
  String get allFavouritesSubtitle =>
      'Повторно нарачајте, отстранете и додајте од контактите';

  @override
  String get blockedNumbers => 'Блокирани броеви';

  @override
  String get blockedNumbersSubtitle => 'Прегледајте ги и одблокирајте броеви';

  @override
  String get soundsAndVibration => 'Звуци и вибрации';

  @override
  String get soundsAndVibrationSubtitle =>
      'Тонови на ѕвонење, вибрации, тонови на подлогата за бирање';

  @override
  String couldNotOpenSettings(String error) {
    return 'Не може да се отворат поставките: $error';
  }

  @override
  String get frequentlyContacted => 'Често контактирани';

  @override
  String get numberOfRecords => 'Број на записи';

  @override
  String get timePeriod => 'Временски период';

  @override
  String get periodLast24Hours => 'Последните 24 часа';

  @override
  String get periodLast24HoursSubtitle => 'Повици од изминатиот ден';

  @override
  String get periodLast7Days => 'Последните 7 дена';

  @override
  String get periodLast7DaysSubtitle => 'Повици од изминатата недела';

  @override
  String get periodLast30Days => 'Последните 30 дена';

  @override
  String get periodLast30DaysSubtitle => 'Повици од минатиот месец';

  @override
  String get periodLast12Months => 'Последните 12 месеци';

  @override
  String get periodLast12MonthsSubtitle => 'Повици од изминатата година';

  @override
  String get periodAllTime => 'Цело време';

  @override
  String get periodAllTimeSubtitle => 'Цела историја на повици';

  @override
  String get frequentMaxOff => 'Исклучено';

  @override
  String frequentMaxCount(int count) {
    return '$count контакти';
  }

  @override
  String get torchBlink => 'Трепкање на факелот';

  @override
  String get torchIncomingCall => 'Факел за дојдовни повици';

  @override
  String get torchOutgoingCall => 'Факел за појдовен повик';

  @override
  String get torchOngoingCall => 'Факел за тековен повик';

  @override
  String get torchIncomingInterval => 'Интервал на дојдовни трепкања';

  @override
  String get torchOutgoingInterval => 'Интервал на појдовни трепкања';

  @override
  String get torchOngoingInterval => 'Тековен интервал на трепкање';

  @override
  String get torchOff => 'Исклучено';

  @override
  String get torchOffIncomingSubtitle => 'Нема факел додека ѕвони';

  @override
  String get torchOffOutgoingSubtitle => 'Нема факел при бирање';

  @override
  String get torchOffOngoingSubtitle => 'Нема факел за време на активен повик';

  @override
  String get torchFixedInterval => 'Фиксен интервал';

  @override
  String get torchFixedIntervalSubtitle => 'Трепкајте со одредена брзина';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds сек';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds трепка';
  }

  @override
  String get flashlightUnavailable =>
      'Батериската ламба не е достапна на овој уред';

  @override
  String get glyphLights => 'Светла на глифот';

  @override
  String get glyphCallingAnimation => 'Анимација за повикување глиф';

  @override
  String get glyphOngoingAnimation => 'Анимација на тековен повик со глиф';

  @override
  String get glyphNone => 'Никој';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Оневозможете ги светлата со глиф за појдовни повици';

  @override
  String get glyphNoneInCallSubtitle =>
      'Оневозможете ги светлата на глифот додека сте активно на повик';

  @override
  String get glyphBreathProgress => 'Здив и напредок';

  @override
  String get glyphBreathProgressSubtitle =>
      'Светлата дишат додека линијата се полни над 65 секунди';

  @override
  String get glyphAccumulate => 'Акумулирај';

  @override
  String get glyphAccumulateSubtitle => 'Акумулира анимација на светлата C1-C4';

  @override
  String get glyphSingle => 'Слободен';

  @override
  String get glyphSingleSubtitle => 'Едно светло се движи низ C1-C4';

  @override
  String get glyphBreath => 'Здив';

  @override
  String get glyphBreathSubtitle => 'Изберете светла и брзина';

  @override
  String get glyphSteady => 'Постојано';

  @override
  String get glyphSteadySubtitle => 'Избраните светла остануваат вклучени';

  @override
  String get breathSettings => 'Поставки за здив';

  @override
  String get activeLights => 'Активни светла';

  @override
  String lightsCount(int count) {
    return '$count светла';
  }

  @override
  String get speedSettings => 'Поставки за брзина';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms доцнење';
  }

  @override
  String get durationAndSpeed => 'Времетраење и брзина';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Времетраење ${duration}s, интервал од ${interval}ms';
  }

  @override
  String get cancel => 'Откажи';

  @override
  String get done => 'Готово';

  @override
  String get save => 'Зачувај';

  @override
  String get block => 'Блокирај';

  @override
  String get delete => 'Избриши';

  @override
  String get recents => 'Неодамнешни';

  @override
  String get contacts => 'Контакти';

  @override
  String get hideFavouritesOnRecents => 'Скриј омилени на Неодамнешни';

  @override
  String get showFavouritesOnRecents => 'Прикажи омилени на Неодамнешни';

  @override
  String get ongoingCall => 'Тековен повик';

  @override
  String get setAsDefaultTitle => 'ПОСТАВЕТЕ КАКО\nСтандардно';

  @override
  String get setAsDefaultBody =>
      'За да користите Nothing Dialer, тој мора да биде поставен како ваша стандардна апликација за телефон. Ова ви овозможува да управувате со повиците, да ја гледате историјата и да користите анимации со глиф.';

  @override
  String get setAsDefaultButton => 'ПОСТАВЕТЕ КАКО СТАНДАРНО';

  @override
  String get nothingDialerBrand => 'НИШТО БИРАЧКИ 1';

  @override
  String get favourites => 'Омилени';

  @override
  String get addFavourite => 'Додадете омилен';

  @override
  String get favouritesDrawerHint =>
      'Користете го менито за да додадете контакти. Допрете надвор од фиоката или повлечете ја затворена. Ѕвезда контакт од нивните детали или долго притиснете го повикот во Неодамнешни.';

  @override
  String get menu => 'Мени';

  @override
  String get noFavouritesYet =>
      'Сè уште нема омилени.\nОтворете го менито за да додадете еден или со ѕвезда контакт.';

  @override
  String get contactsPermissionNeeded => 'Потребна е дозвола за контакти';

  @override
  String get chooseContact => 'Изберете контакт';

  @override
  String get noPhone => 'Нема телефон';

  @override
  String get pickNumber => 'Изберете број';

  @override
  String get contactHasNoPhone => 'Овој контакт нема телефонски број';

  @override
  String get blockNumber => 'Блок број';

  @override
  String get enterPhoneNumber => 'Внесете телефонски број';

  @override
  String unblockedDisplay(String display) {
    return 'Деблокиран $display';
  }

  @override
  String get couldNotUnblockNumber => 'Не може да се одблокира бројот';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked блокирано • $matched се совпаѓа';
  }

  @override
  String get contactsPermissionMissing =>
      'Недостасува дозвола за контакти. Допрете за да поправите.';

  @override
  String get noBlockedNumbers => 'Нема блокирани броеви';

  @override
  String get unknownContact => 'Непознат контакт';

  @override
  String get unblock => 'Деблокирајте';

  @override
  String get permissionNeeded => 'Потребна е дозвола';

  @override
  String get grantPhonePermission =>
      'Дајте дозвола на телефонот да ја гледа вашата историја на повици.';

  @override
  String get grantContactsPermission =>
      'Дајте им дозвола на контактите да го видат вашиот адресар.';

  @override
  String get openSettings => 'Отворете Поставки';

  @override
  String get tryAgain => 'Обидете се повторно';

  @override
  String get couldNotLoadContacts => 'Не може да се вчитаат контактите';

  @override
  String get contactsLoadError =>
      'Нешто тргна наопаку при читањето на вашиот адресар.';

  @override
  String get noContactsFound => 'Не се пронајдени контакти';

  @override
  String get contactsEmptySubtitle =>
      'Контактите од вашиот уред ќе се појават овде.';

  @override
  String get searchContacts => 'Барај контакти…';

  @override
  String get searchRecentCalls => 'Пребарувајте неодамнешни повици';

  @override
  String get fromContacts => 'Од контакти';

  @override
  String get recentsSearchSection => 'Неодамнешно пребарување';

  @override
  String get recentsSearchShowContacts => 'Прикажи контакти во пребарувањето';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Додека пребарувате Неодамнешни, прикажувајте и соодветни луѓе од вашиот адресар под резултатите од историјата на повици.';

  @override
  String get voiceSearch => 'Гласовно пребарување';

  @override
  String get createNewContact => 'Создадете нов контакт';

  @override
  String callError(String error) {
    return 'Грешка во повикот: $error';
  }

  @override
  String get noRecentCalls => 'Нема неодамнешни повици';

  @override
  String get callHistoryEmpty => 'Вашата историја на повици ќе се појави овде.';

  @override
  String get loadMore => 'Вчитај повеќе';

  @override
  String get frequentlyContactedHeader => 'Често контактирани';

  @override
  String get recentHistory => 'Понова историја';

  @override
  String get noFavouritesRecentsHint =>
      'Сè уште нема омилени. Ѕвезда на контакт, долго притискајте повик или користете ја картичката Омилени.';

  @override
  String get copyNumber => 'Копирај број';

  @override
  String get editNumberBeforeCall => 'Уредете го бројот пред повик';

  @override
  String get removeFromFavourites => 'Отстрани од омилените';

  @override
  String get addToFavourites => 'Додај во омилени';

  @override
  String get blockNumberQuestion => 'Блокирај број?';

  @override
  String blockNumberConfirm(String number) {
    return 'Веќе нема да добивате повици или пораки од $number.';
  }

  @override
  String get blocked => 'Блокиран';

  @override
  String get couldNotBlock => 'Не може да се блокира';

  @override
  String get contactNotOnDevice => 'Контактот не е зачуван на овој уред';

  @override
  String get unblocked => 'Деблокиран';

  @override
  String get numberCopied => 'Бројот е копиран';

  @override
  String get showLess => 'Покажете помалку';

  @override
  String get showAllTimes => 'Прикажи ги сите времиња';

  @override
  String mostRecent(String time) {
    return 'Најнови · $time';
  }

  @override
  String get videoCall => 'Видео повик';

  @override
  String get couldNotPlaceVideoCall => 'Не може да се воспостави видео повик';

  @override
  String get message => 'Порака';

  @override
  String get couldNotOpenMessaging =>
      'Не може да се отвори апликацијата за пораки';

  @override
  String get history => 'Историја';

  @override
  String get viewContact => 'Прикажи контакт';

  @override
  String get addToContact => 'Додај во контакт';

  @override
  String get callTypeMissed => 'Пропуштени';

  @override
  String get callTypeRejected => 'Одбиено';

  @override
  String get callTypeIncoming => 'Дојдовни';

  @override
  String get callTypeOutgoing => 'Појдовни';

  @override
  String get today => 'Денес';

  @override
  String get yesterday => 'Вчера';

  @override
  String get justNow => 'Само сега';

  @override
  String minutesAgo(int count) {
    return 'пред $count мин';
  }

  @override
  String hoursAgo(int count) {
    return 'пред $count часа';
  }

  @override
  String get filterAll => 'Сите';

  @override
  String get filterMissed => 'Пропуштени';

  @override
  String get filterContacts => 'Контакти';

  @override
  String get filterNonContacts => 'Неконтактни';

  @override
  String get iconUpdated =>
      'Иконата е ажурирана. На вашиот почетен екран може да му треба малку време за да се освежи.';

  @override
  String get iconSavedRelease =>
      'Изборот е зачуван. Иконата на почетниот екран се ажурира во изданија.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Не можев да ја сменам иконата: $error';
  }

  @override
  String get launcherClassicBlack => 'Класично (црно)';

  @override
  String get launcherLight => 'Светлина';

  @override
  String get launcherNothingRed => 'Ништо црвено';

  @override
  String get launcherDarkGrey => 'Темно сива боја';

  @override
  String get launcherCream => 'Крем';

  @override
  String get launcherRetroPhone => 'Ретро телефон';

  @override
  String get launcherRetroPhoneLight => 'Ретро телефон (лесен)';

  @override
  String get voiceSearchUnavailable =>
      'Гласовното пребарување не е достапно на овој уред.';

  @override
  String voiceSearchFailed(String error) {
    return 'Гласовното пребарување не успеа: $error';
  }

  @override
  String get customColor => 'Прилагодено';

  @override
  String get selectColor => 'Изберете боја';

  @override
  String get reset => 'Ресетирај';

  @override
  String get simPickerTitle => 'Изберете SIM';

  @override
  String get simChooseForCall => 'Изберете SIM за овој повик';

  @override
  String get defaultSimAsk => 'Прашај секој пат';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Детали за контакт';

  @override
  String get call => 'Јавете се';

  @override
  String get share => 'Споделете';

  @override
  String get favourite => 'Омилен';

  @override
  String get unfavourite => 'Неомилена';

  @override
  String get blockContact => 'Блокирај контакт';

  @override
  String get unblockContact => 'Деблокирајте го контактот';

  @override
  String get deleteContact => 'Избришете контакт';

  @override
  String get phone => 'Телефон';

  @override
  String get email => 'Е-пошта';

  @override
  String get ringtone => 'Рингтон';

  @override
  String get defaultRingtone => 'Стандардно';

  @override
  String get simForContact => 'SIM за овој контакт';

  @override
  String get callHistoryTitle => 'Историја на повици';

  @override
  String get noCallsWithNumber => 'Нема повици со овој број';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Анимација со глиф';

  @override
  String get inCallGlyphAnimationStyle => 'Анимација со глиф во повик';

  @override
  String get recordsOff => 'Исклучено';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Стандардна SIM';

  @override
  String get nothingPhoneOnly => 'Ништо Само телефон';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Карактеристиките на глифот бараат телефон со ништо';

  @override
  String get custom => 'Прилагодено';

  @override
  String presetColorHex(String hex) {
    return 'Претходно поставено · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Прилагодено · $hex';
  }

  @override
  String get oneContact => '1 контакт';

  @override
  String upToContacts(int count) {
    return 'До $count контакти';
  }

  @override
  String get answerButtonTapSubtitle => 'Допрете го копчето за да одговорите';

  @override
  String get filterCalls => 'Филтрирајте ги повиците';

  @override
  String get filterTooltip => 'Филтер';

  @override
  String get settingsTooltip => 'Поставки';

  @override
  String get filterAllSubtitle => 'Целиот дневник за повици';

  @override
  String get filterMissedSubtitle => 'Пропуштени и одбиени';

  @override
  String get filterContactsSubtitle =>
      'Повиците се совпаѓаат со зачуван контакт';

  @override
  String get filterNonContactsSubtitle => 'Броеви кои не се во вашиот адресар';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Тековен повик: $detail';
  }

  @override
  String get defaultSimForCalls => 'Стандардна SIM за повици';

  @override
  String get blinkInterval => 'Интервал на трепкање';

  @override
  String get close => 'Затвори';

  @override
  String get frequentlyContactedInfoBody =>
      'Ги прикажува вашите најповикувани телефонски броеви на врвот на картичката Неодамнешни, врз основа на тоа колку дојдовни, појдовни, пропуштени или одбиени повици сте имале со секој број во временскиот период што ќе го изберете.\n\nБрој на записи: поставете на 0 за да го исклучите ова. Користете 1–20 за да покажете дека има многу врвни контакти.\n\nВременскиот период се применува само кога е прикажан барем еден контакт.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count светла, ${ms}ms брзина';
  }

  @override
  String get deleteContactQuestion => 'Да се ​​избрише контакт?';

  @override
  String get deleteContactBody =>
      'Овој контакт трајно ќе се избрише од вашиот уред.';

  @override
  String get blockContactQuestion => 'Да се ​​блокира контактот?';

  @override
  String get unblockContactQuestion => 'Да се ​​одблокира контактот?';

  @override
  String get blockContactBody =>
      'Веќе нема да примате повици или пораки од овој контакт.';

  @override
  String get unblockContactBody =>
      'Ќе почнете да примате повици и пораки од овој контакт.';

  @override
  String get contactBlocked => 'Контактот е блокиран';

  @override
  String get contactUnblocked => 'Контактот е одблокиран';

  @override
  String get noPhoneNumbersToBlock => 'Нема телефонски броеви за блокирање';

  @override
  String get simSameAsSystem => 'Исто како и системот';

  @override
  String get simSameAsSystemSubtitle =>
      'Ја следи стандардната SIM-картичка во Поставки';

  @override
  String get simAskEveryTimeForContact =>
      'Секогаш прикажувај го избирачот на SIM за овој контакт';

  @override
  String get ringtoneSetForContact =>
      'Мелодијата е поставена глобално за овој контакт';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Не успеа да се избере тон на ѕвонење: $error';
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
  String get noCallHistoryFound => 'Не е пронајдена историја на повици';

  @override
  String get speedDialVoicemail => 'Брзо бирање: говорна пошта';

  @override
  String shareContactSubject(String name) {
    return 'Контакт: $name';
  }

  @override
  String get contactInfo => 'Информации за контакт';

  @override
  String get dontAskAgainSim => 'Не прашувај повторно';

  @override
  String get simDontAskAgainSubtitle =>
      'Користете ја оваа SIM-картичка како стандардна (промена во Поставки)';

  @override
  String get addContact => 'Додадете контакт';

  @override
  String get createContact => 'Создадете контакт';

  @override
  String get paste => 'Вметни';

  @override
  String get clear => 'Јасно';

  @override
  String get returnToCall => 'Врати се на повик';

  @override
  String get numberOfRecordsTitle => 'Број на записи';

  @override
  String get recordsPickerSubtitle =>
      'Колку често контактирани записи да се прикажат (0 = исклучено)';

  @override
  String get torchInfoTitle => 'Факелот трепка';

  @override
  String get torchInfoBody =>
      'Трепка блицот на камерата за време на дојдовни, појдовни или тековни повици. Независни од глифните светла.';

  @override
  String get glyphMapTitle => 'Распоред на глиф';

  @override
  String get glyphMapBody =>
      'Ништо Телефон 1 Glyph LED зони. Анимациите за појдовни и при повик ги користат овие канали.';

  @override
  String get answerMethodTitle => 'Метод на одговор';

  @override
  String get glyphOutgoingCallStyleTitle => 'Стил на појдовен повик';

  @override
  String get glyphInCallAnimationTitle => 'Анимација со глиф во повик';

  @override
  String get themePickerTitle => 'Тема';

  @override
  String get torchIncomingTitle => 'Факел за дојдовни повици';

  @override
  String get torchOutgoingTitle => 'Факел за појдовен повик';

  @override
  String get torchOngoingTitle => 'Факел за тековен повик';

  @override
  String get timePeriodTitle => 'Временски период';

  @override
  String get ok => 'во ред';

  @override
  String get confirmDeleteCall => 'Да се ​​избрише овој повик од историјата?';

  @override
  String get confirmDeleteAllCalls =>
      'Да се ​​избришат сите повици со овој број?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Испрати порака';

  @override
  String get addToExistingContactAction => 'Додај во контакт';

  @override
  String get mobileLabel => 'Мобилен';

  @override
  String get callingSimForContactTitle => 'Повикување на SIM за овој контакт';

  @override
  String get contactSettings => 'Поставки за контакт';

  @override
  String get setCallingSim => 'Поставете SIM за повикување';

  @override
  String get contactRingtone => 'Мелодија за контакт';

  @override
  String get shareContact => 'Споделете контакт';

  @override
  String get blockNumbers => 'Блокирајте броеви';

  @override
  String get unblockNumbers => 'Деблокирајте ги броевите';

  @override
  String get connectedApps => 'Поврзани апликации';

  @override
  String get simNotSet => 'Не е поставено';

  @override
  String get ringtoneDefault => 'Стандардно';

  @override
  String get customRingtone => 'Прилагодено';

  @override
  String get aboutSection => 'За';

  @override
  String get aboutFeedbackSection => 'За и повратни информации';

  @override
  String get aboutDescription =>
      'Nothing Dialer е со отворен код. Ако сте програмер, добредојдени сте да го истражите кодот и да придонесете.';

  @override
  String get aboutViewSource => 'Погледнете на GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Не може да се отвори врската';

  @override
  String get reviewSection => 'Преглед';

  @override
  String get reviewDescription =>
      'Уживате во Nothing Dialer? Вашата оцена на Google Play им помага на другите да ја најдат апликацијата.';

  @override
  String get reviewRateOnPlay => 'Оцени на Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Не може да се отвори Google Play';

  @override
  String get breathSpeed => 'Брзина на здив';

  @override
  String get breathSpeedBlinkHint =>
      'Пониско = Трепкање, Повисоко = Бавен здив';

  @override
  String get speedSliderHint => 'Пониско = Побрзо, Повисоко = Побавно';

  @override
  String get swatchDefault => 'Стандардно';

  @override
  String get customAccentColorPicker => 'Прилагодена боја на акцент';

  @override
  String get customLightBackgroundPicker => 'Прилагодена светла позадина';

  @override
  String get customDarkBackgroundPicker => 'Прилагодена темна позадина';

  @override
  String get customCallBackgroundPicker => 'Прилагодена позадина за повици';

  @override
  String get ongoingCallStyleTitle => 'Стил на тековен повик';

  @override
  String get glyphMapUnavailable => 'Картата на глифот е недостапна';

  @override
  String get animationDelayRange => 'Доцнење на анимација (1-10 секунди)';

  @override
  String get animationDelayRangeSingle =>
      'Доцнење на анимација (0,1 сек. - 10 сек.)';

  @override
  String get inCallMute => 'Исклучи звук';

  @override
  String get inCallKeypad => 'Тастатура';

  @override
  String get inCallSpeaker => 'Говорник';

  @override
  String get inCallMore => 'Повеќе';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Телефон';

  @override
  String get inCallAddCall => 'Додадете повик';

  @override
  String get inCallChangeSim => 'Сменете ја SIM-картичката';

  @override
  String get inCallDecline => 'Одбивање';

  @override
  String get inCallAnswer => 'Одговори';

  @override
  String get inCallMessage => 'Порака';

  @override
  String get inCallCalling => 'Се повикува…';

  @override
  String get inCallIncoming => 'Дојдовен повик';

  @override
  String get inCallSelectSim => 'Изберете SIM…';

  @override
  String get inCallSwitchingSim => 'Се префрла SIM…';

  @override
  String get inCallCallEnded => 'Повикот заврши';

  @override
  String inCallCallingVia(String sim) {
    return 'Повикување преку $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Повикување преку <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Изберете SIM за овој повик';

  @override
  String get inCallDragAnswerDecline =>
      'Повлечете десно за да одговорите · Повлечете лево за да одбиете';

  @override
  String inCallMobileNumber(String number) {
    return 'мобилен $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Тековен)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Јавете се преку <b>$sim</b> од';
  }

  @override
  String get inCallCallFrom => 'Јавете се од';

  @override
  String get inCallUnknown => 'Непознат';

  @override
  String get selectContactRingtone => 'Изберете рингтон за контакт';

  @override
  String get speakToSearchPrompt => 'Зборувај за пребарување';

  @override
  String get phonePermissionRequired => 'Потребна е дозвола за телефон';

  @override
  String callFailed(String error) {
    return 'Повикот не успеа: $error';
  }

  @override
  String get callPermissionDenied => 'Дозволата за повик е одбиена';

  @override
  String get alreadyDefaultDialer => 'Веќе поставен како стандарден бирач';

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
