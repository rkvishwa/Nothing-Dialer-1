// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get appTitle => 'Marcador de nada';

  @override
  String get settings => 'Configuración';

  @override
  String get settingsSearchHint => 'Configuración de busca';

  @override
  String get settingsSearchNoResults => 'Non se atopou ningunha configuración';

  @override
  String get general => 'Xeral';

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
  String get themeSystemDefault => 'Sistema predeterminado';

  @override
  String get themeLight => 'Luz';

  @override
  String get themeDark => 'Escuro';

  @override
  String get themeFollowSystem => 'Siga a configuración do sistema';

  @override
  String get themeAlwaysLight => 'Usa sempre un tema claro';

  @override
  String get themeAlwaysDark => 'Usa sempre o tema escuro';

  @override
  String get language => 'Linguaxe';

  @override
  String get languageDeviceDefault => 'Dispositivo predeterminado';

  @override
  String get languagePickerTitle => 'Linguaxe';

  @override
  String get languageSearchHint => 'Busca idiomas';

  @override
  String get font => 'Fonte';

  @override
  String get fontSystem => 'Sistema predeterminado';

  @override
  String get fontNdot => 'Nada (NDot)';

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
      'Produciuse un erro na descarga da fonte. Comproba a túa conexión e téntao de novo.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Fonte';

  @override
  String get fontPreviewSample => 'Marcador de nada';

  @override
  String get fontAppWide => 'Fonte da aplicación';

  @override
  String get fontApplyTo => 'Solicitar a';

  @override
  String get fontApplyEntireApp => 'Aplicación completa';

  @override
  String get fontApplyEntireAppSubtitle =>
      'O mesmo tipo de letra en todas partes, incluída a chamada';

  @override
  String get fontApplyTitlesOnly => 'Títulos e cabeceiras';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Só títulos grandes e cabeceiras de sección';

  @override
  String get fontApplyCustomize => 'Personalizar';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Escolla fonte por pantalla e tipo de texto';

  @override
  String get fontCustomizeSection => 'Personaliza por pantalla';

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
  String get fontRolePageTitle => 'Título da páxina';

  @override
  String get fontRoleSectionHeader => 'Cabeceira da sección';

  @override
  String get fontRolePrimary => 'Texto primario';

  @override
  String get fontRoleSecondary => 'Texto secundario';

  @override
  String get fontRoleButton => 'Botóns';

  @override
  String get fontRoleDialKey => 'Teclas do teclado';

  @override
  String get fontSurfaceRecents => 'Recentes';

  @override
  String get fontSurfaceContacts => 'Contactos';

  @override
  String get fontSurfaceSettings => 'Configuración';

  @override
  String get fontSurfaceDialpad => 'Teclado de marcación';

  @override
  String get fontSurfaceShell => 'Navegación';

  @override
  String get fontSurfaceDefaultDialer =>
      'Indicador de marcación predeterminado';

  @override
  String get fontSurfaceFavourites => 'Favoritos';

  @override
  String get fontSurfaceBlocked => 'Números bloqueados';

  @override
  String get fontSurfaceContactDetail => 'Detalle de contacto';

  @override
  String get fontSurfaceCallHistory => 'Historial de chamadas';

  @override
  String get fontSurfaceSheets => 'Follas e recolectores';

  @override
  String get fontSurfaceInCall => 'Pantalla de chamada';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — toda a aplicación';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — só títulos';
  }

  @override
  String get fontSubtitleCustomize => 'Personalizado por pantalla';

  @override
  String get background => 'Fondo';

  @override
  String get accent => 'Acento';

  @override
  String get lightBackground => 'Fondo claro';

  @override
  String get lightAccent => 'Lixeiro acento';

  @override
  String get darkBackground => 'Fondo escuro';

  @override
  String get darkAccent => 'Acento escuro';

  @override
  String get callBackground => 'Fondo de chamada';

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
  String get appIcon => 'Icona da aplicación';

  @override
  String get answerMethod => 'Método de resposta';

  @override
  String get answerSlide => 'Desliza para responder';

  @override
  String get answerSlideSubtitle =>
      'Pasa o dedo cara á esquerda/dereita na barra, como Google Phone';

  @override
  String get answerButton => 'Toque de botón';

  @override
  String get answerButtonSubtitle =>
      'Toca os botóns para responder ou rexeitar';

  @override
  String get answerHuawei => 'Estilo Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Arrastra o círculo ata o teléfono verde para responder';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei: arrastra a verde/vermello';

  @override
  String get calling => 'Chamando';

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
  String get defaultSim => 'SIM predeterminada';

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
  String get askEveryTime => 'Pregunta cada vez';

  @override
  String get askEveryTimeSubtitle =>
      'Mostrar o selector SIM antes de cada chamada';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Non se atoparon tarxetas SIM';

  @override
  String couldNotLoadSims(String error) {
    return 'Non se puideron cargar SIM: $error';
  }

  @override
  String get allFavourites => 'Todos os favoritos';

  @override
  String get allFavouritesSubtitle =>
      'Reordena, elimina e engade dos contactos';

  @override
  String get blockedNumbers => 'Números bloqueados';

  @override
  String get blockedNumbersSubtitle => 'Ver e desbloquear números';

  @override
  String get soundsAndVibration => 'Sons e vibracións';

  @override
  String get soundsAndVibrationSubtitle =>
      'Ton de chamada, vibración, tons do teclado de marcación';

  @override
  String couldNotOpenSettings(String error) {
    return 'Non se puido abrir a configuración: $error';
  }

  @override
  String get frequentlyContacted => 'Contactado con frecuencia';

  @override
  String get numberOfRecords => 'Número de rexistros';

  @override
  String get timePeriod => 'Período de tempo';

  @override
  String get periodLast24Hours => 'Últimas 24 horas';

  @override
  String get periodLast24HoursSubtitle => 'Chamadas do pasado día';

  @override
  String get periodLast7Days => 'Últimos 7 días';

  @override
  String get periodLast7DaysSubtitle => 'Chamadas da semana pasada';

  @override
  String get periodLast30Days => 'Últimos 30 días';

  @override
  String get periodLast30DaysSubtitle => 'Chamadas do mes pasado';

  @override
  String get periodLast12Months => 'Últimos 12 meses';

  @override
  String get periodLast12MonthsSubtitle => 'Chamadas do ano pasado';

  @override
  String get periodAllTime => 'Todo o tempo';

  @override
  String get periodAllTimeSubtitle => 'Historial de chamadas completo';

  @override
  String get frequentMaxOff => 'Desactivado';

  @override
  String frequentMaxCount(int count) {
    return '$count contactos';
  }

  @override
  String get torchBlink => 'Torch Blink';

  @override
  String get torchIncomingCall => 'Lanterna de chamada entrante';

  @override
  String get torchOutgoingCall => 'Lanterna de chamada saínte';

  @override
  String get torchOngoingCall => 'Facho de chamada en curso';

  @override
  String get torchIncomingInterval => 'Intervalo de parpadeo entrante';

  @override
  String get torchOutgoingInterval => 'Intervalo de parpadeo de saída';

  @override
  String get torchOngoingInterval => 'Intervalo de parpadeo en curso';

  @override
  String get torchOff => 'Desactivado';

  @override
  String get torchOffIncomingSubtitle => 'Sen facho mentres soa';

  @override
  String get torchOffOutgoingSubtitle => 'Sen facho mentres marca';

  @override
  String get torchOffOngoingSubtitle =>
      'Non hai lanterna durante a chamada activa';

  @override
  String get torchFixedInterval => 'Intervalo fixo';

  @override
  String get torchFixedIntervalSubtitle =>
      'Parpadea a unha velocidade establecida';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds pestanexo';
  }

  @override
  String get flashlightUnavailable =>
      'A lanterna non está dispoñible neste dispositivo';

  @override
  String get glyphLights => 'Luces glifos';

  @override
  String get glyphCallingAnimation => 'Animación de chamadas de glifos';

  @override
  String get glyphOngoingAnimation => 'Animación de chamadas en curso glifo';

  @override
  String get glyphNone => 'Ningún';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Desactiva as luces de glifo para as chamadas saíntes';

  @override
  String get glyphNoneInCallSubtitle =>
      'Desactiva as luces de glifos mentres estás activamente en chamada';

  @override
  String get glyphBreathProgress => 'Respiración e progreso';

  @override
  String get glyphBreathProgressSubtitle =>
      'As luces respiran mentres a liña se enche durante 65 segundos';

  @override
  String get glyphAccumulate => 'Acumular';

  @override
  String get glyphAccumulateSubtitle =>
      'Acumulación de animación nas luces C1-C4';

  @override
  String get glyphSingle => 'Solteiro';

  @override
  String get glyphSingleSubtitle => 'Luz única movéndose por C1-C4';

  @override
  String get glyphBreath => 'respiración';

  @override
  String get glyphBreathSubtitle => 'Escolle luces e velocidade';

  @override
  String get glyphSteady => 'Estable';

  @override
  String get glyphSteadySubtitle => 'As luces seleccionadas permanecen acesas';

  @override
  String get breathSettings => 'Configuración da respiración';

  @override
  String get activeLights => 'Luces activas';

  @override
  String lightsCount(int count) {
    return '$count luces';
  }

  @override
  String get speedSettings => 'Configuración de velocidade';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms de atraso';
  }

  @override
  String get durationAndSpeed => 'Duración e velocidade';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s de duración, ${interval}ms de intervalo';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get done => 'Feito';

  @override
  String get save => 'Gardar';

  @override
  String get block => 'Bloquear';

  @override
  String get delete => 'Eliminar';

  @override
  String get recents => 'Recentes';

  @override
  String get contacts => 'Contactos';

  @override
  String get hideFavouritesOnRecents => 'Ocultar favoritos en Recentes';

  @override
  String get showFavouritesOnRecents => 'Mostrar os favoritos en Recentes';

  @override
  String get ongoingCall => 'Chamada en curso';

  @override
  String get setAsDefaultTitle => 'ESTABLECER COMO\nPREDETERMINADO';

  @override
  String get setAsDefaultBody =>
      'Para usar Nothing Dialer, debe configurarse como a aplicación predeterminada do teléfono. Isto permítelle xestionar chamadas, ver o historial e usar animacións de Glifo.';

  @override
  String get setAsDefaultButton => 'ESTABLECER COMO PREDETERMINADO';

  @override
  String get nothingDialerBrand => 'NADA MARCADOR 1';

  @override
  String get favourites => 'Favoritos';

  @override
  String get addFavourite => 'Engadir favorito';

  @override
  String get favouritesDrawerHint =>
      'Use o menú para engadir contactos. Toca fóra do caixón ou pecha o dedo. Destaca un contacto a partir dos seus detalles ou mantén presionada unha chamada en Recentes.';

  @override
  String get menu => 'Menú';

  @override
  String get noFavouritesYet =>
      'Aínda non hai favoritos.\nAbre o menú para engadir un ou estrela un contacto.';

  @override
  String get contactsPermissionNeeded => 'Necesítase permiso de contactos';

  @override
  String get chooseContact => 'Escolle contacto';

  @override
  String get noPhone => 'Sen teléfono';

  @override
  String get pickNumber => 'Escolla o número';

  @override
  String get contactHasNoPhone => 'Este contacto non ten número de teléfono';

  @override
  String get blockNumber => 'Número de bloque';

  @override
  String get enterPhoneNumber => 'Introduce o número de teléfono';

  @override
  String unblockedDisplay(String display) {
    return 'Desbloqueado $display';
  }

  @override
  String get couldNotUnblockNumber => 'Non se puido desbloquear o número';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bloqueado • $matched coincidente';
  }

  @override
  String get contactsPermissionMissing =>
      'Falta o permiso de contactos. Toca para corrixir.';

  @override
  String get noBlockedNumbers => 'Non hai números bloqueados';

  @override
  String get unknownContact => 'Contacto descoñecido';

  @override
  String get unblock => 'Desbloquear';

  @override
  String get permissionNeeded => 'Necesítase permiso';

  @override
  String get grantPhonePermission =>
      'Concede permiso ao teléfono para ver o teu historial de chamadas.';

  @override
  String get grantContactsPermission =>
      'Concede permiso aos contactos para ver a túa axenda de enderezos.';

  @override
  String get openSettings => 'Abre Configuración';

  @override
  String get tryAgain => 'Téntao de novo';

  @override
  String get couldNotLoadContacts => 'Non se puideron cargar os contactos';

  @override
  String get contactsLoadError =>
      'Produciuse un erro ao ler a túa axenda de enderezos.';

  @override
  String get noContactsFound => 'Non se atoparon contactos';

  @override
  String get contactsEmptySubtitle =>
      'Os contactos do teu dispositivo aparecerán aquí.';

  @override
  String get searchContacts => 'Buscar contactos...';

  @override
  String get searchRecentCalls => 'Busca chamadas recentes';

  @override
  String get fromContacts => 'De contactos';

  @override
  String get recentsSearchSection => 'Busca recentes';

  @override
  String get recentsSearchShowContacts => 'Mostrar contactos na busca';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Mentres buscas Recentes, amosa tamén as persoas coincidentes da túa axenda de enderezos debaixo dos resultados do historial de chamadas.';

  @override
  String get voiceSearch => 'Busca por voz';

  @override
  String get createNewContact => 'Crear un novo contacto';

  @override
  String callError(String error) {
    return 'Erro de chamada: $error';
  }

  @override
  String get noRecentCalls => 'Non hai chamadas recentes';

  @override
  String get callHistoryEmpty => 'O teu historial de chamadas aparecerá aquí.';

  @override
  String get loadMore => 'Cargar máis';

  @override
  String get frequentlyContactedHeader => 'Contactado con frecuencia';

  @override
  String get recentHistory => 'Historia recente';

  @override
  String get noFavouritesRecentsHint =>
      'Aínda non hai favoritos. Destaca un contacto, mantén presionada unha chamada ou usa a pestana Favoritos.';

  @override
  String get copyNumber => 'Número de copia';

  @override
  String get editNumberBeforeCall => 'Edita o número antes de chamar';

  @override
  String get removeFromFavourites => 'Eliminar dos favoritos';

  @override
  String get addToFavourites => 'Engadir a favoritos';

  @override
  String get blockNumberQuestion => 'Número de bloque?';

  @override
  String blockNumberConfirm(String number) {
    return 'Xa non recibirás chamadas nin mensaxes de texto desde $number.';
  }

  @override
  String get blocked => 'Bloqueado';

  @override
  String get couldNotBlock => 'Non se puido bloquear';

  @override
  String get contactNotOnDevice => 'O contacto non se gardou neste dispositivo';

  @override
  String get unblocked => 'Desbloqueado';

  @override
  String get numberCopied => 'Copiouse o número';

  @override
  String get showLess => 'Mostrar menos';

  @override
  String get showAllTimes => 'Mostrar todos os tempos';

  @override
  String mostRecent(String time) {
    return 'Máis recente · $time';
  }

  @override
  String get videoCall => 'Videochamada';

  @override
  String get couldNotPlaceVideoCall => 'Non se puido realizar a videochamada';

  @override
  String get message => 'Mensaxe';

  @override
  String get couldNotOpenMessaging =>
      'Non se puido abrir a aplicación de mensaxería';

  @override
  String get history => 'Historia';

  @override
  String get viewContact => 'Ver contacto';

  @override
  String get addToContact => 'Engadir ao contacto';

  @override
  String get callTypeMissed => 'Perdeuse';

  @override
  String get callTypeRejected => 'Rexeitado';

  @override
  String get callTypeIncoming => 'Entrante';

  @override
  String get callTypeOutgoing => 'Saínte';

  @override
  String get today => 'Hoxe';

  @override
  String get yesterday => 'Onte';

  @override
  String get justNow => 'Xusto agora';

  @override
  String minutesAgo(int count) {
    return 'hai $count min';
  }

  @override
  String hoursAgo(int count) {
    return 'hai $count h';
  }

  @override
  String get filterAll => 'Todos';

  @override
  String get filterMissed => 'Perdeuse';

  @override
  String get filterContacts => 'Contactos';

  @override
  String get filterNonContacts => 'Non contactos';

  @override
  String get iconUpdated =>
      'Icona actualizada. A túa pantalla de inicio pode tardar un momento en actualizarse.';

  @override
  String get iconSavedRelease =>
      'Elección gardada. A icona da pantalla de inicio actualízase nas versións.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Non se puido cambiar a icona: $error';
  }

  @override
  String get launcherClassicBlack => 'Clásico (negro)';

  @override
  String get launcherLight => 'Luz';

  @override
  String get launcherNothingRed => 'Nada vermello';

  @override
  String get launcherDarkGrey => 'Gris escuro';

  @override
  String get launcherCream => 'Crema';

  @override
  String get launcherRetroPhone => 'Teléfono retro';

  @override
  String get launcherRetroPhoneLight => 'Teléfono retro (luz)';

  @override
  String get voiceSearchUnavailable =>
      'A busca por voz non está dispoñible neste dispositivo.';

  @override
  String voiceSearchFailed(String error) {
    return 'Fallou a busca por voz: $error';
  }

  @override
  String get customColor => 'Personalizado';

  @override
  String get selectColor => 'Selecciona a cor';

  @override
  String get reset => 'Restablecer';

  @override
  String get simPickerTitle => 'Escolla SIM';

  @override
  String get simChooseForCall => 'Escolle SIM para esta chamada';

  @override
  String get defaultSimAsk => 'Pregunta cada vez';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Datos de contacto';

  @override
  String get call => 'Chamar';

  @override
  String get share => 'Compartir';

  @override
  String get favourite => 'Favorito';

  @override
  String get unfavourite => 'Desfavorito';

  @override
  String get blockContact => 'Bloquear contacto';

  @override
  String get unblockContact => 'Desbloquear contacto';

  @override
  String get deleteContact => 'Eliminar contacto';

  @override
  String get phone => 'Teléfono';

  @override
  String get email => 'Correo electrónico';

  @override
  String get ringtone => 'Ton de chamada';

  @override
  String get defaultRingtone => 'Por defecto';

  @override
  String get simForContact => 'SIM para este contacto';

  @override
  String get callHistoryTitle => 'Historial de chamadas';

  @override
  String get noCallsWithNumber => 'Non hai chamadas con este número';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animación de glifos';

  @override
  String get inCallGlyphAnimationStyle =>
      'Animación de glifos durante a chamada';

  @override
  String get recordsOff => 'Desactivado';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'SIM predeterminada';

  @override
  String get nothingPhoneOnly => 'Nada Só por teléfono';

  @override
  String get nothingPhoneOnlySubtitle =>
      'As funcións de Glyph requiren un teléfono Nothing';

  @override
  String get custom => 'Personalizado';

  @override
  String presetColorHex(String hex) {
    return 'Predefinido · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Personalizado · $hex';
  }

  @override
  String get oneContact => '1 contacto';

  @override
  String upToContacts(int count) {
    return 'Ata $count contactos';
  }

  @override
  String get answerButtonTapSubtitle => 'Toca o botón para responder';

  @override
  String get filterCalls => 'Filtrar chamadas';

  @override
  String get filterTooltip => 'Filtro';

  @override
  String get settingsTooltip => 'Configuración';

  @override
  String get filterAllSubtitle => 'Rexistro de chamadas completo';

  @override
  String get filterMissedSubtitle => 'Perdida e rexeitada';

  @override
  String get filterContactsSubtitle =>
      'As chamadas coincidiron cun contacto gardado';

  @override
  String get filterNonContactsSubtitle =>
      'Números que non están na súa axenda de enderezos';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Chamada en curso: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM predeterminada para chamadas';

  @override
  String get blinkInterval => 'Intervalo de parpadeo';

  @override
  String get close => 'Pechar';

  @override
  String get frequentlyContactedInfoBody =>
      'Mostra os teus números de teléfono máis chamados na parte superior da pestana Recentes, en función do número de chamadas entrantes, saíntes, perdidas ou rexeitadas que tiveches con cada número no período de tempo que escollas.\n\nNúmero de rexistros: configuralo en 0 para desactivalo. Use 1–20 para mostrar moitos contactos principais.\n\nO período de tempo só se aplica cando se mostra polo menos un contacto.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count luces, ${ms}ms de velocidade';
  }

  @override
  String get deleteContactQuestion => 'Queres eliminar o contacto?';

  @override
  String get deleteContactBody =>
      'Este contacto eliminarase permanentemente do teu dispositivo.';

  @override
  String get blockContactQuestion => 'Queres bloquear o contacto?';

  @override
  String get unblockContactQuestion => 'Queres desbloquear o contacto?';

  @override
  String get blockContactBody =>
      'Xa non recibirás chamadas nin mensaxes de texto deste contacto.';

  @override
  String get unblockContactBody =>
      'Comezarás a recibir chamadas e mensaxes de texto deste contacto.';

  @override
  String get contactBlocked => 'Contacto bloqueado';

  @override
  String get contactUnblocked => 'Contacto desbloqueado';

  @override
  String get noPhoneNumbersToBlock =>
      'Non hai números de teléfono que bloquear';

  @override
  String get simSameAsSystem => 'Igual que o sistema';

  @override
  String get simSameAsSystemSubtitle =>
      'Segue a SIM predeterminada en Configuración';

  @override
  String get simAskEveryTimeForContact =>
      'Mostra sempre o selector SIM para este contacto';

  @override
  String get ringtoneSetForContact =>
      'O ton de chamada definido globalmente para este contacto';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Produciuse un erro ao escoller o ton de chamada: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Erro: $error';
  }

  @override
  String get noCallHistoryFound => 'Non se atopou ningún historial de chamadas';

  @override
  String get speedDialVoicemail => 'Marcación rápida: correo de voz';

  @override
  String shareContactSubject(String name) {
    return 'Contacto: $name';
  }

  @override
  String get contactInfo => 'Información de contacto';

  @override
  String get dontAskAgainSim => 'Non volvas preguntar';

  @override
  String get simDontAskAgainSubtitle =>
      'Usa esta SIM como predeterminada (cambiar en Configuración)';

  @override
  String get addContact => 'Engadir contacto';

  @override
  String get createContact => 'Crear contacto';

  @override
  String get paste => 'Pegar';

  @override
  String get clear => 'Limpar';

  @override
  String get returnToCall => 'Volver á chamada';

  @override
  String get numberOfRecordsTitle => 'Número de rexistros';

  @override
  String get recordsPickerSubtitle =>
      'Cantas entradas de contacto frecuente mostrar (0 = desactivado)';

  @override
  String get torchInfoTitle => 'Pestanexo do facho';

  @override
  String get torchInfoBody =>
      'O flash da cámara parpadea durante as chamadas entrantes, saíntes ou en curso. Independente das luces de Glifo.';

  @override
  String get glyphMapTitle => 'Disposición de glifos';

  @override
  String get glyphMapBody =>
      'Nothing Phone 1 Glyph zonas LED. As animacións de saída e de chamada usan estas canles.';

  @override
  String get answerMethodTitle => 'Método de resposta';

  @override
  String get glyphOutgoingCallStyleTitle => 'Estilo de chamada saínte';

  @override
  String get glyphInCallAnimationTitle =>
      'Animación de glifos durante a chamada';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Lanterna de chamada entrante';

  @override
  String get torchOutgoingTitle => 'Lanterna de chamada saínte';

  @override
  String get torchOngoingTitle => 'Facho de chamada en curso';

  @override
  String get timePeriodTitle => 'Período de tempo';

  @override
  String get ok => 'Aceptar';

  @override
  String get confirmDeleteCall => 'Queres eliminar esta chamada do historial?';

  @override
  String get confirmDeleteAllCalls =>
      'Queres eliminar todas as chamadas con este número?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Envía unha mensaxe';

  @override
  String get addToExistingContactAction => 'Engadir a un contacto';

  @override
  String get mobileLabel => 'Móbil';

  @override
  String get callingSimForContactTitle => 'Chamando á SIM para este contacto';

  @override
  String get contactSettings => 'Configuración de contactos';

  @override
  String get setCallingSim => 'Establece a SIM de chamada';

  @override
  String get contactRingtone => 'Ton de chamada de contacto';

  @override
  String get shareContact => 'Compartir contacto';

  @override
  String get blockNumbers => 'Números de bloque';

  @override
  String get unblockNumbers => 'Desbloquear números';

  @override
  String get connectedApps => 'Aplicacións conectadas';

  @override
  String get simNotSet => 'Non definido';

  @override
  String get ringtoneDefault => 'Por defecto';

  @override
  String get customRingtone => 'Personalizado';

  @override
  String get aboutSection => 'Sobre';

  @override
  String get aboutFeedbackSection => 'Sobre e comentarios';

  @override
  String get aboutDescription =>
      'Nothing Dialer é de código aberto. Se es un programador, podes explorar o código e contribuír.';

  @override
  String get aboutViewSource => 'Ver en GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Non se puido abrir a ligazón';

  @override
  String get reviewSection => 'Revisión';

  @override
  String get reviewDescription =>
      'Queres gozar de Nothing Dialer? A túa valoración en Google Play axuda a outros a atopar a aplicación.';

  @override
  String get reviewRateOnPlay => 'Valora en Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Non se puido abrir Google Play';

  @override
  String get breathSpeed => 'Velocidade da respiración';

  @override
  String get breathSpeedBlinkHint =>
      'Baixo = Pestanexo, Superior = Respiración lenta';

  @override
  String get speedSliderHint => 'Baixo = máis rápido, máis alto = máis lento';

  @override
  String get swatchDefault => 'Por defecto';

  @override
  String get customAccentColorPicker => 'Cor de acento personalizado';

  @override
  String get customLightBackgroundPicker => 'Fondo claro personalizado';

  @override
  String get customDarkBackgroundPicker => 'Fondo escuro personalizado';

  @override
  String get customCallBackgroundPicker => 'Fondo de chamada personalizado';

  @override
  String get ongoingCallStyleTitle => 'Estilo de chamada en curso';

  @override
  String get glyphMapUnavailable => 'O mapa de glifos non está dispoñible';

  @override
  String get animationDelayRange => 'Retraso da animación (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Retraso da animación (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Silenciar';

  @override
  String get inCallKeypad => 'Teclado';

  @override
  String get inCallSpeaker => 'Orador';

  @override
  String get inCallMore => 'Máis';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Teléfono';

  @override
  String get inCallAddCall => 'Engadir chamada';

  @override
  String get inCallChangeSim => 'Cambiar SIM';

  @override
  String get inCallDecline => 'Declinar';

  @override
  String get inCallAnswer => 'Resposta';

  @override
  String get inCallMessage => 'Mensaxe';

  @override
  String get inCallCalling => 'Chamando…';

  @override
  String get inCallIncoming => 'Chamada entrante';

  @override
  String get inCallSelectSim => 'Selecciona SIM...';

  @override
  String get inCallSwitchingSim => 'Cambiando SIM...';

  @override
  String get inCallCallEnded => 'Rematou a chamada';

  @override
  String inCallCallingVia(String sim) {
    return 'Chamando por $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Chamando a través do <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Escolle SIM para esta chamada';

  @override
  String get inCallDragAnswerDecline =>
      'Arrastre á dereita para responder · Arrastre á esquerda para rexeitar';

  @override
  String inCallMobileNumber(String number) {
    return 'Móbil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Actual)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Chama a través do <b>$sim</b> desde';
  }

  @override
  String get inCallCallFrom => 'Chamar dende';

  @override
  String get inCallUnknown => 'Descoñecido';

  @override
  String get selectContactRingtone => 'Seleccione o ton de chamada de contacto';

  @override
  String get speakToSearchPrompt => 'Fala para buscar';

  @override
  String get phonePermissionRequired => 'Requírese permiso do teléfono';

  @override
  String callFailed(String error) {
    return 'Fallou a chamada: $error';
  }

  @override
  String get callPermissionDenied => 'Permiso de chamada denegado';

  @override
  String get alreadyDefaultDialer =>
      'Xa está definido como marcador predeterminado';

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
