// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Niente Dialer';

  @override
  String get settings => 'Impostazioni';

  @override
  String get settingsSearchHint => 'Impostazioni di ricerca';

  @override
  String get settingsSearchNoResults => 'Nessuna impostazione trovata';

  @override
  String get general => 'Generale';

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
  String get theme => 'Tema';

  @override
  String get themeSystemDefault => 'Predefinito del sistema';

  @override
  String get themeLight => 'Leggero';

  @override
  String get themeDark => 'Buio';

  @override
  String get themeFollowSystem => 'Segui le impostazioni di sistema';

  @override
  String get themeAlwaysLight => 'Utilizza sempre il tema chiaro';

  @override
  String get themeAlwaysDark => 'Utilizza sempre il tema scuro';

  @override
  String get language => 'Lingua';

  @override
  String get languageDeviceDefault =>
      'Impostazione predefinita del dispositivo';

  @override
  String get languagePickerTitle => 'Lingua';

  @override
  String get languageSearchHint => 'Cerca lingue';

  @override
  String get font => 'Font';

  @override
  String get fontSystem => 'Predefinito del sistema';

  @override
  String get fontNdot => 'Niente (NDot)';

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
      'Download del carattere non riuscito. Controlla la connessione e riprova.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Font';

  @override
  String get fontPreviewSample => 'Niente Dialer';

  @override
  String get fontAppWide => 'Carattere dell\'app';

  @override
  String get fontApplyTo => 'Candidati a';

  @override
  String get fontApplyEntireApp => 'Intera app';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Stesso carattere ovunque, anche durante le chiamate';

  @override
  String get fontApplyTitlesOnly => 'Titoli e intestazioni';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Solo titoli di grandi dimensioni e intestazioni di sezione';

  @override
  String get fontApplyCustomize => 'Personalizza';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Scegli il carattere per lo schermo e il tipo di testo';

  @override
  String get fontCustomizeSection => 'Personalizza per schermata';

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
  String get fontRolePageTitle => 'Titolo della pagina';

  @override
  String get fontRoleSectionHeader => 'Intestazione della sezione';

  @override
  String get fontRolePrimary => 'Testo primario';

  @override
  String get fontRoleSecondary => 'Testo secondario';

  @override
  String get fontRoleButton => 'Pulsanti';

  @override
  String get fontRoleDialKey => 'Tasti della tastiera';

  @override
  String get fontSurfaceRecents => 'Recenti';

  @override
  String get fontSurfaceContacts => 'Contatti';

  @override
  String get fontSurfaceSettings => 'Impostazioni';

  @override
  String get fontSurfaceDialpad => 'Tastierino';

  @override
  String get fontSurfaceShell => 'Navigazione';

  @override
  String get fontSurfaceDefaultDialer =>
      'Richiesta di composizione predefinita';

  @override
  String get fontSurfaceFavourites => 'Preferiti';

  @override
  String get fontSurfaceBlocked => 'Numeri bloccati';

  @override
  String get fontSurfaceContactDetail => 'Dettagli del contatto';

  @override
  String get fontSurfaceCallHistory => 'Cronologia delle chiamate';

  @override
  String get fontSurfaceSheets => 'Fogli e raccoglitori';

  @override
  String get fontSurfaceInCall => 'Schermata durante la chiamata';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font: intera app';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font: solo titoli';
  }

  @override
  String get fontSubtitleCustomize => 'Personalizzato per schermo';

  @override
  String get background => 'Sfondo';

  @override
  String get accent => 'Accento';

  @override
  String get lightBackground => 'Sfondo chiaro';

  @override
  String get lightAccent => 'Accento leggero';

  @override
  String get darkBackground => 'Sfondo scuro';

  @override
  String get darkAccent => 'Accento scuro';

  @override
  String get callBackground => 'Sfondo della chiamata';

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
  String get appIcon => 'Icona dell\'app';

  @override
  String get answerMethod => 'Metodo di risposta';

  @override
  String get answerSlide => 'Scorri per rispondere';

  @override
  String get answerSlideSubtitle =>
      'Scorri verso sinistra/destra sulla barra, come su Google Phone';

  @override
  String get answerButton => 'Tocco del pulsante';

  @override
  String get answerButtonSubtitle => 'Tocca i pulsanti Rispondi o Rifiuta';

  @override
  String get answerHuawei => 'Stile Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Trascina il cerchio sul telefono verde per rispondere';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei: trascina su verde/rosso';

  @override
  String get calling => 'Chiamando';

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
  String get defaultSim => 'SIM predefinita';

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
  String get askEveryTime => 'Chiedi ogni volta';

  @override
  String get askEveryTimeSubtitle =>
      'Mostra il selettore SIM prima di ogni chiamata';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Nessuna scheda SIM trovata';

  @override
  String couldNotLoadSims(String error) {
    return 'Impossibile caricare le SIM: $error';
  }

  @override
  String get allFavourites => 'Tutti i preferiti';

  @override
  String get allFavouritesSubtitle =>
      'Riordina, rimuovi e aggiungi dai contatti';

  @override
  String get blockedNumbers => 'Numeri bloccati';

  @override
  String get blockedNumbersSubtitle => 'Visualizza e sblocca i numeri';

  @override
  String get soundsAndVibration => 'Suoni e vibrazioni';

  @override
  String get soundsAndVibrationSubtitle =>
      'Suoneria, vibrazione, toni della tastiera';

  @override
  String couldNotOpenSettings(String error) {
    return 'Impossibile aprire le impostazioni: $error';
  }

  @override
  String get frequentlyContacted => 'Contattato frequentemente';

  @override
  String get numberOfRecords => 'Numero di record';

  @override
  String get timePeriod => 'Periodo di tempo';

  @override
  String get periodLast24Hours => 'Ultime 24 ore';

  @override
  String get periodLast24HoursSubtitle => 'Chiamate del giorno passato';

  @override
  String get periodLast7Days => 'Ultimi 7 giorni';

  @override
  String get periodLast7DaysSubtitle => 'Chiamate della settimana scorsa';

  @override
  String get periodLast30Days => 'Ultimi 30 giorni';

  @override
  String get periodLast30DaysSubtitle => 'Chiamate dell\'ultimo mese';

  @override
  String get periodLast12Months => 'Ultimi 12 mesi';

  @override
  String get periodLast12MonthsSubtitle => 'Chiamate dell\'anno scorso';

  @override
  String get periodAllTime => 'Tutto il tempo';

  @override
  String get periodAllTimeSubtitle => 'Intera cronologia delle chiamate';

  @override
  String get frequentMaxOff => 'Spento';

  @override
  String frequentMaxCount(int count) {
    return '$count contatti';
  }

  @override
  String get torchBlink => 'Lampeggio della torcia';

  @override
  String get torchIncomingCall => 'Torcia per chiamate in entrata';

  @override
  String get torchOutgoingCall => 'Torcia per chiamate in uscita';

  @override
  String get torchOngoingCall => 'Torcia a chiamata continua';

  @override
  String get torchIncomingInterval => 'Intervallo di ammiccamento in entrata';

  @override
  String get torchOutgoingInterval => 'Intervallo di ammiccamento in uscita';

  @override
  String get torchOngoingInterval => 'Intervallo di ammiccamento in corso';

  @override
  String get torchOff => 'Spento';

  @override
  String get torchOffIncomingSubtitle => 'Nessuna torcia mentre suona';

  @override
  String get torchOffOutgoingSubtitle =>
      'Nessuna torcia durante la composizione';

  @override
  String get torchOffOngoingSubtitle =>
      'Nessuna torcia durante la chiamata attiva';

  @override
  String get torchFixedInterval => 'Intervallo fisso';

  @override
  String get torchFixedIntervalSubtitle => 'Lampeggia a una velocità impostata';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds lampeggia';
  }

  @override
  String get flashlightUnavailable =>
      'Torcia non disponibile su questo dispositivo';

  @override
  String get glyphLights => 'Luci dei glifi';

  @override
  String get glyphCallingAnimation => 'Animazione della chiamata dei glifi';

  @override
  String get glyphOngoingAnimation =>
      'Animazione della chiamata in corso del glifo';

  @override
  String get glyphNone => 'Nessuno';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Disabilita le luci dei glifi per le chiamate in uscita';

  @override
  String get glyphNoneInCallSubtitle =>
      'Disattiva le luci dei glifi durante la chiamata';

  @override
  String get glyphBreathProgress => 'Respiro e progresso';

  @override
  String get glyphBreathProgressSubtitle =>
      'Le luci respirano mentre la fila si riempie di over 65';

  @override
  String get glyphAccumulate => 'Accumulare';

  @override
  String get glyphAccumulateSubtitle =>
      'Accumulando animazione sulle luci C1-C4';

  @override
  String get glyphSingle => 'Separare';

  @override
  String get glyphSingleSubtitle =>
      'Luce singola che si muove attraverso C1-C4';

  @override
  String get glyphBreath => 'Respiro';

  @override
  String get glyphBreathSubtitle => 'Scegli luci e velocità';

  @override
  String get glyphSteady => 'Costante';

  @override
  String get glyphSteadySubtitle => 'Le luci selezionate rimangono accese';

  @override
  String get breathSettings => 'Impostazioni del respiro';

  @override
  String get activeLights => 'Luci attive';

  @override
  String lightsCount(int count) {
    return '$count luci';
  }

  @override
  String get speedSettings => 'Impostazioni di velocità';

  @override
  String speedSettingsDelay(int ms) {
    return 'Ritardo di ${ms}ms';
  }

  @override
  String get durationAndSpeed => 'Durata e velocità';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Durata ${duration}s, intervallo ${interval}ms';
  }

  @override
  String get cancel => 'Cancellare';

  @override
  String get done => 'Fatto';

  @override
  String get save => 'Salva';

  @override
  String get block => 'Bloccare';

  @override
  String get delete => 'Eliminare';

  @override
  String get recents => 'Recenti';

  @override
  String get contacts => 'Contatti';

  @override
  String get hideFavouritesOnRecents => 'Nascondi i preferiti in Recenti';

  @override
  String get showFavouritesOnRecents => 'Mostra i preferiti su Recenti';

  @override
  String get ongoingCall => 'Chiamata in corso';

  @override
  String get setAsDefaultTitle => 'IMPOSTA COME\nPREDEFINITO';

  @override
  String get setAsDefaultBody =>
      'Per utilizzare Nothing Dialer, è necessario impostarlo come app telefonica predefinita. Ciò ti consente di gestire le chiamate, visualizzare la cronologia e utilizzare le animazioni dei glifi.';

  @override
  String get setAsDefaultButton => 'IMPOSTATO COME PREDEFINITO';

  @override
  String get nothingDialerBrand => 'NIENTE COMUNICATORE 1';

  @override
  String get favourites => 'Preferiti';

  @override
  String get addFavourite => 'Aggiungi preferito';

  @override
  String get favouritesDrawerHint =>
      'Utilizza il menu per aggiungere contatti. Tocca fuori dal cassetto o fallo scorrere per chiuderlo. Aggiungi a Speciali un contatto dai suoi dettagli o premi a lungo una chiamata in Recenti.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'Nessun preferito ancora\nApri il menu per aggiungerne uno o aggiungi un contatto a Speciali.';

  @override
  String get contactsPermissionNeeded =>
      'È necessaria l\'autorizzazione per i contatti';

  @override
  String get chooseContact => 'Scegli contatto';

  @override
  String get noPhone => 'Niente telefono';

  @override
  String get pickNumber => 'Scegli il numero';

  @override
  String get contactHasNoPhone =>
      'Questo contatto non ha un numero di telefono';

  @override
  String get blockNumber => 'Numero di blocco';

  @override
  String get enterPhoneNumber => 'Inserisci il numero di telefono';

  @override
  String unblockedDisplay(String display) {
    return 'Sbloccato $display';
  }

  @override
  String get couldNotUnblockNumber => 'Impossibile sbloccare il numero';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bloccato • $matched abbinato';
  }

  @override
  String get contactsPermissionMissing =>
      'Manca il permesso dei contatti. Tocca per risolvere.';

  @override
  String get noBlockedNumbers => 'Nessun numero bloccato';

  @override
  String get unknownContact => 'Contatto sconosciuto';

  @override
  String get unblock => 'Sbloccare';

  @override
  String get permissionNeeded => 'È necessaria l\'autorizzazione';

  @override
  String get grantPhonePermission =>
      'Concedi al telefono l\'autorizzazione per visualizzare la cronologia delle chiamate.';

  @override
  String get grantContactsPermission =>
      'Concedi ai contatti l\'autorizzazione per vedere la tua rubrica.';

  @override
  String get openSettings => 'Apri Impostazioni';

  @override
  String get tryAgain => 'Riprova';

  @override
  String get couldNotLoadContacts => 'Impossibile caricare i contatti';

  @override
  String get contactsLoadError =>
      'Qualcosa è andato storto durante la lettura della tua rubrica.';

  @override
  String get noContactsFound => 'Nessun contatto trovato';

  @override
  String get contactsEmptySubtitle =>
      'I contatti del tuo dispositivo verranno visualizzati qui.';

  @override
  String get searchContacts => 'Cerca contatti...';

  @override
  String get searchRecentCalls => 'Cerca le chiamate recenti';

  @override
  String get fromContacts => 'Dai contatti';

  @override
  String get recentsSearchSection => 'Ricerca recenti';

  @override
  String get recentsSearchShowContacts => 'Mostra i contatti nella ricerca';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Durante la ricerca di Recenti, mostra anche le persone corrispondenti dalla tua rubrica sotto i risultati della cronologia delle chiamate.';

  @override
  String get voiceSearch => 'Ricerca vocale';

  @override
  String get createNewContact => 'Crea nuovo contatto';

  @override
  String callError(String error) {
    return 'Errore di chiamata: $error';
  }

  @override
  String get noRecentCalls => 'Nessuna chiamata recente';

  @override
  String get callHistoryEmpty =>
      'La cronologia delle chiamate verrà visualizzata qui.';

  @override
  String get loadMore => 'Carica di più';

  @override
  String get frequentlyContactedHeader => 'Contattato frequentemente';

  @override
  String get recentHistory => 'Storia recente';

  @override
  String get noFavouritesRecentsHint =>
      'Nessun preferito ancora Aggiungi a Speciali un contatto, premi a lungo una chiamata o utilizza la scheda Preferiti.';

  @override
  String get copyNumber => 'Numero di copia';

  @override
  String get editNumberBeforeCall => 'Modifica il numero prima della chiamata';

  @override
  String get removeFromFavourites => 'Rimuovi dai preferiti';

  @override
  String get addToFavourites => 'Aggiungi ai preferiti';

  @override
  String get blockNumberQuestion => 'Bloccare il numero?';

  @override
  String blockNumberConfirm(String number) {
    return 'Non riceverai più chiamate o SMS da $number.';
  }

  @override
  String get blocked => 'Bloccato';

  @override
  String get couldNotBlock => 'Impossibile bloccare';

  @override
  String get contactNotOnDevice => 'Contatto non salvato su questo dispositivo';

  @override
  String get unblocked => 'Sbloccato';

  @override
  String get numberCopied => 'Numero copiato';

  @override
  String get showLess => 'Mostra meno';

  @override
  String get showAllTimes => 'Mostra tutti gli orari';

  @override
  String mostRecent(String time) {
    return 'Più recente · $time';
  }

  @override
  String get videoCall => 'Videochiamata';

  @override
  String get couldNotPlaceVideoCall =>
      'Impossibile effettuare la videochiamata';

  @override
  String get message => 'Messaggio';

  @override
  String get couldNotOpenMessaging =>
      'Impossibile aprire l\'app di messaggistica';

  @override
  String get history => 'Storia';

  @override
  String get viewContact => 'Visualizza contatto';

  @override
  String get addToContact => 'Aggiungi al contatto';

  @override
  String get callTypeMissed => 'Mancato';

  @override
  String get callTypeRejected => 'Respinto';

  @override
  String get callTypeIncoming => 'In arrivo';

  @override
  String get callTypeOutgoing => 'In uscita';

  @override
  String get today => 'Oggi';

  @override
  String get yesterday => 'Ieri';

  @override
  String get justNow => 'Proprio adesso';

  @override
  String minutesAgo(int count) {
    return '$count minuto fa';
  }

  @override
  String hoursAgo(int count) {
    return '$count ora fa';
  }

  @override
  String get filterAll => 'Tutto';

  @override
  String get filterMissed => 'Mancato';

  @override
  String get filterContacts => 'Contatti';

  @override
  String get filterNonContacts => 'Non contatti';

  @override
  String get iconUpdated =>
      'Icona aggiornata. L\'aggiornamento della schermata iniziale potrebbe richiedere qualche istante.';

  @override
  String get iconSavedRelease =>
      'Scelta salvata. L\'icona della schermata iniziale viene aggiornata nelle build di rilascio.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Impossibile cambiare l\'icona: $error';
  }

  @override
  String get launcherClassicBlack => 'Classico (nero)';

  @override
  String get launcherLight => 'Leggero';

  @override
  String get launcherNothingRed => 'Niente di rosso';

  @override
  String get launcherDarkGrey => 'Grigio scuro';

  @override
  String get launcherCream => 'Crema';

  @override
  String get launcherRetroPhone => 'Telefono retrò';

  @override
  String get launcherRetroPhoneLight => 'Telefono retrò (leggero)';

  @override
  String get voiceSearchUnavailable =>
      'La ricerca vocale non è disponibile su questo dispositivo.';

  @override
  String voiceSearchFailed(String error) {
    return 'Ricerca vocale fallita: $error';
  }

  @override
  String get customColor => 'Costume';

  @override
  String get selectColor => 'Seleziona il colore';

  @override
  String get reset => 'Reset';

  @override
  String get simPickerTitle => 'Scegli la SIM';

  @override
  String get simChooseForCall => 'Scegli la SIM per questa chiamata';

  @override
  String get defaultSimAsk => 'Chiedi ogni volta';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Dettagli di contatto';

  @override
  String get call => 'Chiamata';

  @override
  String get share => 'Condividere';

  @override
  String get favourite => 'Preferito';

  @override
  String get unfavourite => 'Sfavorito';

  @override
  String get blockContact => 'Blocca il contatto';

  @override
  String get unblockContact => 'Sblocca il contatto';

  @override
  String get deleteContact => 'Elimina contatto';

  @override
  String get phone => 'Telefono';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Suoneria';

  @override
  String get defaultRingtone => 'Predefinito';

  @override
  String get simForContact => 'SIM per questo contatto';

  @override
  String get callHistoryTitle => 'Cronologia delle chiamate';

  @override
  String get noCallsWithNumber => 'Nessuna chiamata con questo numero';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animazione dei glifi';

  @override
  String get inCallGlyphAnimationStyle =>
      'Animazione glifo durante la chiamata';

  @override
  String get recordsOff => 'Spento';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM predefinita';

  @override
  String get nothingPhoneOnly => 'Niente Solo telefono';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Le funzionalità dei glifi richiedono un Nothing Phone';

  @override
  String get custom => 'Costume';

  @override
  String presetColorHex(String hex) {
    return 'Preimpostato · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Personalizzato · $hex';
  }

  @override
  String get oneContact => '1 contatto';

  @override
  String upToContacts(int count) {
    return 'Fino a $count contatti';
  }

  @override
  String get answerButtonTapSubtitle => 'Tocca il pulsante per rispondere';

  @override
  String get filterCalls => 'Filtra le chiamate';

  @override
  String get filterTooltip => 'Filtro';

  @override
  String get settingsTooltip => 'Impostazioni';

  @override
  String get filterAllSubtitle => 'Tutto il registro delle chiamate';

  @override
  String get filterMissedSubtitle => 'Perso e rifiutato';

  @override
  String get filterContactsSubtitle =>
      'Chiamate abbinate a un contatto salvato';

  @override
  String get filterNonContactsSubtitle =>
      'Numeri non presenti nella tua rubrica';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Chiamata in corso: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM predefinita per le chiamate';

  @override
  String get blinkInterval => 'Intervallo di ammiccamento';

  @override
  String get close => 'Vicino';

  @override
  String get frequentlyContactedInfoBody =>
      'Mostra i numeri di telefono più chiamati nella parte superiore della scheda Recenti, in base al numero di chiamate in entrata, in uscita, perse o rifiutate ricevute con ciascun numero nel periodo di tempo scelto.\n\nNumero di record: impostare su 0 per disattivarlo. Utilizza i numeri da 1 a 20 per mostrare il numero di contatti principali.\n\nIl periodo di tempo si applica solo quando viene mostrato almeno un contatto.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count luci, velocità ${ms}ms';
  }

  @override
  String get deleteContactQuestion => 'Eliminare il contatto?';

  @override
  String get deleteContactBody =>
      'Questo contatto verrà eliminato definitivamente dal tuo dispositivo.';

  @override
  String get blockContactQuestion => 'Bloccare il contatto?';

  @override
  String get unblockContactQuestion => 'Sbloccare il contatto?';

  @override
  String get blockContactBody =>
      'Non riceverai più chiamate o SMS da questo contatto.';

  @override
  String get unblockContactBody =>
      'Inizierai a ricevere chiamate e messaggi da questo contatto.';

  @override
  String get contactBlocked => 'Contatto bloccato';

  @override
  String get contactUnblocked => 'Contatto sbloccato';

  @override
  String get noPhoneNumbersToBlock => 'Nessun numero di telefono da bloccare';

  @override
  String get simSameAsSystem => 'Uguale al sistema';

  @override
  String get simSameAsSystemSubtitle =>
      'Segue la SIM predefinita nelle Impostazioni';

  @override
  String get simAskEveryTimeForContact =>
      'Mostra sempre il selettore SIM per questo contatto';

  @override
  String get ringtoneSetForContact =>
      'Suoneria impostata a livello globale per questo contatto';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Impossibile scegliere la suoneria: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Errore: $error';
  }

  @override
  String get noCallHistoryFound => 'Nessuna cronologia chiamate trovata';

  @override
  String get speedDialVoicemail => 'Chiamata rapida: Segreteria telefonica';

  @override
  String shareContactSubject(String name) {
    return 'Contatto: $name';
  }

  @override
  String get contactInfo => 'Informazioni di contatto';

  @override
  String get dontAskAgainSim => 'Non chiedermelo più';

  @override
  String get simDontAskAgainSubtitle =>
      'Usa questa SIM come predefinita (modifica in Impostazioni)';

  @override
  String get addContact => 'Aggiungi contatto';

  @override
  String get createContact => 'Crea contatto';

  @override
  String get paste => 'Impasto';

  @override
  String get clear => 'Chiaro';

  @override
  String get returnToCall => 'Torna a chiamare';

  @override
  String get numberOfRecordsTitle => 'Numero di record';

  @override
  String get recordsPickerSubtitle =>
      'Numero di voci contattate frequentemente da mostrare (0 = disattivato)';

  @override
  String get torchInfoTitle => 'La torcia lampeggia';

  @override
  String get torchInfoBody =>
      'Fa lampeggiare il flash della fotocamera durante le chiamate in entrata, in uscita o in corso. Indipendente dalle luci dei glifi.';

  @override
  String get glyphMapTitle => 'Disposizione dei glifi';

  @override
  String get glyphMapBody =>
      'Niente Telefono 1 Zone LED glifo. Le animazioni in uscita e in chiamata utilizzano questi canali.';

  @override
  String get answerMethodTitle => 'Metodo di risposta';

  @override
  String get glyphOutgoingCallStyleTitle => 'Stile chiamata in uscita';

  @override
  String get glyphInCallAnimationTitle =>
      'Animazione con glifi durante la chiamata';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Torcia per chiamate in entrata';

  @override
  String get torchOutgoingTitle => 'Torcia per chiamate in uscita';

  @override
  String get torchOngoingTitle => 'Torcia a chiamata continua';

  @override
  String get timePeriodTitle => 'Periodo di tempo';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Eliminare questa chiamata dalla cronologia?';

  @override
  String get confirmDeleteAllCalls =>
      'Eliminare tutte le chiamate con questo numero?';

  @override
  String get whatsapp => 'Whatsapp';

  @override
  String get sendMessage => 'Invia un messaggio';

  @override
  String get addToExistingContactAction => 'Aggiungi a un contatto';

  @override
  String get mobileLabel => 'Mobile';

  @override
  String get callingSimForContactTitle =>
      'Chiamando la SIM per questo contatto';

  @override
  String get contactSettings => 'Impostazioni dei contatti';

  @override
  String get setCallingSim => 'Imposta la SIM di chiamata';

  @override
  String get contactRingtone => 'Suoneria del contatto';

  @override
  String get shareContact => 'Condividi il contatto';

  @override
  String get blockNumbers => 'Blocca i numeri';

  @override
  String get unblockNumbers => 'Sblocca i numeri';

  @override
  String get connectedApps => 'App connesse';

  @override
  String get simNotSet => 'Non impostato';

  @override
  String get ringtoneDefault => 'Predefinito';

  @override
  String get customRingtone => 'Costume';

  @override
  String get aboutSection => 'Di';

  @override
  String get aboutFeedbackSection => 'Informazioni e feedback';

  @override
  String get aboutDescription =>
      'Niente Dialer è open source. Se sei uno sviluppatore, puoi esplorare il codice e contribuire.';

  @override
  String get aboutViewSource => 'Visualizza su GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Impossibile aprire il collegamento';

  @override
  String get reviewSection => 'Revisione';

  @override
  String get reviewDescription =>
      'Ti piace Nothing Dialer? La tua valutazione su Google Play aiuta gli altri a trovare l\'app.';

  @override
  String get reviewRateOnPlay => 'Valuta su Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Impossibile aprire Google Play';

  @override
  String get breathSpeed => 'Velocità del respiro';

  @override
  String get breathSpeedBlinkHint =>
      'Inferiore = Lampeggio, Superiore = Respiro lento';

  @override
  String get speedSliderHint => 'Inferiore = più veloce, superiore = più lento';

  @override
  String get swatchDefault => 'Predefinito';

  @override
  String get customAccentColorPicker => 'Colore accento personalizzato';

  @override
  String get customLightBackgroundPicker => 'Sfondo chiaro personalizzato';

  @override
  String get customDarkBackgroundPicker => 'Sfondo scuro personalizzato';

  @override
  String get customCallBackgroundPicker =>
      'Sfondo della chiamata personalizzato';

  @override
  String get ongoingCallStyleTitle => 'Stile di chiamata in corso';

  @override
  String get glyphMapUnavailable => 'Mappa dei glifi non disponibile';

  @override
  String get animationDelayRange => 'Ritardo animazione (1 s - 10 s)';

  @override
  String get animationDelayRangeSingle => 'Ritardo animazione (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Muto';

  @override
  String get inCallKeypad => 'Tastiera';

  @override
  String get inCallSpeaker => 'Altoparlante';

  @override
  String get inCallMore => 'Di più';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefono';

  @override
  String get inCallAddCall => 'Aggiungi chiamata';

  @override
  String get inCallChangeSim => 'Cambia SIM';

  @override
  String get inCallDecline => 'Declino';

  @override
  String get inCallAnswer => 'Risposta';

  @override
  String get inCallMessage => 'Messaggio';

  @override
  String get inCallCalling => 'Chiamando…';

  @override
  String get inCallIncoming => 'Chiamata in arrivo';

  @override
  String get inCallSelectSim => 'Seleziona SIM...';

  @override
  String get inCallSwitchingSim => 'Cambio SIM...';

  @override
  String get inCallCallEnded => 'Chiamata terminata';

  @override
  String inCallCallingVia(String sim) {
    return 'Chiamando tramite $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Chiamando tramite <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Scegli la SIM per questa chiamata';

  @override
  String get inCallDragAnswerDecline =>
      'Trascina a destra per rispondere · Trascina a sinistra per rifiutare';

  @override
  String inCallMobileNumber(String number) {
    return 'Cellulare $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Corrente)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Chiama tramite <b>$sim</b> da';
  }

  @override
  String get inCallCallFrom => 'Chiama da';

  @override
  String get inCallUnknown => 'Sconosciuto';

  @override
  String get selectContactRingtone => 'Seleziona la suoneria del contatto';

  @override
  String get speakToSearchPrompt => 'Parla per cercare';

  @override
  String get phonePermissionRequired =>
      'È richiesta l\'autorizzazione telefonica';

  @override
  String callFailed(String error) {
    return 'Chiamata fallita: $error';
  }

  @override
  String get callPermissionDenied => 'Autorizzazione alla chiamata negata';

  @override
  String get alreadyDefaultDialer =>
      'Già impostato come combinatore predefinito';

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
