// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Nichts Dialer';

  @override
  String get settings => 'Einstellungen';

  @override
  String get settingsSearchHint => 'Sucheinstellungen';

  @override
  String get settingsSearchNoResults => 'Keine Einstellungen gefunden';

  @override
  String get general => 'Allgemein';

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
  String get theme => 'Design';

  @override
  String get themeSystemDefault => 'Systemstandard';

  @override
  String get themeLight => 'Licht';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get themeFollowSystem => 'Befolgen Sie die Systemeinstellungen';

  @override
  String get themeAlwaysLight => 'Verwenden Sie immer ein helles Thema';

  @override
  String get themeAlwaysDark => 'Verwenden Sie immer ein dunkles Thema';

  @override
  String get language => 'Sprache';

  @override
  String get languageDeviceDefault => 'Gerätestandard';

  @override
  String get languagePickerTitle => 'Sprache';

  @override
  String get languageSearchHint => 'Sprachen suchen';

  @override
  String get font => 'Schriftart';

  @override
  String get fontSystem => 'Systemstandard';

  @override
  String get fontNdot => 'Nichts (NDot)';

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
      'Der Download der Schriftart ist fehlgeschlagen. Überprüfen Sie Ihre Verbindung und versuchen Sie es erneut.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Schriftart';

  @override
  String get fontPreviewSample => 'Nichts Dialer';

  @override
  String get fontAppWide => 'App-Schriftart';

  @override
  String get fontApplyTo => 'Gelten';

  @override
  String get fontApplyEntireApp => 'Gesamte App';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Überall die gleiche Schriftart, auch während des Anrufs';

  @override
  String get fontApplyTitlesOnly => 'Titel und Überschriften';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Nur große Titel und Abschnittsüberschriften';

  @override
  String get fontApplyCustomize => 'Anpassen';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Wählen Sie die Schriftart pro Bildschirm und Texttyp aus';

  @override
  String get fontCustomizeSection => 'Anpassen nach Bildschirm';

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
  String get fontRolePageTitle => 'Seitentitel';

  @override
  String get fontRoleSectionHeader => 'Abschnittsüberschrift';

  @override
  String get fontRolePrimary => 'Primärtext';

  @override
  String get fontRoleSecondary => 'Sekundärtext';

  @override
  String get fontRoleButton => 'Knöpfe';

  @override
  String get fontRoleDialKey => 'Wähltasten';

  @override
  String get fontSurfaceRecents => 'Neueste';

  @override
  String get fontSurfaceContacts => 'Kontakte';

  @override
  String get fontSurfaceSettings => 'Einstellungen';

  @override
  String get fontSurfaceDialpad => 'Wähltastatur';

  @override
  String get fontSurfaceShell => 'Navigation';

  @override
  String get fontSurfaceDefaultDialer => 'Standard-Dialer-Eingabeaufforderung';

  @override
  String get fontSurfaceFavourites => 'Favoriten';

  @override
  String get fontSurfaceBlocked => 'Gesperrte Nummern';

  @override
  String get fontSurfaceContactDetail => 'Kontaktdaten';

  @override
  String get fontSurfaceCallHistory => 'Anrufverlauf';

  @override
  String get fontSurfaceSheets => 'Blätter und Pflücker';

  @override
  String get fontSurfaceInCall => 'Bildschirm während des Anrufs';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font – gesamte App';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font – nur Titel';
  }

  @override
  String get fontSubtitleCustomize => 'Benutzerdefiniert pro Bildschirm';

  @override
  String get background => 'Hintergrund';

  @override
  String get accent => 'Akzent';

  @override
  String get lightBackground => 'Heller Hintergrund';

  @override
  String get lightAccent => 'Leichter Akzent';

  @override
  String get darkBackground => 'Dunkler Hintergrund';

  @override
  String get darkAccent => 'Dunkler Akzent';

  @override
  String get callBackground => 'Anrufhintergrund';

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
  String get appIcon => 'App-Symbol';

  @override
  String get answerMethod => 'Antwortmethode';

  @override
  String get answerSlide => 'Zur Antwort schieben';

  @override
  String get answerSlideSubtitle =>
      'Wischen Sie auf der Leiste nach links/rechts, wie bei Google Phone';

  @override
  String get answerButton => 'Tastendruck';

  @override
  String get answerButtonSubtitle =>
      'Tippen Sie auf die Schaltflächen „Antworten“ oder „Ablehnen“.';

  @override
  String get answerHuawei => 'Huawei-Stil';

  @override
  String get answerHuaweiSubtitle =>
      'Ziehen Sie den Kreis zum grünen Telefon, um zu antworten';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei – auf Grün/Rot ziehen';

  @override
  String get calling => 'Berufung';

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
  String get defaultSim => 'Standard-SIM';

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
  String get askEveryTime => 'Fragen Sie jedes Mal';

  @override
  String get askEveryTimeSubtitle => 'SIM-Auswahl vor jedem Anruf anzeigen';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Keine SIM-Karten gefunden';

  @override
  String couldNotLoadSims(String error) {
    return 'SIMs konnten nicht geladen werden: $error';
  }

  @override
  String get allFavourites => 'Alle Favoriten';

  @override
  String get allFavouritesSubtitle =>
      'Ordnen Sie Kontakte neu an, entfernen Sie sie und fügen Sie sie hinzu';

  @override
  String get blockedNumbers => 'Gesperrte Nummern';

  @override
  String get blockedNumbersSubtitle => 'Nummern anzeigen und entsperren';

  @override
  String get soundsAndVibration => 'Geräusche und Vibration';

  @override
  String get soundsAndVibrationSubtitle =>
      'Klingelton, Vibration, Wähltastentöne';

  @override
  String couldNotOpenSettings(String error) {
    return 'Einstellungen konnten nicht geöffnet werden: $error';
  }

  @override
  String get frequentlyContacted => 'Häufig kontaktiert';

  @override
  String get numberOfRecords => 'Anzahl der Datensätze';

  @override
  String get timePeriod => 'Zeitraum';

  @override
  String get periodLast24Hours => 'Letzte 24 Stunden';

  @override
  String get periodLast24HoursSubtitle => 'Anrufe vom letzten Tag';

  @override
  String get periodLast7Days => 'Letzte 7 Tage';

  @override
  String get periodLast7DaysSubtitle => 'Anrufe der letzten Woche';

  @override
  String get periodLast30Days => 'Letzte 30 Tage';

  @override
  String get periodLast30DaysSubtitle => 'Anrufe aus dem letzten Monat';

  @override
  String get periodLast12Months => 'Letzte 12 Monate';

  @override
  String get periodLast12MonthsSubtitle => 'Anrufe aus dem letzten Jahr';

  @override
  String get periodAllTime => 'Alle Zeiten';

  @override
  String get periodAllTimeSubtitle => 'Gesamte Anrufhistorie';

  @override
  String get frequentMaxOff => 'Aus';

  @override
  String frequentMaxCount(int count) {
    return '$count Kontakte';
  }

  @override
  String get torchBlink => 'Fackelblinzeln';

  @override
  String get torchIncomingCall => 'Taschenlampe für eingehende Anrufe';

  @override
  String get torchOutgoingCall => 'Taschenlampe für ausgehende Anrufe';

  @override
  String get torchOngoingCall => 'Laufende Anruffackel';

  @override
  String get torchIncomingInterval => 'Eingehendes Blinkintervall';

  @override
  String get torchOutgoingInterval => 'Ausgehendes Blinkintervall';

  @override
  String get torchOngoingInterval => 'Laufendes Blinkintervall';

  @override
  String get torchOff => 'Aus';

  @override
  String get torchOffIncomingSubtitle => 'Keine Taschenlampe beim Klingeln';

  @override
  String get torchOffOutgoingSubtitle => 'Keine Taschenlampe beim Wählen';

  @override
  String get torchOffOngoingSubtitle =>
      'Keine Taschenlampe während des aktiven Anrufs';

  @override
  String get torchFixedInterval => 'Festes Intervall';

  @override
  String get torchFixedIntervalSubtitle =>
      'Blinken Sie mit einer festgelegten Geschwindigkeit';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds blinken';
  }

  @override
  String get flashlightUnavailable =>
      'Taschenlampe ist auf diesem Gerät nicht verfügbar';

  @override
  String get glyphLights => 'Glyphenlichter';

  @override
  String get glyphCallingAnimation => 'Animation zum Aufrufen von Glyphen';

  @override
  String get glyphOngoingAnimation => 'Glyph-Animation für laufende Anrufe';

  @override
  String get glyphNone => 'Keiner';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Deaktivieren Sie die Glyph-Leuchten für ausgehende Anrufe';

  @override
  String get glyphNoneInCallSubtitle =>
      'Deaktivieren Sie die Glyph-Lichter, während Sie aktiv im Gespräch sind';

  @override
  String get glyphBreathProgress => 'Atem und Fortschritt';

  @override
  String get glyphBreathProgressSubtitle =>
      'Die Lichter atmen, während sich die Schlange über 65 Sekunden füllt';

  @override
  String get glyphAccumulate => 'Akkumulieren';

  @override
  String get glyphAccumulateSubtitle =>
      'Anhäufende Animation auf den Lichtern C1–C4';

  @override
  String get glyphSingle => 'Einzel';

  @override
  String get glyphSingleSubtitle =>
      'Einzelnes Licht, das sich über C1-C4 bewegt';

  @override
  String get glyphBreath => 'Atem';

  @override
  String get glyphBreathSubtitle => 'Wählen Sie Licht und Geschwindigkeit';

  @override
  String get glyphSteady => 'Stetig';

  @override
  String get glyphSteadySubtitle => 'Ausgewählte Lichter bleiben an';

  @override
  String get breathSettings => 'Atemeinstellungen';

  @override
  String get activeLights => 'Aktive Lichter';

  @override
  String lightsCount(int count) {
    return '$count leuchtet';
  }

  @override
  String get speedSettings => 'Geschwindigkeitseinstellungen';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms Verzögerung';
  }

  @override
  String get durationAndSpeed => 'Dauer und Geschwindigkeit';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s Dauer, ${interval}ms Intervall';
  }

  @override
  String get cancel => 'Stornieren';

  @override
  String get done => 'Erledigt';

  @override
  String get save => 'Speichern';

  @override
  String get block => 'Block';

  @override
  String get delete => 'Löschen';

  @override
  String get recents => 'Zuletzt';

  @override
  String get contacts => 'Kontakte';

  @override
  String get hideFavouritesOnRecents => 'Favoriten in „Neueste“ ausblenden';

  @override
  String get showFavouritesOnRecents => 'Favoriten unter „Neueste“ anzeigen';

  @override
  String get ongoingCall => 'Laufender Anruf';

  @override
  String get setAsDefaultTitle => 'EINSTELLEN ALS\nSTANDARD';

  @override
  String get setAsDefaultBody =>
      'Um Nothing Dialer verwenden zu können, muss es als Ihre Standard-Telefon-App festgelegt werden. Auf diese Weise können Sie Anrufe verwalten, den Verlauf anzeigen und Glyph-Animationen verwenden.';

  @override
  String get setAsDefaultButton => 'ALS STANDARD EINSTELLEN';

  @override
  String get nothingDialerBrand => 'NICHTS DIALER 1';

  @override
  String get favourites => 'Favoriten';

  @override
  String get addFavourite => 'Favorit hinzufügen';

  @override
  String get favouritesDrawerHint =>
      'Verwenden Sie das Menü, um Kontakte hinzuzufügen. Tippen Sie außerhalb der Schublade oder wischen Sie sie zu. Markieren Sie einen Kontakt in seinen Details oder drücken Sie lange auf einen Anruf in „Letzte“.';

  @override
  String get menu => 'Speisekarte';

  @override
  String get noFavouritesYet =>
      'Noch keine Favoriten.\nÖffnen Sie das Menü, um einen Kontakt hinzuzufügen oder einen Kontakt zu markieren.';

  @override
  String get contactsPermissionNeeded => 'Kontaktberechtigung erforderlich';

  @override
  String get chooseContact => 'Wählen Sie Kontakt';

  @override
  String get noPhone => 'Kein Telefon';

  @override
  String get pickNumber => 'Nummer auswählen';

  @override
  String get contactHasNoPhone => 'Dieser Kontakt hat keine Telefonnummer';

  @override
  String get blockNumber => 'Blocknummer';

  @override
  String get enterPhoneNumber => 'Geben Sie die Telefonnummer ein';

  @override
  String unblockedDisplay(String display) {
    return 'Entsperrt $display';
  }

  @override
  String get couldNotUnblockNumber =>
      'Die Nummer konnte nicht entsperrt werden';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blockiert • $matched abgeglichen';
  }

  @override
  String get contactsPermissionMissing =>
      'Berechtigung für Kontakte fehlt. Zum Korrigieren tippen.';

  @override
  String get noBlockedNumbers => 'Keine gesperrten Nummern';

  @override
  String get unknownContact => 'Unbekannter Kontakt';

  @override
  String get unblock => 'Entsperren';

  @override
  String get permissionNeeded => 'Erlaubnis erforderlich';

  @override
  String get grantPhonePermission =>
      'Erteilen Sie telefonisch die Erlaubnis, Ihren Anrufverlauf anzuzeigen.';

  @override
  String get grantContactsPermission =>
      'Erteilen Sie Kontakten die Berechtigung, Ihr Adressbuch anzuzeigen.';

  @override
  String get openSettings => 'Öffnen Sie Einstellungen';

  @override
  String get tryAgain => 'Versuchen Sie es erneut';

  @override
  String get couldNotLoadContacts => 'Kontakte konnten nicht geladen werden';

  @override
  String get contactsLoadError =>
      'Beim Lesen Ihres Adressbuchs ist ein Fehler aufgetreten.';

  @override
  String get noContactsFound => 'Keine Kontakte gefunden';

  @override
  String get contactsEmptySubtitle =>
      'Hier werden die Kontakte von Ihrem Gerät angezeigt.';

  @override
  String get searchContacts => 'Kontakte suchen…';

  @override
  String get searchRecentCalls => 'Durchsuchen Sie die letzten Anrufe';

  @override
  String get fromContacts => 'Von Kontakten';

  @override
  String get recentsSearchSection => 'Letzte Suche';

  @override
  String get recentsSearchShowContacts => 'Kontakte in der Suche anzeigen';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Zeigen Sie bei der Suche nach „Letzte“ auch übereinstimmende Personen aus Ihrem Adressbuch unter den Ergebnissen der Anrufliste an.';

  @override
  String get voiceSearch => 'Sprachsuche';

  @override
  String get createNewContact => 'Neuen Kontakt erstellen';

  @override
  String callError(String error) {
    return 'Anruffehler: $error';
  }

  @override
  String get noRecentCalls => 'Keine aktuellen Anrufe';

  @override
  String get callHistoryEmpty => 'Ihr Anrufverlauf wird hier angezeigt.';

  @override
  String get loadMore => 'Mehr laden';

  @override
  String get frequentlyContactedHeader => 'Häufig kontaktiert';

  @override
  String get recentHistory => 'Jüngste Geschichte';

  @override
  String get noFavouritesRecentsHint =>
      'Noch keine Favoriten. Markieren Sie einen Kontakt, drücken Sie lange auf einen Anruf oder verwenden Sie die Registerkarte „Favoriten“.';

  @override
  String get copyNumber => 'Nummer kopieren';

  @override
  String get editNumberBeforeCall => 'Bearbeiten Sie die Nummer vor dem Anruf';

  @override
  String get removeFromFavourites => 'Aus Favoriten entfernen';

  @override
  String get addToFavourites => 'Zu Favoriten hinzufügen';

  @override
  String get blockNumberQuestion => 'Nummer sperren?';

  @override
  String blockNumberConfirm(String number) {
    return 'Ab $number erhalten Sie keine Anrufe oder SMS mehr.';
  }

  @override
  String get blocked => 'Blockiert';

  @override
  String get couldNotBlock => 'Konnte nicht blockiert werden';

  @override
  String get contactNotOnDevice =>
      'Der Kontakt wurde auf diesem Gerät nicht gespeichert';

  @override
  String get unblocked => 'Entsperrt';

  @override
  String get numberCopied => 'Nummer kopiert';

  @override
  String get showLess => 'Weniger anzeigen';

  @override
  String get showAllTimes => 'Alle Zeiten anzeigen';

  @override
  String mostRecent(String time) {
    return 'Neueste · $time';
  }

  @override
  String get videoCall => 'Videoanruf';

  @override
  String get couldNotPlaceVideoCall =>
      'Videoanruf konnte nicht getätigt werden';

  @override
  String get message => 'Nachricht';

  @override
  String get couldNotOpenMessaging =>
      'Die Messaging-App konnte nicht geöffnet werden';

  @override
  String get history => 'Geschichte';

  @override
  String get viewContact => 'Kontakt anzeigen';

  @override
  String get addToContact => 'Zum Kontakt hinzufügen';

  @override
  String get callTypeMissed => 'Verpasst';

  @override
  String get callTypeRejected => 'Abgelehnt';

  @override
  String get callTypeIncoming => 'Eingehend';

  @override
  String get callTypeOutgoing => 'Ausgehend';

  @override
  String get today => 'Heute';

  @override
  String get yesterday => 'Gestern';

  @override
  String get justNow => 'Gerade eben';

  @override
  String minutesAgo(int count) {
    return 'Vor $count Minuten';
  }

  @override
  String hoursAgo(int count) {
    return 'Vor $count Stunden';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterMissed => 'Verpasst';

  @override
  String get filterContacts => 'Kontakte';

  @override
  String get filterNonContacts => 'Keine Kontakte';

  @override
  String get iconUpdated =>
      'Symbol aktualisiert. Es kann einen Moment dauern, bis Ihr Startbildschirm aktualisiert ist.';

  @override
  String get iconSavedRelease =>
      'Auswahl gespeichert. Das Startbildschirmsymbol wird in Release-Builds aktualisiert.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Symbol konnte nicht geändert werden: $error';
  }

  @override
  String get launcherClassicBlack => 'Klassisch (schwarz)';

  @override
  String get launcherLight => 'Licht';

  @override
  String get launcherNothingRed => 'Nichts Rotes';

  @override
  String get launcherDarkGrey => 'Dunkelgrau';

  @override
  String get launcherCream => 'Creme';

  @override
  String get launcherRetroPhone => 'Retro-Telefon';

  @override
  String get launcherRetroPhoneLight => 'Retro-Telefon (leicht)';

  @override
  String get voiceSearchUnavailable =>
      'Die Sprachsuche ist auf diesem Gerät nicht verfügbar.';

  @override
  String voiceSearchFailed(String error) {
    return 'Sprachsuche fehlgeschlagen: $error';
  }

  @override
  String get customColor => 'Brauch';

  @override
  String get selectColor => 'Farbe auswählen';

  @override
  String get reset => 'Zurücksetzen';

  @override
  String get simPickerTitle => 'Wählen Sie SIM';

  @override
  String get simChooseForCall => 'Wählen Sie SIM für diesen Anruf';

  @override
  String get defaultSimAsk => 'Fragen Sie jedes Mal';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Kontaktdaten';

  @override
  String get call => 'Anruf';

  @override
  String get share => 'Aktie';

  @override
  String get favourite => 'Favorit';

  @override
  String get unfavourite => 'Unfavorit';

  @override
  String get blockContact => 'Kontakt blockieren';

  @override
  String get unblockContact => 'Kontakt entsperren';

  @override
  String get deleteContact => 'Kontakt löschen';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'E-Mail';

  @override
  String get ringtone => 'Klingelton';

  @override
  String get defaultRingtone => 'Standard';

  @override
  String get simForContact => 'SIM für diesen Kontakt';

  @override
  String get callHistoryTitle => 'Anrufverlauf';

  @override
  String get noCallsWithNumber => 'Keine Anrufe mit dieser Nummer';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyphenanimation';

  @override
  String get inCallGlyphAnimationStyle => 'Glyph-Animation während des Anrufs';

  @override
  String get recordsOff => 'Aus';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Standard-SIM';

  @override
  String get nothingPhoneOnly => 'Nichts, nur Telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph-Funktionen erfordern ein Nothing Phone';

  @override
  String get custom => 'Benutzerdefiniert';

  @override
  String presetColorHex(String hex) {
    return 'Voreinstellung · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Benutzerdefiniert · $hex';
  }

  @override
  String get oneContact => '1 Kontakt';

  @override
  String upToContacts(int count) {
    return 'Bis zu $count Kontakte';
  }

  @override
  String get answerButtonTapSubtitle =>
      'Tippen Sie auf die Schaltfläche, um zu antworten';

  @override
  String get filterCalls => 'Anrufe filtern';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'Einstellungen';

  @override
  String get filterAllSubtitle => 'Gesamtes Anrufprotokoll';

  @override
  String get filterMissedSubtitle => 'Verpasst und abgelehnt';

  @override
  String get filterContactsSubtitle =>
      'Anrufe, die einem gespeicherten Kontakt zugeordnet sind';

  @override
  String get filterNonContactsSubtitle => 'Nummern nicht in Ihrem Adressbuch';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Laufender Anruf: $detail';
  }

  @override
  String get defaultSimForCalls => 'Standard-SIM für Anrufe';

  @override
  String get blinkInterval => 'Blinkintervall';

  @override
  String get close => 'Schließen';

  @override
  String get frequentlyContactedInfoBody =>
      'Zeigt Ihre am häufigsten angerufenen Telefonnummern oben auf der Registerkarte „Letzte“ an, basierend darauf, wie viele eingehende, ausgehende, verpasste oder abgelehnte Anrufe Sie mit jeder Nummer in dem von Ihnen gewählten Zeitraum hatten.\n\nAnzahl der Datensätze: Auf 0 setzen, um dies zu deaktivieren. Verwenden Sie 1–20, um so viele Top-Kontakte anzuzeigen.\n\nDer Zeitraum gilt nur, wenn mindestens ein Kontakt angezeigt wird.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count Lichter, ${ms}ms Geschwindigkeit';
  }

  @override
  String get deleteContactQuestion => 'Kontakt löschen?';

  @override
  String get deleteContactBody =>
      'Dieser Kontakt wird dauerhaft von Ihrem Gerät gelöscht.';

  @override
  String get blockContactQuestion => 'Kontakt blockieren?';

  @override
  String get unblockContactQuestion => 'Kontakt entsperren?';

  @override
  String get blockContactBody =>
      'Sie erhalten von diesem Kontakt keine Anrufe oder SMS mehr.';

  @override
  String get unblockContactBody =>
      'Sie erhalten Anrufe und SMS von diesem Kontakt.';

  @override
  String get contactBlocked => 'Kontakt blockiert';

  @override
  String get contactUnblocked => 'Kontakt entsperrt';

  @override
  String get noPhoneNumbersToBlock => 'Keine Telefonnummern zum Blockieren';

  @override
  String get simSameAsSystem => 'Dasselbe wie System';

  @override
  String get simSameAsSystemSubtitle =>
      'Folgt der Standard-SIM-Karte in den Einstellungen';

  @override
  String get simAskEveryTimeForContact =>
      'SIM-Auswahl für diesen Kontakt immer anzeigen';

  @override
  String get ringtoneSetForContact =>
      'Global eingestellter Klingelton für diesen Kontakt';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Klingelton konnte nicht ausgewählt werden: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Fehler: $error';
  }

  @override
  String get noCallHistoryFound => 'Keine Anrufliste gefunden';

  @override
  String get speedDialVoicemail => 'Kurzwahl: Voicemail';

  @override
  String shareContactSubject(String name) {
    return 'Kontakt: $name';
  }

  @override
  String get contactInfo => 'Kontaktinformationen';

  @override
  String get dontAskAgainSim => 'Fragen Sie nicht noch einmal';

  @override
  String get simDontAskAgainSubtitle =>
      'Diese SIM-Karte als Standard verwenden (Änderung in den Einstellungen)';

  @override
  String get addContact => 'Kontakt hinzufügen';

  @override
  String get createContact => 'Kontakt erstellen';

  @override
  String get paste => 'Paste';

  @override
  String get clear => 'Klar';

  @override
  String get returnToCall => 'Zurück zum Anruf';

  @override
  String get numberOfRecordsTitle => 'Anzahl der Datensätze';

  @override
  String get recordsPickerSubtitle =>
      'Wie viele häufig kontaktierte Einträge werden angezeigt (0 = aus)';

  @override
  String get torchInfoTitle => 'Taschenlampe blinkt';

  @override
  String get torchInfoBody =>
      'Der Kamerablitz blinkt bei eingehenden, ausgehenden oder laufenden Anrufen. Unabhängig von Glyph-Lichtern.';

  @override
  String get glyphMapTitle => 'Glyphen-Layout';

  @override
  String get glyphMapBody =>
      'Nothing Phone 1 Glyph LED-Zonen. Ausgehende und eingehende Anrufanimationen nutzen diese Kanäle.';

  @override
  String get answerMethodTitle => 'Antwortmethode';

  @override
  String get glyphOutgoingCallStyleTitle => 'Stil für ausgehende Anrufe';

  @override
  String get glyphInCallAnimationTitle => 'Glyphen-In-Call-Animation';

  @override
  String get themePickerTitle => 'Thema';

  @override
  String get torchIncomingTitle => 'Taschenlampe für eingehende Anrufe';

  @override
  String get torchOutgoingTitle => 'Taschenlampe für ausgehende Anrufe';

  @override
  String get torchOngoingTitle => 'Laufende Anruffackel';

  @override
  String get timePeriodTitle => 'Zeitraum';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Diesen Anruf aus dem Verlauf löschen?';

  @override
  String get confirmDeleteAllCalls => 'Alle Anrufe mit dieser Nummer löschen?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Senden Sie eine Nachricht';

  @override
  String get addToExistingContactAction => 'Zu einem Kontakt hinzufügen';

  @override
  String get mobileLabel => 'Mobile';

  @override
  String get callingSimForContactTitle =>
      'SIM-Karte für diesen Kontakt anrufen';

  @override
  String get contactSettings => 'Kontakteinstellungen';

  @override
  String get setCallingSim => 'Anruf-SIM einstellen';

  @override
  String get contactRingtone => 'Kontaktklingelton';

  @override
  String get shareContact => 'Kontakt teilen';

  @override
  String get blockNumbers => 'Nummern blockieren';

  @override
  String get unblockNumbers => 'Nummern entsperren';

  @override
  String get connectedApps => 'Verbundene Apps';

  @override
  String get simNotSet => 'Nicht festgelegt';

  @override
  String get ringtoneDefault => 'Standard';

  @override
  String get customRingtone => 'Brauch';

  @override
  String get aboutSection => 'Über';

  @override
  String get aboutFeedbackSection => 'Über & Feedback';

  @override
  String get aboutDescription =>
      'Nothing Dialer ist Open Source. Als Entwickler kannst du den Code erkunden und mitwirken.';

  @override
  String get aboutViewSource => 'Auf GitHub ansehen';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Link konnte nicht geöffnet werden';

  @override
  String get reviewSection => 'Bewertung';

  @override
  String get reviewDescription =>
      'Gefällt dir Nothing Dialer? Deine Bewertung bei Google Play hilft anderen, die App zu finden.';

  @override
  String get reviewRateOnPlay => 'Bei Google Play bewerten';

  @override
  String get reviewRateOnPlaySubtitle => 'Öffnet den Play Store-Eintrag';

  @override
  String get reviewCouldNotOpen => 'Google Play konnte nicht geöffnet werden';

  @override
  String get breathSpeed => 'Atemgeschwindigkeit';

  @override
  String get breathSpeedBlinkHint =>
      'Niedriger = Blinzeln, höher = langsamer Atem';

  @override
  String get speedSliderHint => 'Niedriger = schneller, höher = langsamer';

  @override
  String get swatchDefault => 'Standard';

  @override
  String get customAccentColorPicker => 'Benutzerdefinierte Akzentfarbe';

  @override
  String get customLightBackgroundPicker =>
      'Benutzerdefinierter heller Hintergrund';

  @override
  String get customDarkBackgroundPicker =>
      'Benutzerdefinierter dunkler Hintergrund';

  @override
  String get customCallBackgroundPicker =>
      'Benutzerdefinierter Anrufhintergrund';

  @override
  String get ongoingCallStyleTitle => 'Laufender Anrufstil';

  @override
  String get glyphMapUnavailable => 'Glyphenkarte nicht verfügbar';

  @override
  String get animationDelayRange => 'Animationsverzögerung (1s – 10s)';

  @override
  String get animationDelayRangeSingle =>
      'Animationsverzögerung (0,1 s – 10 s)';

  @override
  String get inCallMute => 'Stumm';

  @override
  String get inCallKeypad => 'Tastatur';

  @override
  String get inCallSpeaker => 'Lautsprecher';

  @override
  String get inCallMore => 'Mehr';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefon';

  @override
  String get inCallAddCall => 'Anruf hinzufügen';

  @override
  String get inCallChangeSim => 'SIM wechseln';

  @override
  String get inCallDecline => 'Ablehnen';

  @override
  String get inCallAnswer => 'Annehmen';

  @override
  String get inCallMessage => 'Nachricht';

  @override
  String get inCallCalling => 'Wird angerufen…';

  @override
  String get inCallIncoming => 'Eingehender Anruf';

  @override
  String get inCallSelectSim => 'SIM wählen…';

  @override
  String get inCallSwitchingSim => 'SIM wird gewechselt…';

  @override
  String get inCallCallEnded => 'Anruf beendet';

  @override
  String inCallCallingVia(String sim) {
    return 'Anruf über $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Anruf über <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'SIM für diesen Anruf wählen';

  @override
  String get inCallDragAnswerDecline =>
      'Nach rechts zum Annehmen · Nach links zum Ablehnen';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label  (Aktiv)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Anruf über <b>$sim</b> von';
  }

  @override
  String get inCallCallFrom => 'Anruf von';

  @override
  String get inCallUnknown => 'Unbekannt';

  @override
  String get selectContactRingtone => 'Kontaktton wählen';

  @override
  String get speakToSearchPrompt => 'Zum Suchen sprechen';

  @override
  String get phonePermissionRequired => 'Telefonberechtigung erforderlich';

  @override
  String callFailed(String error) {
    return 'Anruf fehlgeschlagen: $error';
  }

  @override
  String get callPermissionDenied => 'Anrufberechtigung verweigert';

  @override
  String get alreadyDefaultDialer => 'Bereits Standard-Telefon-App';

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
