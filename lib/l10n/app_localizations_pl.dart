// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Nic. Dialer';

  @override
  String get settings => 'Ustawienia';

  @override
  String get settingsSearchHint => 'Ustawienia wyszukiwania';

  @override
  String get settingsSearchNoResults => 'Nie znaleziono ustawień';

  @override
  String get general => 'Ogólny';

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
  String get theme => 'Temat';

  @override
  String get themeSystemDefault => 'Domyślne systemowe';

  @override
  String get themeLight => 'Światło';

  @override
  String get themeDark => 'Ciemny';

  @override
  String get themeFollowSystem => 'Postępuj zgodnie z ustawieniami systemu';

  @override
  String get themeAlwaysLight => 'Zawsze używaj jasnego motywu';

  @override
  String get themeAlwaysDark => 'Zawsze używaj ciemnego motywu';

  @override
  String get language => 'Język';

  @override
  String get languageDeviceDefault => 'Urządzenie domyślne';

  @override
  String get languagePickerTitle => 'Język';

  @override
  String get languageSearchHint => 'Wyszukaj języki';

  @override
  String get font => 'Chrzcielnica';

  @override
  String get fontSystem => 'Domyślne systemowe';

  @override
  String get fontNdot => 'Nic (NDot)';

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
      'Pobieranie czcionki nie powiodło się. Sprawdź połączenie i spróbuj ponownie.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Chrzcielnica';

  @override
  String get fontPreviewSample => 'Nic. Dialer';

  @override
  String get fontAppWide => 'Czcionka aplikacji';

  @override
  String get fontApplyTo => 'Zastosuj do';

  @override
  String get fontApplyEntireApp => 'Cała aplikacja';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Ta sama czcionka wszędzie, także podczas rozmowy';

  @override
  String get fontApplyTitlesOnly => 'Tytuły i nagłówki';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Tylko duże tytuły i nagłówki sekcji';

  @override
  String get fontApplyCustomize => 'Dostosuj';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Wybierz czcionkę dla każdego ekranu i typu tekstu';

  @override
  String get fontCustomizeSection => 'Dostosuj według ekranu';

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
  String get fontRolePageTitle => 'Tytuł strony';

  @override
  String get fontRoleSectionHeader => 'Nagłówek sekcji';

  @override
  String get fontRolePrimary => 'Tekst podstawowy';

  @override
  String get fontRoleSecondary => 'Tekst wtórny';

  @override
  String get fontRoleButton => 'Pikolak';

  @override
  String get fontRoleDialKey => 'Klawisze klawiatury';

  @override
  String get fontSurfaceRecents => 'Najnowsze';

  @override
  String get fontSurfaceContacts => 'Łączność';

  @override
  String get fontSurfaceSettings => 'Ustawienia';

  @override
  String get fontSurfaceDialpad => 'Klawiatura';

  @override
  String get fontSurfaceShell => 'Nawigacja';

  @override
  String get fontSurfaceDefaultDialer => 'Domyślny monit dialera';

  @override
  String get fontSurfaceFavourites => 'Ulubione';

  @override
  String get fontSurfaceBlocked => 'Zablokowane numery';

  @override
  String get fontSurfaceContactDetail => 'Dane kontaktowe';

  @override
  String get fontSurfaceCallHistory => 'Historia połączeń';

  @override
  String get fontSurfaceSheets => 'Arkusze i zbieracze';

  @override
  String get fontSurfaceInCall => 'Ekran połączenia';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — cała aplikacja';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — tylko tytuły';
  }

  @override
  String get fontSubtitleCustomize => 'Niestandardowe na ekran';

  @override
  String get background => 'Tło';

  @override
  String get accent => 'Akcent';

  @override
  String get lightBackground => 'Jasne tło';

  @override
  String get lightAccent => 'Lekki akcent';

  @override
  String get darkBackground => 'Ciemne tło';

  @override
  String get darkAccent => 'Ciemny akcent';

  @override
  String get callBackground => 'Tło połączenia';

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
  String get appIcon => 'Ikona aplikacji';

  @override
  String get answerMethod => 'Metoda odpowiedzi';

  @override
  String get answerSlide => 'Przesuń, aby odpowiedzieć';

  @override
  String get answerSlideSubtitle =>
      'Przesuń palcem w lewo/w prawo na pasku, np. Google Phone';

  @override
  String get answerButton => 'Naciśnij przycisk';

  @override
  String get answerButtonSubtitle =>
      'Stuknij przyciski odbierania lub odrzucania';

  @override
  String get answerHuawei => 'Styl Huaweia';

  @override
  String get answerHuaweiSubtitle =>
      'Przeciągnij kółko na zielony telefon, aby odebrać';

  @override
  String get answerHuaweiTileSubtitle =>
      'Huawei — przeciągnij na kolor zielony/czerwony';

  @override
  String get calling => 'Powołanie';

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
  String get defaultSim => 'Domyślna karta SIM';

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
  String get askEveryTime => 'Zapytaj za każdym razem';

  @override
  String get askEveryTimeSubtitle =>
      'Pokaż selektor karty SIM przed każdym połączeniem';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Nie znaleziono kart SIM';

  @override
  String couldNotLoadSims(String error) {
    return 'Nie można załadować kart SIM: $error';
  }

  @override
  String get allFavourites => 'Wszystkie ulubione';

  @override
  String get allFavouritesSubtitle =>
      'Zmień kolejność, usuń i dodaj z kontaktów';

  @override
  String get blockedNumbers => 'Zablokowane numery';

  @override
  String get blockedNumbersSubtitle => 'Przeglądaj i odblokowuj numery';

  @override
  String get soundsAndVibration => 'Dźwięki i wibracje';

  @override
  String get soundsAndVibrationSubtitle =>
      'Dzwonek, wibracje, dźwięki klawiatury';

  @override
  String couldNotOpenSettings(String error) {
    return 'Nie można otworzyć ustawień: $error';
  }

  @override
  String get frequentlyContacted => 'Często kontaktowany';

  @override
  String get numberOfRecords => 'Liczba rekordów';

  @override
  String get timePeriod => 'Okres';

  @override
  String get periodLast24Hours => 'Ostatnie 24 godziny';

  @override
  String get periodLast24HoursSubtitle => 'Telefony z poprzedniego dnia';

  @override
  String get periodLast7Days => 'Ostatnie 7 dni';

  @override
  String get periodLast7DaysSubtitle => 'Telefony z ostatniego tygodnia';

  @override
  String get periodLast30Days => 'Ostatnie 30 dni';

  @override
  String get periodLast30DaysSubtitle => 'Połączenia z ostatniego miesiąca';

  @override
  String get periodLast12Months => 'Ostatnie 12 miesięcy';

  @override
  String get periodLast12MonthsSubtitle => 'Telefony z zeszłego roku';

  @override
  String get periodAllTime => 'Cały czas';

  @override
  String get periodAllTimeSubtitle => 'Cała historia połączeń';

  @override
  String get frequentMaxOff => 'Wyłączony';

  @override
  String frequentMaxCount(int count) {
    return '$count kontaktów';
  }

  @override
  String get torchBlink => 'Mrugnięcie pochodni';

  @override
  String get torchIncomingCall => 'Latarka połączeń przychodzących';

  @override
  String get torchOutgoingCall => 'Latarka połączeń wychodzących';

  @override
  String get torchOngoingCall => 'Latarka ciągłego połączenia';

  @override
  String get torchIncomingInterval => 'Nadchodzący interwał mrugnięcia';

  @override
  String get torchOutgoingInterval => 'Interwał mrugnięcia wychodzącego';

  @override
  String get torchOngoingInterval => 'Ciągły odstęp między mrugnięciami';

  @override
  String get torchOff => 'Wyłączony';

  @override
  String get torchOffIncomingSubtitle => 'Brak latarki podczas dzwonienia';

  @override
  String get torchOffOutgoingSubtitle =>
      'Brak latarki podczas wybierania numeru';

  @override
  String get torchOffOngoingSubtitle =>
      'Brak latarki podczas aktywnego połączenia';

  @override
  String get torchFixedInterval => 'Stały interwał';

  @override
  String get torchFixedIntervalSubtitle => 'Migaj z ustaloną prędkością';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds miga';
  }

  @override
  String get flashlightUnavailable =>
      'Latarka nie jest dostępna na tym urządzeniu';

  @override
  String get glyphLights => 'Światła glifowe';

  @override
  String get glyphCallingAnimation => 'Animacja wywoływania glifów';

  @override
  String get glyphOngoingAnimation =>
      'Animacja trwającego połączenia glifowego';

  @override
  String get glyphNone => 'Nic';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Wyłącz światła glifów dla połączeń wychodzących';

  @override
  String get glyphNoneInCallSubtitle =>
      'Wyłącz światła glifów podczas aktywnego połączenia';

  @override
  String get glyphBreathProgress => 'Oddech i postęp';

  @override
  String get glyphBreathProgressSubtitle =>
      'Światła oddychają, a linia zapełnia się po 65 s';

  @override
  String get glyphAccumulate => 'Gromadzić';

  @override
  String get glyphAccumulateSubtitle =>
      'Narastająca animacja na światłach C1-C4';

  @override
  String get glyphSingle => 'Pojedynczy';

  @override
  String get glyphSingleSubtitle =>
      'Pojedyncze światło poruszające się przez C1-C4';

  @override
  String get glyphBreath => 'Oddech';

  @override
  String get glyphBreathSubtitle => 'Wybierz światła i prędkość';

  @override
  String get glyphSteady => 'Stały';

  @override
  String get glyphSteadySubtitle => 'Wybrane światła pozostają włączone';

  @override
  String get breathSettings => 'Ustawienia oddechu';

  @override
  String get activeLights => 'Aktywne światła';

  @override
  String lightsCount(int count) {
    return '$count świeci';
  }

  @override
  String get speedSettings => 'Ustawienia prędkości';

  @override
  String speedSettingsDelay(int ms) {
    return 'Opóźnienie ${ms}ms';
  }

  @override
  String get durationAndSpeed => 'Czas trwania i prędkość';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Czas trwania ${duration}s, odstęp ${interval}ms';
  }

  @override
  String get cancel => 'Anulować';

  @override
  String get done => 'Zrobione';

  @override
  String get save => 'Ratować';

  @override
  String get block => 'Blok';

  @override
  String get delete => 'Usuwać';

  @override
  String get recents => 'Najnowsze';

  @override
  String get contacts => 'Łączność';

  @override
  String get hideFavouritesOnRecents => 'Ukryj ulubione w Ostatnich';

  @override
  String get showFavouritesOnRecents => 'Pokaż ulubione w Ostatnich';

  @override
  String get ongoingCall => 'Trwające połączenie';

  @override
  String get setAsDefaultTitle => 'USTAW JAKO\nDOMYŚLNY';

  @override
  String get setAsDefaultBody =>
      'Aby móc korzystać z programu Nothing Dialer, należy go ustawić jako domyślną aplikację na telefon. Umożliwia to zarządzanie połączeniami, przeglądanie historii i używanie animacji glifów.';

  @override
  String get setAsDefaultButton => 'USTAW JAKO DOMYŚLNE';

  @override
  String get nothingDialerBrand => 'DIALER NIC 1';

  @override
  String get favourites => 'Ulubione';

  @override
  String get addFavourite => 'Dodaj ulubione';

  @override
  String get favouritesDrawerHint =>
      'Użyj menu, aby dodać kontakty. Stuknij poza szufladą lub przesuń ją, aby ją zamknąć. Oznacz kontakt gwiazdką w jego szczegółach lub naciśnij i przytrzymaj połączenie w sekcji Ostatnie.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'Nie ma jeszcze ulubionych.\nOtwórz menu, aby dodać kontakt lub oznaczyć go gwiazdką.';

  @override
  String get contactsPermissionNeeded => 'Wymagane pozwolenie na kontakt';

  @override
  String get chooseContact => 'Wybierz kontakt';

  @override
  String get noPhone => 'Brak telefonu';

  @override
  String get pickNumber => 'Wybierz numer';

  @override
  String get contactHasNoPhone => 'Ten kontakt nie ma numeru telefonu';

  @override
  String get blockNumber => 'Numer bloku';

  @override
  String get enterPhoneNumber => 'Wpisz numer telefonu';

  @override
  String unblockedDisplay(String display) {
    return 'Odblokowano $display';
  }

  @override
  String get couldNotUnblockNumber => 'Nie można odblokować numeru';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked zablokowane • $matched dopasowane';
  }

  @override
  String get contactsPermissionMissing =>
      'Brak uprawnień do kontaktów. Kliknij, aby naprawić.';

  @override
  String get noBlockedNumbers => 'Brak zablokowanych numerów';

  @override
  String get unknownContact => 'Nieznany kontakt';

  @override
  String get unblock => 'Odblokować';

  @override
  String get permissionNeeded => 'Potrzebne pozwolenie';

  @override
  String get grantPhonePermission =>
      'Zezwól telefonowi na przeglądanie historii połączeń.';

  @override
  String get grantContactsPermission =>
      'Przyznaj kontaktom uprawnienia do przeglądania Twojej książki adresowej.';

  @override
  String get openSettings => 'Otwórz Ustawienia';

  @override
  String get tryAgain => 'Spróbuj ponownie';

  @override
  String get couldNotLoadContacts => 'Nie udało się wczytać kontaktów';

  @override
  String get contactsLoadError =>
      'Coś poszło nie tak podczas czytania Twojej książki adresowej.';

  @override
  String get noContactsFound => 'Nie znaleziono żadnych kontaktów';

  @override
  String get contactsEmptySubtitle =>
      'Tutaj pojawią się kontakty z Twojego urządzenia.';

  @override
  String get searchContacts => 'Wyszukaj kontakty…';

  @override
  String get searchRecentCalls => 'Wyszukaj ostatnie połączenia';

  @override
  String get fromContacts => 'Z kontaktów';

  @override
  String get recentsSearchSection => 'Ostatnie wyszukiwanie';

  @override
  String get recentsSearchShowContacts => 'Pokaż kontakty w wyszukiwaniu';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Podczas wyszukiwania Ostatnich możesz także wyświetlać pasujące osoby z Twojej książki adresowej pod wynikami historii połączeń.';

  @override
  String get voiceSearch => 'Wyszukiwanie głosowe';

  @override
  String get createNewContact => 'Utwórz nowy kontakt';

  @override
  String callError(String error) {
    return 'Błąd połączenia: $error';
  }

  @override
  String get noRecentCalls => 'Brak ostatnich połączeń';

  @override
  String get callHistoryEmpty => 'Tutaj pojawi się historia Twoich połączeń.';

  @override
  String get loadMore => 'Załaduj więcej';

  @override
  String get frequentlyContactedHeader => 'Często kontaktowany';

  @override
  String get recentHistory => 'Najnowsza historia';

  @override
  String get noFavouritesRecentsHint =>
      'Nie ma jeszcze ulubionych. Oznacz kontakt gwiazdką, naciśnij i przytrzymaj połączenie lub skorzystaj z karty Ulubione.';

  @override
  String get copyNumber => 'Skopiuj numer';

  @override
  String get editNumberBeforeCall => 'Edytuj numer przed połączeniem';

  @override
  String get removeFromFavourites => 'Usuń z ulubionych';

  @override
  String get addToFavourites => 'Dodaj do ulubionych';

  @override
  String get blockNumberQuestion => 'Numer bloku?';

  @override
  String blockNumberConfirm(String number) {
    return 'Nie będziesz już otrzymywać połączeń ani SMS-ów od $number.';
  }

  @override
  String get blocked => 'Zablokowany';

  @override
  String get couldNotBlock => 'Nie udało się zablokować';

  @override
  String get contactNotOnDevice =>
      'Kontakt nie został zapisany na tym urządzeniu';

  @override
  String get unblocked => 'Odblokowany';

  @override
  String get numberCopied => 'Numer skopiowany';

  @override
  String get showLess => 'Pokaż mniej';

  @override
  String get showAllTimes => 'Pokaż wszystkie czasy';

  @override
  String mostRecent(String time) {
    return 'Najnowsze · $time';
  }

  @override
  String get videoCall => 'Rozmowa wideo';

  @override
  String get couldNotPlaceVideoCall => 'Nie można nawiązać połączenia wideo';

  @override
  String get message => 'Wiadomość';

  @override
  String get couldNotOpenMessaging =>
      'Nie można otworzyć aplikacji do przesyłania wiadomości';

  @override
  String get history => 'Historia';

  @override
  String get viewContact => 'Zobacz kontakt';

  @override
  String get addToContact => 'Dodaj do kontaktu';

  @override
  String get callTypeMissed => 'Pominięty';

  @override
  String get callTypeRejected => 'Odrzucony';

  @override
  String get callTypeIncoming => 'Przybywający';

  @override
  String get callTypeOutgoing => 'Towarzyski';

  @override
  String get today => 'Dzisiaj';

  @override
  String get yesterday => 'Wczoraj';

  @override
  String get justNow => 'Właśnie';

  @override
  String minutesAgo(int count) {
    return '$count min temu';
  }

  @override
  String hoursAgo(int count) {
    return '$count godz. temu';
  }

  @override
  String get filterAll => 'Wszystko';

  @override
  String get filterMissed => 'Pominięty';

  @override
  String get filterContacts => 'Łączność';

  @override
  String get filterNonContacts => 'Brak kontaktu';

  @override
  String get iconUpdated =>
      'Ikona zaktualizowana. Odświeżenie ekranu głównego może chwilę potrwać.';

  @override
  String get iconSavedRelease =>
      'Wybór zapisany. Ikona ekranu głównego jest aktualizowana w kompilacjach wersji.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Nie można zmienić ikony: $error';
  }

  @override
  String get launcherClassicBlack => 'Klasyczny (czarny)';

  @override
  String get launcherLight => 'Światło';

  @override
  String get launcherNothingRed => 'Nic czerwonego';

  @override
  String get launcherDarkGrey => 'Ciemnoszary';

  @override
  String get launcherCream => 'Krem';

  @override
  String get launcherRetroPhone => 'Telefon retro';

  @override
  String get launcherRetroPhoneLight => 'Telefon retro (lekki)';

  @override
  String get voiceSearchUnavailable =>
      'Wyszukiwanie głosowe nie jest dostępne na tym urządzeniu.';

  @override
  String voiceSearchFailed(String error) {
    return 'Wyszukiwanie głosowe nie powiodło się: $error';
  }

  @override
  String get customColor => 'Zwyczaj';

  @override
  String get selectColor => 'Wybierz kolor';

  @override
  String get reset => 'Nastawić';

  @override
  String get simPickerTitle => 'Wybierz kartę SIM';

  @override
  String get simChooseForCall => 'Wybierz kartę SIM dla tego połączenia';

  @override
  String get defaultSimAsk => 'Zapytaj za każdym razem';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Dane kontaktowe';

  @override
  String get call => 'Dzwonić';

  @override
  String get share => 'Udział';

  @override
  String get favourite => 'Ulubiony';

  @override
  String get unfavourite => 'Nieulubiony';

  @override
  String get blockContact => 'Zablokuj kontakt';

  @override
  String get unblockContact => 'Odblokuj kontakt';

  @override
  String get deleteContact => 'Usuń kontakt';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Dzwonek';

  @override
  String get defaultRingtone => 'Domyślny';

  @override
  String get simForContact => 'SIM dla tego kontaktu';

  @override
  String get callHistoryTitle => 'Historia połączeń';

  @override
  String get noCallsWithNumber => 'Brak połączeń z tym numerem';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '$seconds s';
  }

  @override
  String get glyphAnimationStyle => 'Animacja glifów';

  @override
  String get inCallGlyphAnimationStyle => 'Animacja glifów podczas połączenia';

  @override
  String get recordsOff => 'Wyłączony';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Domyślna karta SIM';

  @override
  String get nothingPhoneOnly => 'Nic Tylko telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Funkcje glifów wymagają telefonu typu Nothing';

  @override
  String get custom => 'Zwyczaj';

  @override
  String presetColorHex(String hex) {
    return 'Ustawienie wstępne · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Niestandardowe · $hex';
  }

  @override
  String get oneContact => '1 kontakt';

  @override
  String upToContacts(int count) {
    return 'Do $count kontaktów';
  }

  @override
  String get answerButtonTapSubtitle => 'Kliknij przycisk, aby odebrać';

  @override
  String get filterCalls => 'Filtruj połączenia';

  @override
  String get filterTooltip => 'Filtr';

  @override
  String get settingsTooltip => 'Ustawienia';

  @override
  String get filterAllSubtitle => 'Cały rejestr połączeń';

  @override
  String get filterMissedSubtitle => 'Pominięte i odrzucone';

  @override
  String get filterContactsSubtitle =>
      'Połączenia dopasowane do zapisanego kontaktu';

  @override
  String get filterNonContactsSubtitle =>
      'Numery, których nie ma w Twojej książce adresowej';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Trwające połączenie: $detail';
  }

  @override
  String get defaultSimForCalls => 'Domyślna karta SIM dla połączeń';

  @override
  String get blinkInterval => 'Interwał mrugania';

  @override
  String get close => 'Zamknąć';

  @override
  String get frequentlyContactedInfoBody =>
      'Wyświetla najczęściej wybierane numery telefonów u góry karty Ostatnie na podstawie liczby połączeń przychodzących, wychodzących, nieodebranych lub odrzuconych z każdym numerem w wybranym okresie.\n\nLiczba rekordów: ustaw na 0, aby wyłączyć tę opcję. Użyj wartości 1–20, aby wyświetlić liczbę najważniejszych kontaktów.\n\nPrzedział czasowy ma zastosowanie tylko wtedy, gdy widoczny jest co najmniej jeden kontakt.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count światła, prędkość ${ms}ms';
  }

  @override
  String get deleteContactQuestion => 'Usunąć kontakt?';

  @override
  String get deleteContactBody =>
      'Ten kontakt zostanie trwale usunięty z Twojego urządzenia.';

  @override
  String get blockContactQuestion => 'Zablokować kontakt?';

  @override
  String get unblockContactQuestion => 'Odblokować kontakt?';

  @override
  String get blockContactBody =>
      'Nie będziesz już otrzymywać połączeń ani SMS-ów od tego kontaktu.';

  @override
  String get unblockContactBody =>
      'Zaczniesz odbierać połączenia i SMS-y od tego kontaktu.';

  @override
  String get contactBlocked => 'Kontakt zablokowany';

  @override
  String get contactUnblocked => 'Kontakt odblokowany';

  @override
  String get noPhoneNumbersToBlock => 'Brak numerów telefonów do zablokowania';

  @override
  String get simSameAsSystem => 'To samo co systemowe';

  @override
  String get simSameAsSystemSubtitle =>
      'Podąża za domyślną kartą SIM w Ustawieniach';

  @override
  String get simAskEveryTimeForContact =>
      'Zawsze pokazuj wybór karty SIM dla tego kontaktu';

  @override
  String get ringtoneSetForContact =>
      'Dzwonek ustawiony globalnie dla tego kontaktu';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Nie udało się wybrać dzwonka: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Błąd: $error';
  }

  @override
  String get noCallHistoryFound => 'Nie znaleziono historii połączeń';

  @override
  String get speedDialVoicemail => 'Szybkie wybieranie: poczta głosowa';

  @override
  String shareContactSubject(String name) {
    return 'Kontakt: $name';
  }

  @override
  String get contactInfo => 'Informacje kontaktowe';

  @override
  String get dontAskAgainSim => 'Nie pytaj ponownie';

  @override
  String get simDontAskAgainSubtitle =>
      'Użyj tej karty SIM jako domyślnej (zmiana w Ustawieniach)';

  @override
  String get addContact => 'Dodaj kontakt';

  @override
  String get createContact => 'Utwórz kontakt';

  @override
  String get paste => 'Pasta';

  @override
  String get clear => 'Jasne';

  @override
  String get returnToCall => 'Wróć, aby zadzwonić';

  @override
  String get numberOfRecordsTitle => 'Liczba rekordów';

  @override
  String get recordsPickerSubtitle =>
      'Liczba często używanych wpisów do wyświetlenia (0 = wyłączone)';

  @override
  String get torchInfoTitle => 'Latarka mruga';

  @override
  String get torchInfoBody =>
      'Miga lampą błyskową aparatu podczas połączeń przychodzących, wychodzących lub trwających. Niezależny od świateł Glifów.';

  @override
  String get glyphMapTitle => 'Układ glifów';

  @override
  String get glyphMapBody =>
      'Nic Telefon 1 Strefy LED glifów. Animacje wychodzące i podczas rozmów korzystają z tych kanałów.';

  @override
  String get answerMethodTitle => 'Metoda odpowiedzi';

  @override
  String get glyphOutgoingCallStyleTitle => 'Styl połączeń wychodzących';

  @override
  String get glyphInCallAnimationTitle => 'Animacja glifów podczas połączenia';

  @override
  String get themePickerTitle => 'Temat';

  @override
  String get torchIncomingTitle => 'Latarka połączeń przychodzących';

  @override
  String get torchOutgoingTitle => 'Latarka połączeń wychodzących';

  @override
  String get torchOngoingTitle => 'Latarka ciągłego połączenia';

  @override
  String get timePeriodTitle => 'Okres';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Usunąć to połączenie z historii?';

  @override
  String get confirmDeleteAllCalls =>
      'Usunąć wszystkie połączenia z tym numerem?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Wyślij wiadomość';

  @override
  String get addToExistingContactAction => 'Dodaj do kontaktu';

  @override
  String get mobileLabel => 'Przenośny';

  @override
  String get callingSimForContactTitle =>
      'Wybieram kartę SIM dla tego kontaktu';

  @override
  String get contactSettings => 'Ustawienia kontaktu';

  @override
  String get setCallingSim => 'Ustaw kartę SIM do rozmów';

  @override
  String get contactRingtone => 'Dzwonek kontaktu';

  @override
  String get shareContact => 'Udostępnij kontakt';

  @override
  String get blockNumbers => 'Blokuj numery';

  @override
  String get unblockNumbers => 'Odblokuj numery';

  @override
  String get connectedApps => 'Połączone aplikacje';

  @override
  String get simNotSet => 'Nie ustawiono';

  @override
  String get ringtoneDefault => 'Domyślny';

  @override
  String get customRingtone => 'Zwyczaj';

  @override
  String get aboutSection => 'O';

  @override
  String get aboutFeedbackSection => 'Informacje i opinie';

  @override
  String get aboutDescription =>
      'Nothing Dialer jest oprogramowaniem typu open source. Jeśli jesteś programistą, możesz eksplorować kod i wnosić swój wkład.';

  @override
  String get aboutViewSource => 'Zobacz na GitHubie';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Nie można otworzyć linku';

  @override
  String get reviewSection => 'Recenzja';

  @override
  String get reviewDescription =>
      'Cieszący się niczym dialer? Twoja ocena w Google Play pomoże innym znaleźć aplikację.';

  @override
  String get reviewRateOnPlay => 'Oceń w Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Nie można otworzyć Google Play';

  @override
  String get breathSpeed => 'Szybkość oddechu';

  @override
  String get breathSpeedBlinkHint =>
      'Niższy = mrugnięcie, wyższy = powolny oddech';

  @override
  String get speedSliderHint => 'Niższy = Szybciej, Wyżej = Wolniej';

  @override
  String get swatchDefault => 'Domyślny';

  @override
  String get customAccentColorPicker => 'Niestandardowy kolor akcentu';

  @override
  String get customLightBackgroundPicker => 'Niestandardowe jasne tło';

  @override
  String get customDarkBackgroundPicker => 'Niestandardowe ciemne tło';

  @override
  String get customCallBackgroundPicker => 'Niestandardowe tło połączenia';

  @override
  String get ongoingCallStyleTitle => 'Styl rozmów ciągłych';

  @override
  String get glyphMapUnavailable => 'Mapa glifów jest niedostępna';

  @override
  String get animationDelayRange => 'Opóźnienie animacji (1 s - 10 s)';

  @override
  String get animationDelayRangeSingle => 'Opóźnienie animacji (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Niemy';

  @override
  String get inCallKeypad => 'Klawiatura';

  @override
  String get inCallSpeaker => 'Głośnik';

  @override
  String get inCallMore => 'Więcej';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefon';

  @override
  String get inCallAddCall => 'Dodaj połączenie';

  @override
  String get inCallChangeSim => 'Zmień kartę SIM';

  @override
  String get inCallDecline => 'Spadek';

  @override
  String get inCallAnswer => 'Odpowiedź';

  @override
  String get inCallMessage => 'Wiadomość';

  @override
  String get inCallCalling => 'Powołanie…';

  @override
  String get inCallIncoming => 'Połączenie przychodzące';

  @override
  String get inCallSelectSim => 'Wybierz kartę SIM…';

  @override
  String get inCallSwitchingSim => 'Przełączanie karty SIM…';

  @override
  String get inCallCallEnded => 'Połączenie zostało zakończone';

  @override
  String inCallCallingVia(String sim) {
    return 'Dzwoniąc przez $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Dzwonienie przez <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Wybierz kartę SIM dla tego połączenia';

  @override
  String get inCallDragAnswerDecline =>
      'Przeciągnij w prawo, aby odebrać · Przeciągnij w lewo, aby odmówić';

  @override
  String inCallMobileNumber(String number) {
    return 'Telefon komórkowy $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (bieżący)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Zadzwoń pod numer <b>$sim</b> z';
  }

  @override
  String get inCallCallFrom => 'Zadzwoń z';

  @override
  String get inCallUnknown => 'Nieznany';

  @override
  String get selectContactRingtone => 'Wybierz dzwonek kontaktu';

  @override
  String get speakToSearchPrompt => 'Mów, aby wyszukać';

  @override
  String get phonePermissionRequired => 'Wymagane pozwolenie na telefon';

  @override
  String callFailed(String error) {
    return 'Połączenie nie powiodło się: $error';
  }

  @override
  String get callPermissionDenied => 'Odmowa pozwolenia na połączenie';

  @override
  String get alreadyDefaultDialer => 'Już ustawiony jako domyślny dialer';

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
