// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'Marcador de res';

  @override
  String get settings => 'Configuració';

  @override
  String get settingsSearchHint => 'Configuració de cerca';

  @override
  String get settingsSearchNoResults => 'No s\'ha trobat cap configuració';

  @override
  String get general => 'General';

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
  String get themeSystemDefault => 'Sistema per defecte';

  @override
  String get themeLight => 'Llum';

  @override
  String get themeDark => 'Fosc';

  @override
  String get themeFollowSystem => 'Seguiu la configuració del sistema';

  @override
  String get themeAlwaysLight => 'Feu servir sempre un tema lleuger';

  @override
  String get themeAlwaysDark => 'Feu servir sempre un tema fosc';

  @override
  String get language => 'Llengua';

  @override
  String get languageDeviceDefault => 'Dispositiu predeterminat';

  @override
  String get languagePickerTitle => 'Llengua';

  @override
  String get languageSearchHint => 'Cerca idiomes';

  @override
  String get font => 'Font';

  @override
  String get fontSystem => 'Sistema predeterminat';

  @override
  String get fontNdot => 'Res (NDot)';

  @override
  String get fontSerif => 'Robot Serif';

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
      'La baixada de la font ha fallat. Comprova la teva connexió i torna-ho a provar.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Font';

  @override
  String get fontPreviewSample => 'Marcador de res';

  @override
  String get fontAppWide => 'Tipus de lletra de l\'aplicació';

  @override
  String get fontApplyTo => 'Aplicar a';

  @override
  String get fontApplyEntireApp => 'Tota l\'aplicació';

  @override
  String get fontApplyEntireAppSubtitle =>
      'El mateix tipus de lletra a tot arreu, incloses les trucades';

  @override
  String get fontApplyTitlesOnly => 'Títols i capçaleres';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Només els títols grans i les capçaleres de seccions';

  @override
  String get fontApplyCustomize => 'Personalitza';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Trieu el tipus de lletra per pantalla i tipus de text';

  @override
  String get fontCustomizeSection => 'Personalitza per pantalla';

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
  String get fontRolePageTitle => 'Títol de la pàgina';

  @override
  String get fontRoleSectionHeader => 'Capçalera de la secció';

  @override
  String get fontRolePrimary => 'Text primari';

  @override
  String get fontRoleSecondary => 'Text secundari';

  @override
  String get fontRoleButton => 'Botons';

  @override
  String get fontRoleDialKey => 'Tecles del teclat';

  @override
  String get fontSurfaceRecents => 'Recents';

  @override
  String get fontSurfaceContacts => 'Contactes';

  @override
  String get fontSurfaceSettings => 'Configuració';

  @override
  String get fontSurfaceDialpad => 'Teclat de marcatge';

  @override
  String get fontSurfaceShell => 'Navegació';

  @override
  String get fontSurfaceDefaultDialer => 'Indicador de marcatge predeterminat';

  @override
  String get fontSurfaceFavourites => 'Preferits';

  @override
  String get fontSurfaceBlocked => 'Números bloquejats';

  @override
  String get fontSurfaceContactDetail => 'Detall de contacte';

  @override
  String get fontSurfaceCallHistory => 'Historial de trucades';

  @override
  String get fontSurfaceSheets => 'Llençols i recol·lectors';

  @override
  String get fontSurfaceInCall => 'Pantalla de trucada';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — aplicació sencera';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font: només títols';
  }

  @override
  String get fontSubtitleCustomize => 'Personalitzat per pantalla';

  @override
  String get background => 'Fons';

  @override
  String get accent => 'Accent';

  @override
  String get lightBackground => 'Fons clar';

  @override
  String get lightAccent => 'Accent lleuger';

  @override
  String get darkBackground => 'Fons fosc';

  @override
  String get darkAccent => 'Accent fosc';

  @override
  String get callBackground => 'Fons de la trucada';

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
  String get appIcon => 'Icona de l\'aplicació';

  @override
  String get answerMethod => 'Mètode de resposta';

  @override
  String get answerSlide => 'Feu lliscar per respondre';

  @override
  String get answerSlideSubtitle =>
      'Fes lliscar el dit cap a l\'esquerra/dreta a la barra, com ara Google Phone';

  @override
  String get answerButton => 'Toc de botó';

  @override
  String get answerButtonSubtitle =>
      'Toqueu els botons de resposta o de rebutjar';

  @override
  String get answerHuawei => 'Estil Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Arrossegueu el cercle al telèfon verd per respondre';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei: arrossegueu a verd/vermell';

  @override
  String get calling => 'Trucant';

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
  String get defaultSim => 'SIM per defecte';

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
  String get askEveryTime => 'Preguntar cada cop';

  @override
  String get askEveryTimeSubtitle =>
      'Mostra el selector de SIM abans de cada trucada';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'No s\'han trobat targetes SIM';

  @override
  String couldNotLoadSims(String error) {
    return 'No s\'han pogut carregar les SIM: $error';
  }

  @override
  String get allFavourites => 'Tots els favorits';

  @override
  String get allFavouritesSubtitle =>
      'Reordenar, eliminar i afegir dels contactes';

  @override
  String get blockedNumbers => 'Números bloquejats';

  @override
  String get blockedNumbersSubtitle => 'Veure i desbloquejar números';

  @override
  String get soundsAndVibration => 'Sons i vibracions';

  @override
  String get soundsAndVibrationSubtitle =>
      'To de trucada, vibració, tons del teclat de marcatge';

  @override
  String couldNotOpenSettings(String error) {
    return 'No s\'ha pogut obrir la configuració: $error';
  }

  @override
  String get frequentlyContacted => 'Contactat amb freqüència';

  @override
  String get numberOfRecords => 'Nombre de registres';

  @override
  String get timePeriod => 'Període de temps';

  @override
  String get periodLast24Hours => 'Últimes 24 hores';

  @override
  String get periodLast24HoursSubtitle => 'Trucades de l\'últim dia';

  @override
  String get periodLast7Days => 'Últims 7 dies';

  @override
  String get periodLast7DaysSubtitle => 'Trucades de la setmana passada';

  @override
  String get periodLast30Days => 'Últims 30 dies';

  @override
  String get periodLast30DaysSubtitle => 'Trucades del mes passat';

  @override
  String get periodLast12Months => 'Últims 12 mesos';

  @override
  String get periodLast12MonthsSubtitle => 'Trucades de l\'any passat';

  @override
  String get periodAllTime => 'Tot el temps';

  @override
  String get periodAllTimeSubtitle => 'Historial de trucades sencer';

  @override
  String get frequentMaxOff => 'Apagat';

  @override
  String frequentMaxCount(int count) {
    return '$count contactes';
  }

  @override
  String get torchBlink => 'Parpelleig de la torxa';

  @override
  String get torchIncomingCall => 'Torxa de trucades entrants';

  @override
  String get torchOutgoingCall => 'Torxa de trucada sortint';

  @override
  String get torchOngoingCall => 'Torxa de trucada en curs';

  @override
  String get torchIncomingInterval => 'Interval de parpelleig entrant';

  @override
  String get torchOutgoingInterval => 'Interval de parpelleig de sortida';

  @override
  String get torchOngoingInterval => 'Interval de parpelleig en curs';

  @override
  String get torchOff => 'Apagat';

  @override
  String get torchOffIncomingSubtitle => 'Sense torxa mentre sona';

  @override
  String get torchOffOutgoingSubtitle => 'Sense llanterna mentre marca';

  @override
  String get torchOffOngoingSubtitle =>
      'No hi ha llanterna durant la trucada activa';

  @override
  String get torchFixedInterval => 'Interval fix';

  @override
  String get torchFixedIntervalSubtitle => 'Parpellejar a una velocitat fixada';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds parpellejar';
  }

  @override
  String get flashlightUnavailable =>
      'La llanterna no està disponible en aquest dispositiu';

  @override
  String get glyphLights => 'Llums de glifo';

  @override
  String get glyphCallingAnimation => 'Animació de trucades de glif';

  @override
  String get glyphOngoingAnimation => 'Animació de trucades en curs de glif';

  @override
  String get glyphNone => 'Cap';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Desactiveu els llums de glifo per a les trucades sortints';

  @override
  String get glyphNoneInCallSubtitle =>
      'Desactiveu les llums glifs mentre esteu activament en trucada';

  @override
  String get glyphBreathProgress => 'Respiració i progrés';

  @override
  String get glyphBreathProgressSubtitle =>
      'Les llums respiren mentre la línia s\'omple durant 65 segons';

  @override
  String get glyphAccumulate => 'Acumular';

  @override
  String get glyphAccumulateSubtitle => 'Animació acumulada en llums C1-C4';

  @override
  String get glyphSingle => 'Solter';

  @override
  String get glyphSingleSubtitle => 'Llum única que es mou per C1-C4';

  @override
  String get glyphBreath => 'Respira';

  @override
  String get glyphBreathSubtitle => 'Trieu llums i velocitat';

  @override
  String get glyphSteady => 'Estable';

  @override
  String get glyphSteadySubtitle =>
      'Els llums seleccionats es mantenen encesos';

  @override
  String get breathSettings => 'Configuració de la respiració';

  @override
  String get activeLights => 'Llums actives';

  @override
  String lightsCount(int count) {
    return '$count llums';
  }

  @override
  String get speedSettings => 'Configuració de velocitat';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms de retard';
  }

  @override
  String get durationAndSpeed => 'Durada i velocitat';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s de durada, ${interval}ms d\'interval';
  }

  @override
  String get cancel => 'Cancel·la';

  @override
  String get done => 'Fet';

  @override
  String get save => 'Desa';

  @override
  String get block => 'Bloc';

  @override
  String get delete => 'Suprimeix';

  @override
  String get recents => 'Recents';

  @override
  String get contacts => 'Contactes';

  @override
  String get hideFavouritesOnRecents => 'Amaga els preferits a Recents';

  @override
  String get showFavouritesOnRecents => 'Mostra els preferits a Recents';

  @override
  String get ongoingCall => 'Trucada en curs';

  @override
  String get setAsDefaultTitle => 'SET COM\nPER Defecte';

  @override
  String get setAsDefaultBody =>
      'Per utilitzar Nothing Dialer, s\'ha de configurar com a aplicació de telèfon predeterminada. Això us permet gestionar les trucades, veure l\'historial i utilitzar animacions de Glyph.';

  @override
  String get setAsDefaultButton => 'ESTABLEIX COM A PREDETERMINAT';

  @override
  String get nothingDialerBrand => 'MARCADOR DE RES 1';

  @override
  String get favourites => 'Preferits';

  @override
  String get addFavourite => 'Afegeix preferit';

  @override
  String get favouritesDrawerHint =>
      'Utilitzeu el menú per afegir contactes. Toqueu fora del calaix o feu-lo lliscar per tancar-lo. Destaca un contacte a partir de les seves dades o mantén premut una trucada a Recents.';

  @override
  String get menu => 'Menú';

  @override
  String get noFavouritesYet =>
      'Encara no hi ha cap favorit.\nObriu el menú per afegir-ne un o destaca un contacte.';

  @override
  String get contactsPermissionNeeded => 'Cal permís de contactes';

  @override
  String get chooseContact => 'Trieu contacte';

  @override
  String get noPhone => 'Sense telèfon';

  @override
  String get pickNumber => 'Tria el número';

  @override
  String get contactHasNoPhone => 'Aquest contacte no té número de telèfon';

  @override
  String get blockNumber => 'Número de bloc';

  @override
  String get enterPhoneNumber => 'Introduïu el número de telèfon';

  @override
  String unblockedDisplay(String display) {
    return 'Desbloquejat $display';
  }

  @override
  String get couldNotUnblockNumber => 'No s\'ha pogut desbloquejar el número';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bloquejat • $matched coincideixen';
  }

  @override
  String get contactsPermissionMissing =>
      'Falta el permís de contactes. Toca per arreglar.';

  @override
  String get noBlockedNumbers => 'No hi ha números bloquejats';

  @override
  String get unknownContact => 'Contacte desconegut';

  @override
  String get unblock => 'Desbloqueja';

  @override
  String get permissionNeeded => 'Cal permís';

  @override
  String get grantPhonePermission =>
      'Doneu permís al telèfon per veure el vostre historial de trucades.';

  @override
  String get grantContactsPermission =>
      'Doneu permís als contactes per veure la vostra llibreta d\'adreces.';

  @override
  String get openSettings => 'Obriu Configuració';

  @override
  String get tryAgain => 'Torna-ho a provar';

  @override
  String get couldNotLoadContacts => 'No s\'han pogut carregar els contactes';

  @override
  String get contactsLoadError =>
      'S\'ha produït un error llegint la teva llibreta d\'adreces.';

  @override
  String get noContactsFound => 'No s\'han trobat contactes';

  @override
  String get contactsEmptySubtitle =>
      'Els contactes del vostre dispositiu apareixeran aquí.';

  @override
  String get searchContacts => 'Cerca contactes...';

  @override
  String get searchRecentCalls => 'Cerca trucades recents';

  @override
  String get fromContacts => 'De contactes';

  @override
  String get recentsSearchSection => 'Recerca recent';

  @override
  String get recentsSearchShowContacts => 'Mostra els contactes a la cerca';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Mentre cerques Recents, també mostra les persones que coincideixen de la teva llibreta d\'adreces a sota dels resultats de l\'historial de trucades.';

  @override
  String get voiceSearch => 'Cerca per veu';

  @override
  String get createNewContact => 'Crea un contacte nou';

  @override
  String callError(String error) {
    return 'Error de trucada: $error';
  }

  @override
  String get noRecentCalls => 'No hi ha trucades recents';

  @override
  String get callHistoryEmpty =>
      'El vostre historial de trucades apareixerà aquí.';

  @override
  String get loadMore => 'Carregueu més';

  @override
  String get frequentlyContactedHeader => 'Contacta amb freqüència';

  @override
  String get recentHistory => 'Història recent';

  @override
  String get noFavouritesRecentsHint =>
      'Encara no hi ha cap favorit. Destaca un contacte, mantén premut una trucada o utilitza la pestanya Preferits.';

  @override
  String get copyNumber => 'Número de còpia';

  @override
  String get editNumberBeforeCall => 'Edita el número abans de trucar';

  @override
  String get removeFromFavourites => 'Elimina dels preferits';

  @override
  String get addToFavourites => 'Afegeix als preferits';

  @override
  String get blockNumberQuestion => 'Número de bloc?';

  @override
  String blockNumberConfirm(String number) {
    return 'Ja no rebràs trucades ni missatges de text des de $number.';
  }

  @override
  String get blocked => 'Bloquejat';

  @override
  String get couldNotBlock => 'No s\'ha pogut bloquejar';

  @override
  String get contactNotOnDevice =>
      'El contacte no s\'ha desat en aquest dispositiu';

  @override
  String get unblocked => 'Desbloquejat';

  @override
  String get numberCopied => 'Número copiat';

  @override
  String get showLess => 'Mostra menys';

  @override
  String get showAllTimes => 'Mostra totes les hores';

  @override
  String mostRecent(String time) {
    return 'Més recent · $time';
  }

  @override
  String get videoCall => 'Videotrucada';

  @override
  String get couldNotPlaceVideoCall => 'No s\'ha pogut fer una videotrucada';

  @override
  String get message => 'Missatge';

  @override
  String get couldNotOpenMessaging =>
      'No s\'ha pogut obrir l\'aplicació de missatgeria';

  @override
  String get history => 'Història';

  @override
  String get viewContact => 'Veure contacte';

  @override
  String get addToContact => 'Afegeix al contacte';

  @override
  String get callTypeMissed => 'Faltat';

  @override
  String get callTypeRejected => 'Rebutjat';

  @override
  String get callTypeIncoming => 'Entrant';

  @override
  String get callTypeOutgoing => 'Sortint';

  @override
  String get today => 'Avui';

  @override
  String get yesterday => 'Ahir';

  @override
  String get justNow => 'Just ara';

  @override
  String minutesAgo(int count) {
    return 'fa $count min';
  }

  @override
  String hoursAgo(int count) {
    return 'fa $count h';
  }

  @override
  String get filterAll => 'Tots';

  @override
  String get filterMissed => 'Faltat';

  @override
  String get filterContacts => 'Contactes';

  @override
  String get filterNonContacts => 'No-contactes';

  @override
  String get iconUpdated =>
      'Icona actualitzada. La pantalla d\'inici pot trigar un moment a actualitzar-se.';

  @override
  String get iconSavedRelease =>
      'Elecció guardada. La icona de la pantalla d\'inici s\'actualitza a les versions.';

  @override
  String couldNotChangeIcon(String error) {
    return 'No s\'ha pogut canviar la icona: $error';
  }

  @override
  String get launcherClassicBlack => 'Clàssic (negre)';

  @override
  String get launcherLight => 'Llum';

  @override
  String get launcherNothingRed => 'Res de vermell';

  @override
  String get launcherDarkGrey => 'Gris fosc';

  @override
  String get launcherCream => 'Crema';

  @override
  String get launcherRetroPhone => 'Telèfon retro';

  @override
  String get launcherRetroPhoneLight => 'Telèfon retro (llum)';

  @override
  String get voiceSearchUnavailable =>
      'La cerca per veu no està disponible en aquest dispositiu.';

  @override
  String voiceSearchFailed(String error) {
    return 'La cerca per veu ha fallat: $error';
  }

  @override
  String get customColor => 'Personalitzat';

  @override
  String get selectColor => 'Seleccioneu el color';

  @override
  String get reset => 'Restableix';

  @override
  String get simPickerTitle => 'Trieu SIM';

  @override
  String get simChooseForCall => 'Trieu SIM per a aquesta trucada';

  @override
  String get defaultSimAsk => 'Preguntar cada cop';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Dades de contacte';

  @override
  String get call => 'Truca';

  @override
  String get share => 'Comparteix';

  @override
  String get favourite => 'Favorit';

  @override
  String get unfavourite => 'Desfavorit';

  @override
  String get blockContact => 'Bloqueja el contacte';

  @override
  String get unblockContact => 'Desbloqueja el contacte';

  @override
  String get deleteContact => 'Suprimeix el contacte';

  @override
  String get phone => 'Telèfon';

  @override
  String get email => 'Correu electrònic';

  @override
  String get ringtone => 'To de trucada';

  @override
  String get defaultRingtone => 'Per defecte';

  @override
  String get simForContact => 'SIM per a aquest contacte';

  @override
  String get callHistoryTitle => 'Historial de trucades';

  @override
  String get noCallsWithNumber => 'No hi ha trucades amb aquest número';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animació de glifos';

  @override
  String get inCallGlyphAnimationStyle =>
      'Animació de glifos durant la trucada';

  @override
  String get recordsOff => 'Apagat';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM per defecte';

  @override
  String get nothingPhoneOnly => 'Res Només per telèfon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Les funcions de Glyph requereixen un telèfon Nothing';

  @override
  String get custom => 'Personalitzat';

  @override
  String presetColorHex(String hex) {
    return 'Preestablert · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Personalitzat · $hex';
  }

  @override
  String get oneContact => '1 contacte';

  @override
  String upToContacts(int count) {
    return 'Fins a $count contactes';
  }

  @override
  String get answerButtonTapSubtitle => 'Toca el botó per respondre';

  @override
  String get filterCalls => 'Filtra les trucades';

  @override
  String get filterTooltip => 'Filtre';

  @override
  String get settingsTooltip => 'Configuració';

  @override
  String get filterAllSubtitle => 'Registre de trucades sencer';

  @override
  String get filterMissedSubtitle => 'Faltat i rebutjat';

  @override
  String get filterContactsSubtitle =>
      'Les trucades coincideixen amb un contacte desat';

  @override
  String get filterNonContactsSubtitle =>
      'Números que no es troben a la vostra llibreta d\'adreces';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Trucada en curs: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM predeterminada per a trucades';

  @override
  String get blinkInterval => 'Interval de parpelleig';

  @override
  String get close => 'Tancar';

  @override
  String get frequentlyContactedInfoBody =>
      'Mostra els vostres números de telèfon més trucats a la part superior de la pestanya Recents, en funció de quantes trucades entrants, sortints, perdudes o rebutjades heu tingut amb cada número en el període de temps que trieu.\n\nNombre de registres: establiu-lo a 0 per desactivar-ho. Utilitzeu 1–20 per mostrar tants contactes principals.\n\nEl període de temps només s\'aplica quan es mostra almenys un contacte.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count llums, ${ms}ms de velocitat';
  }

  @override
  String get deleteContactQuestion => 'Vols suprimir el contacte?';

  @override
  String get deleteContactBody =>
      'Aquest contacte se suprimirà permanentment del teu dispositiu.';

  @override
  String get blockContactQuestion => 'Bloquejar el contacte?';

  @override
  String get unblockContactQuestion => 'Vols desbloquejar el contacte?';

  @override
  String get blockContactBody =>
      'Ja no rebràs trucades ni missatges de text d\'aquest contacte.';

  @override
  String get unblockContactBody =>
      'Començaràs a rebre trucades i missatges de text d\'aquest contacte.';

  @override
  String get contactBlocked => 'Contacte bloquejat';

  @override
  String get contactUnblocked => 'Contacte desbloquejat';

  @override
  String get noPhoneNumbersToBlock =>
      'No hi ha números de telèfon per bloquejar';

  @override
  String get simSameAsSystem => 'Igual que el sistema';

  @override
  String get simSameAsSystemSubtitle =>
      'Segueix la SIM predeterminada a Configuració';

  @override
  String get simAskEveryTimeForContact =>
      'Mostra sempre el selector de SIM per a aquest contacte';

  @override
  String get ringtoneSetForContact =>
      'To de trucada establert globalment per a aquest contacte';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'No s\'ha pogut escollir el to de trucada: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Error: $error';
  }

  @override
  String get noCallHistoryFound => 'No s\'ha trobat cap historial de trucades';

  @override
  String get speedDialVoicemail => 'Marcatge ràpid: bústia de veu';

  @override
  String shareContactSubject(String name) {
    return 'Contacte: $name';
  }

  @override
  String get contactInfo => 'Informació de contacte';

  @override
  String get dontAskAgainSim => 'No ho tornis a preguntar';

  @override
  String get simDontAskAgainSubtitle =>
      'Utilitzeu aquesta SIM per defecte (canvi a Configuració)';

  @override
  String get addContact => 'Afegeix un contacte';

  @override
  String get createContact => 'Crear contacte';

  @override
  String get paste => 'Enganxa';

  @override
  String get clear => 'Clar';

  @override
  String get returnToCall => 'Torna a trucar';

  @override
  String get numberOfRecordsTitle => 'Nombre de registres';

  @override
  String get recordsPickerSubtitle =>
      'Quantes entrades amb contactes freqüents per mostrar (0 = desactivada)';

  @override
  String get torchInfoTitle => 'Parpelleig de la torxa';

  @override
  String get torchInfoBody =>
      'Parpelleja el flaix de la càmera durant les trucades entrants, sortints o en curs. Independent de les llums Glyph.';

  @override
  String get glyphMapTitle => 'Disseny de glifs';

  @override
  String get glyphMapBody =>
      'Nothing Phone 1 Glyph zones LED. Les animacions de sortida i de trucada utilitzen aquests canals.';

  @override
  String get answerMethodTitle => 'Mètode de resposta';

  @override
  String get glyphOutgoingCallStyleTitle => 'Estil de trucada sortint';

  @override
  String get glyphInCallAnimationTitle => 'Animació de glif durant la trucada';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Torxa de trucades entrants';

  @override
  String get torchOutgoingTitle => 'Torxa de trucada sortint';

  @override
  String get torchOngoingTitle => 'Torxa de trucada en curs';

  @override
  String get timePeriodTitle => 'Període de temps';

  @override
  String get ok => 'D\'acord';

  @override
  String get confirmDeleteCall =>
      'Vols suprimir aquesta trucada de l\'historial?';

  @override
  String get confirmDeleteAllCalls =>
      'Vols suprimir totes les trucades amb aquest número?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Envia un missatge';

  @override
  String get addToExistingContactAction => 'Afegeix a un contacte';

  @override
  String get mobileLabel => 'Mòbil';

  @override
  String get callingSimForContactTitle =>
      'S\'està trucant a la SIM per a aquest contacte';

  @override
  String get contactSettings => 'Configuració de contacte';

  @override
  String get setCallingSim => 'Estableix la SIM de trucada';

  @override
  String get contactRingtone => 'To de trucada de contacte';

  @override
  String get shareContact => 'Comparteix el contacte';

  @override
  String get blockNumbers => 'Bloc de números';

  @override
  String get unblockNumbers => 'Desbloquejar números';

  @override
  String get connectedApps => 'Aplicacions connectades';

  @override
  String get simNotSet => 'No configurat';

  @override
  String get ringtoneDefault => 'Per defecte';

  @override
  String get customRingtone => 'Personalitzat';

  @override
  String get aboutSection => 'Sobre';

  @override
  String get aboutFeedbackSection => 'Sobre i comentaris';

  @override
  String get aboutDescription =>
      'Nothing Dialer és de codi obert. Si sou desenvolupador, podeu explorar el codi i contribuir.';

  @override
  String get aboutViewSource => 'Veure a GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'No s\'ha pogut obrir l\'enllaç';

  @override
  String get reviewSection => 'Revisió';

  @override
  String get reviewDescription =>
      'Gaudeix de Nothing Dialer? La teva puntuació a Google Play ajuda els altres a trobar l\'aplicació.';

  @override
  String get reviewRateOnPlay => 'Valora a Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'No s\'ha pogut obrir Google Play';

  @override
  String get breathSpeed => 'Velocitat de la respiració';

  @override
  String get breathSpeedBlinkHint =>
      'Baix = parpelleig, més alt = respiració lenta';

  @override
  String get speedSliderHint => 'Baix = més ràpid, més alt = més lent';

  @override
  String get swatchDefault => 'Per defecte';

  @override
  String get customAccentColorPicker => 'Color d\'accent personalitzat';

  @override
  String get customLightBackgroundPicker => 'Fons clar personalitzat';

  @override
  String get customDarkBackgroundPicker => 'Fons fosc personalitzat';

  @override
  String get customCallBackgroundPicker => 'Fons de trucada personalitzat';

  @override
  String get ongoingCallStyleTitle => 'Estil de trucada en curs';

  @override
  String get glyphMapUnavailable => 'El mapa de glifs no està disponible';

  @override
  String get animationDelayRange => 'Retard de l\'animació (1s - 10s)';

  @override
  String get animationDelayRangeSingle =>
      'Retard de l\'animació (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Silenciar';

  @override
  String get inCallKeypad => 'Teclat';

  @override
  String get inCallSpeaker => 'Altaveu';

  @override
  String get inCallMore => 'Més';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telèfon';

  @override
  String get inCallAddCall => 'Afegeix una trucada';

  @override
  String get inCallChangeSim => 'Canvia SIM';

  @override
  String get inCallDecline => 'Declinar';

  @override
  String get inCallAnswer => 'Respon';

  @override
  String get inCallMessage => 'Missatge';

  @override
  String get inCallCalling => 'S\'està trucant…';

  @override
  String get inCallIncoming => 'Trucada entrant';

  @override
  String get inCallSelectSim => 'Seleccioneu SIM...';

  @override
  String get inCallSwitchingSim => 'S\'està canviant la SIM...';

  @override
  String get inCallCallEnded => 'La trucada ha finalitzat';

  @override
  String inCallCallingVia(String sim) {
    return 'Trucant per $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Trucant per <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Trieu SIM per a aquesta trucada';

  @override
  String get inCallDragAnswerDecline =>
      'Arrossegueu cap a la dreta per respondre · Arrossegueu cap a l\'esquerra per rebutjar';

  @override
  String inCallMobileNumber(String number) {
    return 'Mòbil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Actual)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Truqueu a través del <b>$sim</b> des de';
  }

  @override
  String get inCallCallFrom => 'Truca des de';

  @override
  String get inCallUnknown => 'Desconegut';

  @override
  String get selectContactRingtone =>
      'Seleccioneu el to de trucada de contacte';

  @override
  String get speakToSearchPrompt => 'Parla per buscar';

  @override
  String get phonePermissionRequired => 'Cal permís per telèfon';

  @override
  String callFailed(String error) {
    return 'La trucada ha fallat: $error';
  }

  @override
  String get callPermissionDenied => 'S\'ha denegat el permís de trucada';

  @override
  String get alreadyDefaultDialer =>
      'Ja està configurat com a marcador predeterminat';

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
