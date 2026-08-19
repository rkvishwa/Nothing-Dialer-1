// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Nada marcador';

  @override
  String get settings => 'Ajustes';

  @override
  String get settingsSearchHint => 'Configuración de búsqueda';

  @override
  String get settingsSearchNoResults => 'No se encontraron configuraciones';

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
  String get themeSystemDefault => 'Predeterminado del sistema';

  @override
  String get themeLight => 'Luz';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get themeFollowSystem => 'Seguir la configuración del sistema';

  @override
  String get themeAlwaysLight => 'Utilice siempre un tema claro';

  @override
  String get themeAlwaysDark => 'Utilice siempre el tema oscuro';

  @override
  String get language => 'Idioma';

  @override
  String get languageDeviceDefault => 'Predeterminado del dispositivo';

  @override
  String get languagePickerTitle => 'Idioma';

  @override
  String get languageSearchHint => 'Buscar idiomas';

  @override
  String get font => 'Fuente';

  @override
  String get fontSystem => 'Valor predeterminado del sistema';

  @override
  String get fontNdot => 'Nada (punto)';

  @override
  String get fontSerif => 'robot serif';

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
      'Error al descargar la fuente. Comprueba tu conexión y vuelve a intentarlo.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Fuente';

  @override
  String get fontPreviewSample => 'Nada marcador';

  @override
  String get fontAppWide => 'fuente de la aplicación';

  @override
  String get fontApplyTo => 'Referirse a';

  @override
  String get fontApplyEntireApp => 'Toda la aplicación';

  @override
  String get fontApplyEntireAppSubtitle =>
      'La misma fuente en todas partes, incluso durante las llamadas';

  @override
  String get fontApplyTitlesOnly => 'Títulos y encabezados';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Sólo títulos grandes y encabezados de sección';

  @override
  String get fontApplyCustomize => 'Personalizar';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Elija fuente por pantalla y tipo de texto';

  @override
  String get fontCustomizeSection => 'Personalizar por pantalla';

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
  String get fontRolePageTitle => 'Título de la página';

  @override
  String get fontRoleSectionHeader => 'Encabezado de sección';

  @override
  String get fontRolePrimary => 'texto primario';

  @override
  String get fontRoleSecondary => 'Texto secundario';

  @override
  String get fontRoleButton => 'Botones';

  @override
  String get fontRoleDialKey => 'Teclas del teclado';

  @override
  String get fontSurfaceRecents => 'Recientes';

  @override
  String get fontSurfaceContacts => 'Contactos';

  @override
  String get fontSurfaceSettings => 'Ajustes';

  @override
  String get fontSurfaceDialpad => 'Teclado';

  @override
  String get fontSurfaceShell => 'Navegación';

  @override
  String get fontSurfaceDefaultDialer => 'Mensaje de marcador predeterminado';

  @override
  String get fontSurfaceFavourites => 'Favoritos';

  @override
  String get fontSurfaceBlocked => 'Números bloqueados';

  @override
  String get fontSurfaceContactDetail => 'Detalle de contacto';

  @override
  String get fontSurfaceCallHistory => 'Historial de llamadas';

  @override
  String get fontSurfaceSheets => 'Hojas y recolectores';

  @override
  String get fontSurfaceInCall => 'Pantalla de llamada';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — aplicación completa';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — solo títulos';
  }

  @override
  String get fontSubtitleCustomize => 'Personalizado por pantalla';

  @override
  String get background => 'Fondo';

  @override
  String get accent => 'Acento';

  @override
  String get lightBackground => 'fondo claro';

  @override
  String get lightAccent => 'Acento ligero';

  @override
  String get darkBackground => 'fondo oscuro';

  @override
  String get darkAccent => 'acento oscuro';

  @override
  String get callBackground => 'Fondo de llamada';

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
  String get appIcon => 'icono de la aplicación';

  @override
  String get answerMethod => 'Método de respuesta';

  @override
  String get answerSlide => 'Desliza para responder';

  @override
  String get answerSlideSubtitle =>
      'Desliza el dedo hacia la izquierda o hacia la derecha en la barra, como en Google Phone';

  @override
  String get answerButton => 'Toque de botón';

  @override
  String get answerButtonSubtitle =>
      'Toque los botones de responder o rechazar';

  @override
  String get answerHuawei => 'estilo huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Arrastra el círculo hasta el teléfono verde para contestar.';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei: arrastre a verde/rojo';

  @override
  String get calling => 'Vocación';

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
  String get defaultSim => 'Tarjeta SIM predeterminada';

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
  String get askEveryTime => 'pregunta cada vez';

  @override
  String get askEveryTimeSubtitle =>
      'Mostrar el selector de SIM antes de cada llamada';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'No se encontraron tarjetas SIM';

  @override
  String couldNotLoadSims(String error) {
    return 'No se pudieron cargar las tarjetas SIM: $error';
  }

  @override
  String get allFavourites => 'Todos los favoritos';

  @override
  String get allFavouritesSubtitle =>
      'Reordenar, eliminar y agregar de contactos';

  @override
  String get blockedNumbers => 'Números bloqueados';

  @override
  String get blockedNumbersSubtitle => 'Ver y desbloquear números';

  @override
  String get soundsAndVibration => 'Sonidos y vibraciones';

  @override
  String get soundsAndVibrationSubtitle =>
      'Tono de llamada, vibración, tonos del teclado de marcación';

  @override
  String couldNotOpenSettings(String error) {
    return 'No se pudo abrir la configuración: $error';
  }

  @override
  String get frequentlyContacted => 'Contactado con frecuencia';

  @override
  String get numberOfRecords => 'Número de registros';

  @override
  String get timePeriod => 'Periodo de tiempo';

  @override
  String get periodLast24Hours => 'Últimas 24 horas';

  @override
  String get periodLast24HoursSubtitle => 'Llamadas del dia pasado';

  @override
  String get periodLast7Days => 'últimos 7 días';

  @override
  String get periodLast7DaysSubtitle => 'Llamadas de la semana pasada';

  @override
  String get periodLast30Days => 'últimos 30 días';

  @override
  String get periodLast30DaysSubtitle => 'Llamadas del mes pasado';

  @override
  String get periodLast12Months => 'últimos 12 meses';

  @override
  String get periodLast12MonthsSubtitle => 'Llamadas del año pasado';

  @override
  String get periodAllTime => 'Todo el tiempo';

  @override
  String get periodAllTimeSubtitle => 'Todo el historial de llamadas';

  @override
  String get frequentMaxOff => 'Apagado';

  @override
  String frequentMaxCount(int count) {
    return '$count contactos';
  }

  @override
  String get torchBlink => 'Parpadeo de la antorcha';

  @override
  String get torchIncomingCall => 'Antorcha de llamada entrante';

  @override
  String get torchOutgoingCall => 'Antorcha de llamada saliente';

  @override
  String get torchOngoingCall => 'Antorcha de llamada en curso';

  @override
  String get torchIncomingInterval => 'Intervalo de parpadeo entrante';

  @override
  String get torchOutgoingInterval => 'Intervalo de parpadeo saliente';

  @override
  String get torchOngoingInterval => 'Intervalo de parpadeo continuo';

  @override
  String get torchOff => 'Apagado';

  @override
  String get torchOffIncomingSubtitle => 'Sin antorcha mientras suena';

  @override
  String get torchOffOutgoingSubtitle => 'Sin antorcha mientras se marca';

  @override
  String get torchOffOngoingSubtitle =>
      'Sin antorcha durante la llamada activa';

  @override
  String get torchFixedInterval => 'Intervalo fijo';

  @override
  String get torchFixedIntervalSubtitle =>
      'Parpadea a una velocidad determinada';

  @override
  String torchIntervalSeconds(String seconds) {
    return '${seconds}s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds parpadear';
  }

  @override
  String get flashlightUnavailable =>
      'Linterna no disponible en este dispositivo';

  @override
  String get glyphLights => 'Luces de glifos';

  @override
  String get glyphCallingAnimation => 'Animación de llamada de glifos';

  @override
  String get glyphOngoingAnimation => 'Animación de llamada en curso de glifo';

  @override
  String get glyphNone => 'Ninguno';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Desactivar las luces de glifo para llamadas salientes';

  @override
  String get glyphNoneInCallSubtitle =>
      'Desactiva las luces de Glyph mientras estás de guardia activamente';

  @override
  String get glyphBreathProgress => 'Aliento y progreso';

  @override
  String get glyphBreathProgressSubtitle =>
      'Las luces respiran mientras la fila se llena a más de 65 años';

  @override
  String get glyphAccumulate => 'Acumular';

  @override
  String get glyphAccumulateSubtitle =>
      'Animación acumulada en las luces C1-C4.';

  @override
  String get glyphSingle => 'Soltero';

  @override
  String get glyphSingleSubtitle => 'Una sola luz se mueve a través de C1-C4';

  @override
  String get glyphBreath => 'Aliento';

  @override
  String get glyphBreathSubtitle => 'Elige luces y velocidad';

  @override
  String get glyphSteady => 'Estable';

  @override
  String get glyphSteadySubtitle =>
      'Las luces seleccionadas permanecen encendidas';

  @override
  String get breathSettings => 'Configuración de respiración';

  @override
  String get activeLights => 'Luces activas';

  @override
  String lightsCount(int count) {
    return '$count luces';
  }

  @override
  String get speedSettings => 'Configuración de velocidad';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms de retraso';
  }

  @override
  String get durationAndSpeed => 'Duración y velocidad';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s de duración, ${interval}ms de intervalo';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get done => 'Listo';

  @override
  String get save => 'Ahorrar';

  @override
  String get block => 'Bloquear';

  @override
  String get delete => 'Borrar';

  @override
  String get recents => 'Recientes';

  @override
  String get contacts => 'Contactos';

  @override
  String get hideFavouritesOnRecents => 'Ocultar favoritos en Recientes';

  @override
  String get showFavouritesOnRecents => 'Mostrar favoritos en Recientes';

  @override
  String get ongoingCall => 'llamada en curso';

  @override
  String get setAsDefaultTitle => 'ESTABLECER COMO\nPREDETERMINADO';

  @override
  String get setAsDefaultBody =>
      'Para utilizar Nothing Dialer, debe configurarlo como su aplicación de teléfono predeterminada. Esto le permite administrar llamadas, ver el historial y usar animaciones de Glyph.';

  @override
  String get setAsDefaultButton => 'ESTABLECER POR DEFECTO';

  @override
  String get nothingDialerBrand => 'NADA MARCADOR 1';

  @override
  String get favourites => 'Favoritos';

  @override
  String get addFavourite => 'Agregar favorito';

  @override
  String get favouritesDrawerHint =>
      'Utilice el menú para agregar contactos. Toque fuera del cajón o deslícelo para cerrarlo. Destaca un contacto a partir de sus detalles o mantén presionada una llamada en Recientes.';

  @override
  String get menu => 'Menú';

  @override
  String get noFavouritesYet =>
      'Aún no hay favoritos.\nAbra el menú para agregar uno o destacar un contacto.';

  @override
  String get contactsPermissionNeeded => 'Se necesita permiso de contactos';

  @override
  String get chooseContact => 'Elige contacto';

  @override
  String get noPhone => 'sin telefono';

  @override
  String get pickNumber => 'elegir número';

  @override
  String get contactHasNoPhone => 'Este contacto no tiene número de teléfono';

  @override
  String get blockNumber => 'Número de bloque';

  @override
  String get enterPhoneNumber => 'Introduce el número de teléfono';

  @override
  String unblockedDisplay(String display) {
    return 'Desbloqueado $display';
  }

  @override
  String get couldNotUnblockNumber => 'No se pudo desbloquear el número';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bloqueado • $matched emparejado';
  }

  @override
  String get contactsPermissionMissing =>
      'Falta el permiso de contactos. Toque para arreglarlo.';

  @override
  String get noBlockedNumbers => 'Sin números bloqueados';

  @override
  String get unknownContact => 'Contacto desconocido';

  @override
  String get unblock => 'Desatascar';

  @override
  String get permissionNeeded => 'Permiso necesario';

  @override
  String get grantPhonePermission =>
      'Otorgue permiso al teléfono para ver su historial de llamadas.';

  @override
  String get grantContactsPermission =>
      'Conceda permiso a los contactos para ver su libreta de direcciones.';

  @override
  String get openSettings => 'Abrir configuración';

  @override
  String get tryAgain => 'Intentar otra vez';

  @override
  String get couldNotLoadContacts => 'No se pudieron cargar los contactos';

  @override
  String get contactsLoadError =>
      'Algo salió mal al leer tu libreta de direcciones.';

  @override
  String get noContactsFound => 'No se encontraron contactos';

  @override
  String get contactsEmptySubtitle =>
      'Los contactos de su dispositivo aparecerán aquí.';

  @override
  String get searchContacts => 'Buscar contactos…';

  @override
  String get searchRecentCalls => 'Buscar llamadas recientes';

  @override
  String get fromContacts => 'De contactos';

  @override
  String get recentsSearchSection => 'Búsqueda reciente';

  @override
  String get recentsSearchShowContacts => 'Mostrar contactos en la búsqueda';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Mientras busca Recientes, también muestre personas coincidentes de su libreta de direcciones debajo de los resultados del historial de llamadas.';

  @override
  String get voiceSearch => 'Búsqueda por voz';

  @override
  String get createNewContact => 'Crear nuevo contacto';

  @override
  String callError(String error) {
    return 'Error de llamada: $error';
  }

  @override
  String get noRecentCalls => 'No hay llamadas recientes';

  @override
  String get callHistoryEmpty => 'Su historial de llamadas aparecerá aquí.';

  @override
  String get loadMore => 'Cargar más';

  @override
  String get frequentlyContactedHeader => 'Contactado frecuentemente';

  @override
  String get recentHistory => 'Historia reciente';

  @override
  String get noFavouritesRecentsHint =>
      'Aún no hay favoritos. Destaca un contacto, mantén presionada una llamada o usa la pestaña Favoritos.';

  @override
  String get copyNumber => 'Número de copia';

  @override
  String get editNumberBeforeCall => 'Editar número antes de llamar';

  @override
  String get removeFromFavourites => 'Quitar de favoritos';

  @override
  String get addToFavourites => 'Añadir a favoritos';

  @override
  String get blockNumberQuestion => '¿Número de bloque?';

  @override
  String blockNumberConfirm(String number) {
    return 'Ya no recibirás llamadas ni mensajes de texto de $number.';
  }

  @override
  String get blocked => 'Obstruido';

  @override
  String get couldNotBlock => 'No se pudo bloquear';

  @override
  String get contactNotOnDevice => 'Contacto no guardado en este dispositivo';

  @override
  String get unblocked => 'Desbloqueado';

  @override
  String get numberCopied => 'Número copiado';

  @override
  String get showLess => 'Mostrar menos';

  @override
  String get showAllTimes => 'Mostrar todos los horarios';

  @override
  String mostRecent(String time) {
    return 'Más reciente · $time';
  }

  @override
  String get videoCall => 'Videollamada';

  @override
  String get couldNotPlaceVideoCall => 'No se pudo realizar la videollamada';

  @override
  String get message => 'Mensaje';

  @override
  String get couldNotOpenMessaging =>
      'No se pudo abrir la aplicación de mensajería';

  @override
  String get history => 'Historia';

  @override
  String get viewContact => 'Ver contacto';

  @override
  String get addToContact => 'Añadir al contacto';

  @override
  String get callTypeMissed => 'Omitido';

  @override
  String get callTypeRejected => 'Rechazado';

  @override
  String get callTypeIncoming => 'Entrante';

  @override
  String get callTypeOutgoing => 'Extrovertido';

  @override
  String get today => 'Hoy';

  @override
  String get yesterday => 'Ayer';

  @override
  String get justNow => 'Ahora mismo';

  @override
  String minutesAgo(int count) {
    return '$count hace minutos';
  }

  @override
  String hoursAgo(int count) {
    return '$count hace horas';
  }

  @override
  String get filterAll => 'Todo';

  @override
  String get filterMissed => 'Omitido';

  @override
  String get filterContacts => 'Contactos';

  @override
  String get filterNonContacts => 'No contactos';

  @override
  String get iconUpdated =>
      'Icono actualizado. Es posible que su pantalla de inicio tarde un momento en actualizarse.';

  @override
  String get iconSavedRelease =>
      'Elección guardada. El ícono de la pantalla de inicio se actualiza en las versiones de lanzamiento.';

  @override
  String couldNotChangeIcon(String error) {
    return 'No se pudo cambiar el ícono: $error';
  }

  @override
  String get launcherClassicBlack => 'Clásico (negro)';

  @override
  String get launcherLight => 'Luz';

  @override
  String get launcherNothingRed => 'nada rojo';

  @override
  String get launcherDarkGrey => 'Gris oscuro';

  @override
  String get launcherCream => 'Crema';

  @override
  String get launcherRetroPhone => 'teléfono retro';

  @override
  String get launcherRetroPhoneLight => 'Teléfono retro (luz)';

  @override
  String get voiceSearchUnavailable =>
      'La búsqueda por voz no está disponible en este dispositivo.';

  @override
  String voiceSearchFailed(String error) {
    return 'La búsqueda por voz falló: $error';
  }

  @override
  String get customColor => 'Costumbre';

  @override
  String get selectColor => 'Seleccionar color';

  @override
  String get reset => 'Reiniciar';

  @override
  String get simPickerTitle => 'Elige SIM';

  @override
  String get simChooseForCall => 'Elija SIM para esta llamada';

  @override
  String get defaultSimAsk => 'pregunta cada vez';

  @override
  String defaultSimFixed(int slot) {
    return 'Tarjeta SIM $slot';
  }

  @override
  String get contactDetails => 'Detalles de contacto';

  @override
  String get call => 'Llamar';

  @override
  String get share => 'Compartir';

  @override
  String get favourite => 'Favorito';

  @override
  String get unfavourite => 'No favorito';

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
  String get ringtone => 'Tono de llamada';

  @override
  String get defaultRingtone => 'Por defecto';

  @override
  String get simForContact => 'SIM para este contacto';

  @override
  String get callHistoryTitle => 'Historial de llamadas';

  @override
  String get noCallsWithNumber => 'No hay llamadas con este número';

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
  String get inCallGlyphAnimationStyle => 'Animación de glifo de llamada';

  @override
  String get recordsOff => 'Apagado';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Tarjeta SIM predeterminada';

  @override
  String get nothingPhoneOnly => 'Nada solo teléfono';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Las funciones de Glyph requieren un Nothing Phone';

  @override
  String get custom => 'Personalizado';

  @override
  String presetColorHex(String hex) {
    return 'Preestablecido · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Personalizado · $hex';
  }

  @override
  String get oneContact => '1 contacto';

  @override
  String upToContacts(int count) {
    return 'Hasta $count contactos';
  }

  @override
  String get answerButtonTapSubtitle => 'Toque el botón para responder';

  @override
  String get filterCalls => 'Filtrar llamadas';

  @override
  String get filterTooltip => 'Filtrar';

  @override
  String get settingsTooltip => 'Ajustes';

  @override
  String get filterAllSubtitle => 'Registro de llamadas completo';

  @override
  String get filterMissedSubtitle => 'Perdido y rechazado';

  @override
  String get filterContactsSubtitle =>
      'Llamadas coincidentes con un contacto guardado';

  @override
  String get filterNonContactsSubtitle =>
      'Números que no están en tu libreta de direcciones';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Llamada en curso: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM predeterminada para llamadas';

  @override
  String get blinkInterval => 'Intervalo de parpadeo';

  @override
  String get close => 'Cerca';

  @override
  String get frequentlyContactedInfoBody =>
      'Muestra los números de teléfono más llamados en la parte superior de la pestaña Recientes, según la cantidad de llamadas entrantes, salientes, perdidas o rechazadas que tuvo con cada número en el período de tiempo que elija.\n\nNúmero de registros: configúrelo en 0 para desactivarlo. Utilice del 1 al 20 para mostrar cuántos contactos principales.\n\nEl período de tiempo se aplica solo cuando se muestra al menos un contacto.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count luces, ${ms}ms de velocidad';
  }

  @override
  String get deleteContactQuestion => '¿Eliminar contacto?';

  @override
  String get deleteContactBody =>
      'Este contacto se eliminará permanentemente de su dispositivo.';

  @override
  String get blockContactQuestion => '¿Bloquear contacto?';

  @override
  String get unblockContactQuestion => '¿Desbloquear contacto?';

  @override
  String get blockContactBody =>
      'Ya no recibirás llamadas ni mensajes de texto de este contacto.';

  @override
  String get unblockContactBody =>
      'Comenzarás a recibir llamadas y mensajes de texto de este contacto.';

  @override
  String get contactBlocked => 'Contacto bloqueado';

  @override
  String get contactUnblocked => 'Contacto desbloqueado';

  @override
  String get noPhoneNumbersToBlock =>
      'No hay números de teléfono para bloquear';

  @override
  String get simSameAsSystem => 'Igual que el sistema';

  @override
  String get simSameAsSystemSubtitle =>
      'Sigue la SIM predeterminada en la configuración';

  @override
  String get simAskEveryTimeForContact =>
      'Mostrar siempre el selector de SIM para este contacto';

  @override
  String get ringtoneSetForContact =>
      'Tono de llamada configurado globalmente para este contacto';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'No se pudo elegir el tono de llamada: $error';
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
  String get noCallHistoryFound => 'No se encontró historial de llamadas';

  @override
  String get speedDialVoicemail => 'Marcación rápida: correo de voz';

  @override
  String shareContactSubject(String name) {
    return 'Contacto: $name';
  }

  @override
  String get contactInfo => 'Información de contacto';

  @override
  String get dontAskAgainSim => 'no vuelvas a preguntar';

  @override
  String get simDontAskAgainSubtitle =>
      'Utilice esta SIM como predeterminada (cambiar en Configuración)';

  @override
  String get addContact => 'Añadir contacto';

  @override
  String get createContact => 'Crear contacto';

  @override
  String get paste => 'Pasta';

  @override
  String get clear => 'Claro';

  @override
  String get returnToCall => 'volver a llamar';

  @override
  String get numberOfRecordsTitle => 'Número de registros';

  @override
  String get recordsPickerSubtitle =>
      'Cuántas entradas contactadas con frecuencia mostrar (0 = desactivado)';

  @override
  String get torchInfoTitle => 'Parpadeo de la antorcha';

  @override
  String get torchInfoBody =>
      'Hace parpadear el flash de la cámara durante llamadas entrantes, salientes o en curso. Independiente de las luces de glifo.';

  @override
  String get glyphMapTitle => 'Diseño de glifo';

  @override
  String get glyphMapBody =>
      'Nada Teléfono 1 Zonas LED de glifo. Las animaciones de llamadas salientes y entrantes utilizan estos canales.';

  @override
  String get answerMethodTitle => 'Método de respuesta';

  @override
  String get glyphOutgoingCallStyleTitle => 'Estilo de llamada saliente';

  @override
  String get glyphInCallAnimationTitle =>
      'Animación de glifo durante la llamada';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Antorcha de llamada entrante';

  @override
  String get torchOutgoingTitle => 'Antorcha de llamada saliente';

  @override
  String get torchOngoingTitle => 'Antorcha de llamada en curso';

  @override
  String get timePeriodTitle => 'Periodo de tiempo';

  @override
  String get ok => 'DE ACUERDO';

  @override
  String get confirmDeleteCall => '¿Eliminar esta llamada del historial?';

  @override
  String get confirmDeleteAllCalls =>
      '¿Eliminar todas las llamadas con este número?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'enviar un mensaje';

  @override
  String get addToExistingContactAction => 'Agregar a un contacto';

  @override
  String get mobileLabel => 'Móvil';

  @override
  String get callingSimForContactTitle => 'Llamando a SIM para este contacto';

  @override
  String get contactSettings => 'Configuración de contacto';

  @override
  String get setCallingSim => 'Configurar SIM de llamada';

  @override
  String get contactRingtone => 'Tono de llamada de contacto';

  @override
  String get shareContact => 'Compartir contacto';

  @override
  String get blockNumbers => 'Números de bloque';

  @override
  String get unblockNumbers => 'Desbloquear números';

  @override
  String get connectedApps => 'Aplicaciones conectadas';

  @override
  String get simNotSet => 'No establecido';

  @override
  String get ringtoneDefault => 'Por defecto';

  @override
  String get customRingtone => 'Costumbre';

  @override
  String get aboutSection => 'Acerca de';

  @override
  String get aboutFeedbackSection => 'Acerca de y comentarios';

  @override
  String get aboutDescription =>
      'Nothing Dialer es código abierto. Si eres desarrollador, puedes explorar el código y contribuir.';

  @override
  String get aboutViewSource => 'Ver en GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'No se pudo abrir el enlace';

  @override
  String get reviewSection => 'Valoración';

  @override
  String get reviewDescription =>
      '¿Te gusta Nothing Dialer? Tu valoración en Google Play ayuda a otros a encontrar la app.';

  @override
  String get reviewRateOnPlay => 'Valorar en Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Abre la ficha de Google Play';

  @override
  String get reviewCouldNotOpen => 'No se pudo abrir Google Play';

  @override
  String get breathSpeed => 'Velocidad de respiración';

  @override
  String get breathSpeedBlinkHint =>
      'Inferior = Parpadeo, Superior = Respiración lenta';

  @override
  String get speedSliderHint => 'Inferior = Más rápido, Superior = Más lento';

  @override
  String get swatchDefault => 'Por defecto';

  @override
  String get customAccentColorPicker => 'Color de acento personalizado';

  @override
  String get customLightBackgroundPicker => 'Fondo claro personalizado';

  @override
  String get customDarkBackgroundPicker => 'Fondo oscuro personalizado';

  @override
  String get customCallBackgroundPicker => 'Fondo de llamada personalizado';

  @override
  String get ongoingCallStyleTitle => 'Estilo de llamada en curso';

  @override
  String get glyphMapUnavailable => 'Mapa de glifos no disponible';

  @override
  String get animationDelayRange => 'Retraso de animación (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Retraso de animación (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Silencio';

  @override
  String get inCallKeypad => 'Teclado';

  @override
  String get inCallSpeaker => 'Altavoz';

  @override
  String get inCallMore => 'Más';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Teléfono';

  @override
  String get inCallAddCall => 'Añadir llamada';

  @override
  String get inCallChangeSim => 'Cambiar SIM';

  @override
  String get inCallDecline => 'Rechazar';

  @override
  String get inCallAnswer => 'Contestar';

  @override
  String get inCallMessage => 'Mensaje';

  @override
  String get inCallCalling => 'Llamando…';

  @override
  String get inCallIncoming => 'Llamada entrante';

  @override
  String get inCallSelectSim => 'Seleccionar SIM…';

  @override
  String get inCallSwitchingSim => 'Cambiando SIM…';

  @override
  String get inCallCallEnded => 'Llamada finalizada';

  @override
  String inCallCallingVia(String sim) {
    return 'Llamando con $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Llamando con <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Elegir SIM para esta llamada';

  @override
  String get inCallDragAnswerDecline =>
      'Desliza a la derecha para contestar · a la izquierda para rechazar';

  @override
  String inCallMobileNumber(String number) {
    return 'Móvil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label  (Actual)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Llamada con <b>$sim</b> desde';
  }

  @override
  String get inCallCallFrom => 'Llamada de';

  @override
  String get inCallUnknown => 'Desconocido';

  @override
  String get selectContactRingtone => 'Seleccionar tono del contacto';

  @override
  String get speakToSearchPrompt => 'Habla para buscar';

  @override
  String get phonePermissionRequired => 'Se requiere permiso de teléfono';

  @override
  String callFailed(String error) {
    return 'Llamada fallida: $error';
  }

  @override
  String get callPermissionDenied => 'Permiso de llamada denegado';

  @override
  String get alreadyDefaultDialer => 'Ya es la app de teléfono predeterminada';

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

/// The translations for Spanish Castilian, as used in Latin America and the Caribbean (`es_419`).
class AppLocalizationsEs419 extends AppLocalizationsEs {
  AppLocalizationsEs419() : super('es_419');

  @override
  String get appTitle => 'Nada marcador';

  @override
  String get settings => 'Ajustes';

  @override
  String get settingsSearchHint => 'Configuración de búsqueda';

  @override
  String get settingsSearchNoResults => 'No se encontraron configuraciones';

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
  String get themeSystemDefault => 'Valor predeterminado del sistema';

  @override
  String get themeLight => 'Luz';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get themeFollowSystem => 'Seguir la configuración del sistema';

  @override
  String get themeAlwaysLight => 'Utilice siempre un tema claro';

  @override
  String get themeAlwaysDark => 'Utilice siempre el tema oscuro';

  @override
  String get language => 'Idioma';

  @override
  String get languageDeviceDefault => 'Dispositivo predeterminado';

  @override
  String get languagePickerTitle => 'Idioma';

  @override
  String get languageSearchHint => 'Idiomas de búsqueda';

  @override
  String get font => 'Fuente';

  @override
  String get fontSystem => 'Valor predeterminado del sistema';

  @override
  String get fontNdot => 'Nada (punto)';

  @override
  String get fontSerif => 'robot serif';

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
      'Error al descargar la fuente. Comprueba tu conexión y vuelve a intentarlo.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Fuente';

  @override
  String get fontPreviewSample => 'Nada marcador';

  @override
  String get fontAppWide => 'fuente de la aplicación';

  @override
  String get fontApplyTo => 'Referirse a';

  @override
  String get fontApplyEntireApp => 'Toda la aplicación';

  @override
  String get fontApplyEntireAppSubtitle =>
      'La misma fuente en todas partes, incluso durante las llamadas';

  @override
  String get fontApplyTitlesOnly => 'Títulos y encabezados';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Sólo títulos grandes y encabezados de sección';

  @override
  String get fontApplyCustomize => 'Personalizar';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Elija fuente por pantalla y tipo de texto';

  @override
  String get fontCustomizeSection => 'Personalizar por pantalla';

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
  String get fontRolePageTitle => 'Título de la página';

  @override
  String get fontRoleSectionHeader => 'Encabezado de sección';

  @override
  String get fontRolePrimary => 'texto primario';

  @override
  String get fontRoleSecondary => 'Texto secundario';

  @override
  String get fontRoleButton => 'Botones';

  @override
  String get fontRoleDialKey => 'Teclas del teclado';

  @override
  String get fontSurfaceRecents => 'Recientes';

  @override
  String get fontSurfaceContacts => 'Contactos';

  @override
  String get fontSurfaceSettings => 'Ajustes';

  @override
  String get fontSurfaceDialpad => 'Teclado';

  @override
  String get fontSurfaceShell => 'Navegación';

  @override
  String get fontSurfaceDefaultDialer => 'Mensaje de marcador predeterminado';

  @override
  String get fontSurfaceFavourites => 'Favoritos';

  @override
  String get fontSurfaceBlocked => 'Números bloqueados';

  @override
  String get fontSurfaceContactDetail => 'Detalle de contacto';

  @override
  String get fontSurfaceCallHistory => 'Historial de llamadas';

  @override
  String get fontSurfaceSheets => 'Hojas y recolectores';

  @override
  String get fontSurfaceInCall => 'Pantalla de llamada';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — aplicación completa';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — solo títulos';
  }

  @override
  String get fontSubtitleCustomize => 'Personalizado por pantalla';

  @override
  String get background => 'Fondo';

  @override
  String get accent => 'Acento';

  @override
  String get lightBackground => 'fondo claro';

  @override
  String get lightAccent => 'Acento ligero';

  @override
  String get darkBackground => 'fondo oscuro';

  @override
  String get darkAccent => 'acento oscuro';

  @override
  String get callBackground => 'Fondo de llamada';

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
  String get appIcon => 'icono de la aplicación';

  @override
  String get answerMethod => 'Método de respuesta';

  @override
  String get answerSlide => 'Desliza para responder';

  @override
  String get answerSlideSubtitle =>
      'Desliza el dedo hacia la izquierda o hacia la derecha en la barra, como en Google Phone';

  @override
  String get answerButton => 'Toque de botón';

  @override
  String get answerButtonSubtitle =>
      'Toque los botones de responder o rechazar';

  @override
  String get answerHuawei => 'estilo huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Arrastra el círculo hasta el teléfono verde para contestar.';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei: arrastre a verde/rojo';

  @override
  String get calling => 'Vocación';

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
  String get defaultSim => 'Tarjeta SIM predeterminada';

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
  String get askEveryTime => 'pregunta cada vez';

  @override
  String get askEveryTimeSubtitle =>
      'Mostrar el selector de SIM antes de cada llamada';

  @override
  String simSlot(int slot) {
    return 'Tarjeta SIM $slot';
  }

  @override
  String get noSimCardsFound => 'No se encontraron tarjetas SIM';

  @override
  String couldNotLoadSims(String error) {
    return 'No se pudieron cargar las tarjetas SIM: $error';
  }

  @override
  String get allFavourites => 'Todos los favoritos';

  @override
  String get allFavouritesSubtitle =>
      'Reordenar, eliminar y agregar de contactos';

  @override
  String get blockedNumbers => 'Números bloqueados';

  @override
  String get blockedNumbersSubtitle => 'Ver y desbloquear números';

  @override
  String get soundsAndVibration => 'Sonidos y vibraciones';

  @override
  String get soundsAndVibrationSubtitle =>
      'Tono de llamada, vibración, tonos del teclado de marcación';

  @override
  String couldNotOpenSettings(String error) {
    return 'No se pudo abrir la configuración: $error';
  }

  @override
  String get frequentlyContacted => 'Contactado con frecuencia';

  @override
  String get numberOfRecords => 'Número de registros';

  @override
  String get timePeriod => 'Periodo de tiempo';

  @override
  String get periodLast24Hours => 'Últimas 24 horas';

  @override
  String get periodLast24HoursSubtitle => 'Llamadas del dia pasado';

  @override
  String get periodLast7Days => 'últimos 7 días';

  @override
  String get periodLast7DaysSubtitle => 'Llamadas de la semana pasada';

  @override
  String get periodLast30Days => 'últimos 30 días';

  @override
  String get periodLast30DaysSubtitle => 'Llamadas del mes pasado';

  @override
  String get periodLast12Months => 'últimos 12 meses';

  @override
  String get periodLast12MonthsSubtitle => 'Llamadas del año pasado';

  @override
  String get periodAllTime => 'Todo el tiempo';

  @override
  String get periodAllTimeSubtitle => 'Todo el historial de llamadas';

  @override
  String get frequentMaxOff => 'Apagado';

  @override
  String frequentMaxCount(int count) {
    return '$count contactos';
  }

  @override
  String get torchBlink => 'Parpadeo de la antorcha';

  @override
  String get torchIncomingCall => 'Antorcha de llamada entrante';

  @override
  String get torchOutgoingCall => 'Antorcha de llamada saliente';

  @override
  String get torchOngoingCall => 'Antorcha de llamada en curso';

  @override
  String get torchIncomingInterval => 'Intervalo de parpadeo entrante';

  @override
  String get torchOutgoingInterval => 'Intervalo de parpadeo saliente';

  @override
  String get torchOngoingInterval => 'Intervalo de parpadeo continuo';

  @override
  String get torchOff => 'Apagado';

  @override
  String get torchOffIncomingSubtitle => 'Sin antorcha mientras suena';

  @override
  String get torchOffOutgoingSubtitle => 'Sin antorcha mientras se marca';

  @override
  String get torchOffOngoingSubtitle =>
      'Sin antorcha durante la llamada activa';

  @override
  String get torchFixedInterval => 'Intervalo fijo';

  @override
  String get torchFixedIntervalSubtitle =>
      'Parpadea a una velocidad determinada';

  @override
  String torchIntervalSeconds(String seconds) {
    return '${seconds}s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds parpadear';
  }

  @override
  String get flashlightUnavailable =>
      'Linterna no disponible en este dispositivo';

  @override
  String get glyphLights => 'Luces de glifos';

  @override
  String get glyphCallingAnimation => 'Animación de llamada de glifos';

  @override
  String get glyphOngoingAnimation => 'Animación de llamada en curso de glifo';

  @override
  String get glyphNone => 'Ninguno';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Desactivar las luces de glifo para llamadas salientes';

  @override
  String get glyphNoneInCallSubtitle =>
      'Desactiva las luces de Glyph mientras estás de guardia activamente';

  @override
  String get glyphBreathProgress => 'Aliento y progreso';

  @override
  String get glyphBreathProgressSubtitle =>
      'Las luces respiran mientras la fila se llena a más de 65 años';

  @override
  String get glyphAccumulate => 'Acumular';

  @override
  String get glyphAccumulateSubtitle =>
      'Animación acumulada en las luces C1-C4.';

  @override
  String get glyphSingle => 'Soltero';

  @override
  String get glyphSingleSubtitle => 'Una sola luz se mueve a través de C1-C4';

  @override
  String get glyphBreath => 'Aliento';

  @override
  String get glyphBreathSubtitle => 'Elige luces y velocidad';

  @override
  String get glyphSteady => 'Estable';

  @override
  String get glyphSteadySubtitle =>
      'Las luces seleccionadas permanecen encendidas';

  @override
  String get breathSettings => 'Configuración de respiración';

  @override
  String get activeLights => 'Luces activas';

  @override
  String lightsCount(int count) {
    return '$count luces';
  }

  @override
  String get speedSettings => 'Configuración de velocidad';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms de retraso';
  }

  @override
  String get durationAndSpeed => 'Duración y velocidad';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s de duración, ${interval}ms de intervalo';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get done => 'Hecho';

  @override
  String get save => 'Ahorrar';

  @override
  String get block => 'Bloquear';

  @override
  String get delete => 'Borrar';

  @override
  String get recents => 'Recientes';

  @override
  String get contacts => 'Contactos';

  @override
  String get hideFavouritesOnRecents => 'Ocultar favoritos en Recientes';

  @override
  String get showFavouritesOnRecents => 'Mostrar favoritos en Recientes';

  @override
  String get ongoingCall => 'llamada en curso';

  @override
  String get setAsDefaultTitle => 'ESTABLECER COMO\nPREDETERMINADO';

  @override
  String get setAsDefaultBody =>
      'Para utilizar Nothing Dialer, debe configurarlo como su aplicación de teléfono predeterminada. Esto le permite administrar llamadas, ver el historial y usar animaciones de Glyph.';

  @override
  String get setAsDefaultButton => 'ESTABLECER POR DEFECTO';

  @override
  String get nothingDialerBrand => 'NADA MARCADOR 1';

  @override
  String get favourites => 'Favoritos';

  @override
  String get addFavourite => 'Agregar favorito';

  @override
  String get favouritesDrawerHint =>
      'Utilice el menú para agregar contactos. Toque fuera del cajón o deslícelo para cerrarlo. Destaca un contacto a partir de sus detalles o mantén presionada una llamada en Recientes.';

  @override
  String get menu => 'Menú';

  @override
  String get noFavouritesYet =>
      'Aún no hay favoritos.\nAbra el menú para agregar uno o destacar un contacto.';

  @override
  String get contactsPermissionNeeded => 'Se necesita permiso de contactos';

  @override
  String get chooseContact => 'Elige contacto';

  @override
  String get noPhone => 'sin telefono';

  @override
  String get pickNumber => 'elegir número';

  @override
  String get contactHasNoPhone => 'Este contacto no tiene número de teléfono';

  @override
  String get blockNumber => 'Número de bloque';

  @override
  String get enterPhoneNumber => 'Introduce el número de teléfono';

  @override
  String unblockedDisplay(String display) {
    return 'Desbloqueado $display';
  }

  @override
  String get couldNotUnblockNumber => 'No se pudo desbloquear el número';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bloqueado • $matched emparejado';
  }

  @override
  String get contactsPermissionMissing =>
      'Falta el permiso de contactos. Toque para arreglarlo.';

  @override
  String get noBlockedNumbers => 'Sin números bloqueados';

  @override
  String get unknownContact => 'Contacto desconocido';

  @override
  String get unblock => 'Desatascar';

  @override
  String get permissionNeeded => 'Permiso necesario';

  @override
  String get grantPhonePermission =>
      'Otorgue permiso al teléfono para ver su historial de llamadas.';

  @override
  String get grantContactsPermission =>
      'Conceda permiso a los contactos para ver su libreta de direcciones.';

  @override
  String get openSettings => 'Abrir configuración';

  @override
  String get tryAgain => 'Intentar otra vez';

  @override
  String get couldNotLoadContacts => 'No se pudieron cargar los contactos';

  @override
  String get contactsLoadError =>
      'Algo salió mal al leer tu libreta de direcciones.';

  @override
  String get noContactsFound => 'No se encontraron contactos';

  @override
  String get contactsEmptySubtitle =>
      'Los contactos de su dispositivo aparecerán aquí.';

  @override
  String get searchContacts => 'Buscar contactos…';

  @override
  String get searchRecentCalls => 'Buscar llamadas recientes';

  @override
  String get fromContacts => 'De contactos';

  @override
  String get recentsSearchSection => 'Búsqueda reciente';

  @override
  String get recentsSearchShowContacts => 'Mostrar contactos en la búsqueda';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Mientras busca Recientes, también muestre personas coincidentes de su libreta de direcciones debajo de los resultados del historial de llamadas.';

  @override
  String get voiceSearch => 'Búsqueda por voz';

  @override
  String get createNewContact => 'Crear nuevo contacto';

  @override
  String callError(String error) {
    return 'Error de llamada: $error';
  }

  @override
  String get noRecentCalls => 'No hay llamadas recientes';

  @override
  String get callHistoryEmpty => 'Su historial de llamadas aparecerá aquí.';

  @override
  String get loadMore => 'Cargar más';

  @override
  String get frequentlyContactedHeader => 'Contactado frecuentemente';

  @override
  String get recentHistory => 'Historia reciente';

  @override
  String get noFavouritesRecentsHint =>
      'Aún no hay favoritos. Destaca un contacto, mantén presionada una llamada o usa la pestaña Favoritos.';

  @override
  String get copyNumber => 'Número de copia';

  @override
  String get editNumberBeforeCall => 'Editar número antes de llamar';

  @override
  String get removeFromFavourites => 'Quitar de favoritos';

  @override
  String get addToFavourites => 'Añadir a favoritos';

  @override
  String get blockNumberQuestion => '¿Número de bloque?';

  @override
  String blockNumberConfirm(String number) {
    return 'Ya no recibirás llamadas ni mensajes de texto de $number.';
  }

  @override
  String get blocked => 'Obstruido';

  @override
  String get couldNotBlock => 'No se pudo bloquear';

  @override
  String get contactNotOnDevice => 'Contacto no guardado en este dispositivo';

  @override
  String get unblocked => 'Desbloqueado';

  @override
  String get numberCopied => 'Número copiado';

  @override
  String get showLess => 'Mostrar menos';

  @override
  String get showAllTimes => 'Mostrar todos los horarios';

  @override
  String mostRecent(String time) {
    return 'Más reciente · $time';
  }

  @override
  String get videoCall => 'Videollamada';

  @override
  String get couldNotPlaceVideoCall => 'No se pudo realizar la videollamada';

  @override
  String get message => 'Mensaje';

  @override
  String get couldNotOpenMessaging =>
      'No se pudo abrir la aplicación de mensajería';

  @override
  String get history => 'Historia';

  @override
  String get viewContact => 'Ver contacto';

  @override
  String get addToContact => 'Añadir al contacto';

  @override
  String get callTypeMissed => 'Omitido';

  @override
  String get callTypeRejected => 'Rechazado';

  @override
  String get callTypeIncoming => 'Entrante';

  @override
  String get callTypeOutgoing => 'Extrovertido';

  @override
  String get today => 'Hoy';

  @override
  String get yesterday => 'Ayer';

  @override
  String get justNow => 'En este momento';

  @override
  String minutesAgo(int count) {
    return '$count hace minutos';
  }

  @override
  String hoursAgo(int count) {
    return '$count hace horas';
  }

  @override
  String get filterAll => 'Todo';

  @override
  String get filterMissed => 'Omitido';

  @override
  String get filterContacts => 'Contactos';

  @override
  String get filterNonContacts => 'No contactos';

  @override
  String get iconUpdated =>
      'Icono actualizado. Es posible que su pantalla de inicio tarde un momento en actualizarse.';

  @override
  String get iconSavedRelease =>
      'Elección guardada. El ícono de la pantalla de inicio se actualiza en las versiones de lanzamiento.';

  @override
  String couldNotChangeIcon(String error) {
    return 'No se pudo cambiar el ícono: $error';
  }

  @override
  String get launcherClassicBlack => 'Clásico (negro)';

  @override
  String get launcherLight => 'Luz';

  @override
  String get launcherNothingRed => 'nada rojo';

  @override
  String get launcherDarkGrey => 'Gris oscuro';

  @override
  String get launcherCream => 'Crema';

  @override
  String get launcherRetroPhone => 'teléfono retro';

  @override
  String get launcherRetroPhoneLight => 'Teléfono retro (luz)';

  @override
  String get voiceSearchUnavailable =>
      'La búsqueda por voz no está disponible en este dispositivo.';

  @override
  String voiceSearchFailed(String error) {
    return 'La búsqueda por voz falló: $error';
  }

  @override
  String get customColor => 'Costumbre';

  @override
  String get selectColor => 'Seleccionar color';

  @override
  String get reset => 'Reiniciar';

  @override
  String get simPickerTitle => 'Elige SIM';

  @override
  String get simChooseForCall => 'Elija SIM para esta llamada';

  @override
  String get defaultSimAsk => 'pregunta cada vez';

  @override
  String defaultSimFixed(int slot) {
    return 'Tarjeta SIM $slot';
  }

  @override
  String get contactDetails => 'Detalles de contacto';

  @override
  String get call => 'Llamar';

  @override
  String get share => 'Compartir';

  @override
  String get favourite => 'Favorito';

  @override
  String get unfavourite => 'No favorito';

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
  String get ringtone => 'Tono de llamada';

  @override
  String get defaultRingtone => 'Por defecto';

  @override
  String get simForContact => 'SIM para este contacto';

  @override
  String get callHistoryTitle => 'Historial de llamadas';

  @override
  String get noCallsWithNumber => 'No hay llamadas con este número';

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
  String get inCallGlyphAnimationStyle => 'Animación de glifo de llamada';

  @override
  String get recordsOff => 'Apagado';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Tarjeta SIM predeterminada';

  @override
  String get nothingPhoneOnly => 'Nada solo teléfono';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Las funciones de Glyph requieren un Nothing Phone';

  @override
  String get custom => 'Costumbre';

  @override
  String presetColorHex(String hex) {
    return 'Preestablecido · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Personalizado · $hex';
  }

  @override
  String get oneContact => '1 contacto';

  @override
  String upToContacts(int count) {
    return 'Hasta $count contactos';
  }

  @override
  String get answerButtonTapSubtitle => 'Toque el botón para responder';

  @override
  String get filterCalls => 'Filtrar llamadas';

  @override
  String get filterTooltip => 'Filtrar';

  @override
  String get settingsTooltip => 'Ajustes';

  @override
  String get filterAllSubtitle => 'Registro de llamadas completo';

  @override
  String get filterMissedSubtitle => 'Perdido y rechazado';

  @override
  String get filterContactsSubtitle =>
      'Llamadas coincidentes con un contacto guardado';

  @override
  String get filterNonContactsSubtitle =>
      'Números que no están en tu libreta de direcciones';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Llamada en curso: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM predeterminada para llamadas';

  @override
  String get blinkInterval => 'Intervalo de parpadeo';

  @override
  String get close => 'Cerca';

  @override
  String get frequentlyContactedInfoBody =>
      'Muestra los números de teléfono más llamados en la parte superior de la pestaña Recientes, según la cantidad de llamadas entrantes, salientes, perdidas o rechazadas que tuvo con cada número en el período de tiempo que elija.\n\nNúmero de registros: configúrelo en 0 para desactivarlo. Utilice del 1 al 20 para mostrar cuántos contactos principales.\n\nEl período de tiempo se aplica solo cuando se muestra al menos un contacto.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count luces, ${ms}ms de velocidad';
  }

  @override
  String get deleteContactQuestion => '¿Eliminar contacto?';

  @override
  String get deleteContactBody =>
      'Este contacto se eliminará permanentemente de su dispositivo.';

  @override
  String get blockContactQuestion => '¿Bloquear contacto?';

  @override
  String get unblockContactQuestion => '¿Desbloquear contacto?';

  @override
  String get blockContactBody =>
      'Ya no recibirás llamadas ni mensajes de texto de este contacto.';

  @override
  String get unblockContactBody =>
      'Comenzarás a recibir llamadas y mensajes de texto de este contacto.';

  @override
  String get contactBlocked => 'Contacto bloqueado';

  @override
  String get contactUnblocked => 'Contacto desbloqueado';

  @override
  String get noPhoneNumbersToBlock =>
      'No hay números de teléfono para bloquear';

  @override
  String get simSameAsSystem => 'Igual que el sistema';

  @override
  String get simSameAsSystemSubtitle =>
      'Sigue la SIM predeterminada en la configuración';

  @override
  String get simAskEveryTimeForContact =>
      'Mostrar siempre el selector de SIM para este contacto';

  @override
  String get ringtoneSetForContact =>
      'Tono de llamada configurado globalmente para este contacto';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'No se pudo elegir el tono de llamada: $error';
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
  String get noCallHistoryFound => 'No se encontró historial de llamadas';

  @override
  String get speedDialVoicemail => 'Marcación rápida: correo de voz';

  @override
  String shareContactSubject(String name) {
    return 'Contacto: $name';
  }

  @override
  String get contactInfo => 'Información de contacto';

  @override
  String get dontAskAgainSim => 'no vuelvas a preguntar';

  @override
  String get simDontAskAgainSubtitle =>
      'Utilice esta SIM como predeterminada (cambiar en Configuración)';

  @override
  String get addContact => 'Añadir contacto';

  @override
  String get createContact => 'Crear contacto';

  @override
  String get paste => 'Pasta';

  @override
  String get clear => 'Claro';

  @override
  String get returnToCall => 'volver a llamar';

  @override
  String get numberOfRecordsTitle => 'Número de registros';

  @override
  String get recordsPickerSubtitle =>
      'Cuántas entradas contactadas con frecuencia mostrar (0 = desactivado)';

  @override
  String get torchInfoTitle => 'Parpadeo de la antorcha';

  @override
  String get torchInfoBody =>
      'Hace parpadear el flash de la cámara durante llamadas entrantes, salientes o en curso. Independiente de las luces de glifo.';

  @override
  String get glyphMapTitle => 'Diseño de glifo';

  @override
  String get glyphMapBody =>
      'Nada Teléfono 1 Zonas LED de glifo. Las animaciones de llamadas salientes y entrantes utilizan estos canales.';

  @override
  String get answerMethodTitle => 'Método de respuesta';

  @override
  String get glyphOutgoingCallStyleTitle => 'Estilo de llamada saliente';

  @override
  String get glyphInCallAnimationTitle =>
      'Animación de glifo durante la llamada';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Antorcha de llamada entrante';

  @override
  String get torchOutgoingTitle => 'Antorcha de llamada saliente';

  @override
  String get torchOngoingTitle => 'Antorcha de llamada en curso';

  @override
  String get timePeriodTitle => 'Periodo de tiempo';

  @override
  String get ok => 'DE ACUERDO';

  @override
  String get confirmDeleteCall => '¿Eliminar esta llamada del historial?';

  @override
  String get confirmDeleteAllCalls =>
      '¿Eliminar todas las llamadas con este número?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'enviar un mensaje';

  @override
  String get addToExistingContactAction => 'Agregar a un contacto';

  @override
  String get mobileLabel => 'Móvil';

  @override
  String get callingSimForContactTitle => 'Llamando a SIM para este contacto';

  @override
  String get contactSettings => 'Configuración de contacto';

  @override
  String get setCallingSim => 'Configurar SIM de llamada';

  @override
  String get contactRingtone => 'Tono de llamada de contacto';

  @override
  String get shareContact => 'Compartir contacto';

  @override
  String get blockNumbers => 'Números de bloque';

  @override
  String get unblockNumbers => 'Desbloquear números';

  @override
  String get connectedApps => 'Aplicaciones conectadas';

  @override
  String get simNotSet => 'No establecido';

  @override
  String get ringtoneDefault => 'Por defecto';

  @override
  String get customRingtone => 'Costumbre';

  @override
  String get aboutSection => 'Acerca de';

  @override
  String get aboutFeedbackSection => 'Acerca de y comentarios';

  @override
  String get aboutDescription =>
      'Nothing Dialer es de código abierto. Si es desarrollador, puede explorar el código y contribuir.';

  @override
  String get aboutViewSource => 'Ver en GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'No se pudo abrir el enlace';

  @override
  String get reviewSection => 'Revisar';

  @override
  String get reviewDescription =>
      '¿Disfrutas de Nothing Dialer? Tu calificación en Google Play ayuda a otros a encontrar la aplicación.';

  @override
  String get reviewRateOnPlay => 'Califica en Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'No se pudo abrir Google Play';

  @override
  String get breathSpeed => 'Velocidad de respiración';

  @override
  String get breathSpeedBlinkHint =>
      'Inferior = Parpadeo, Superior = Respiración lenta';

  @override
  String get speedSliderHint => 'Inferior = Más rápido, Superior = Más lento';

  @override
  String get swatchDefault => 'Por defecto';

  @override
  String get customAccentColorPicker => 'Color de acento personalizado';

  @override
  String get customLightBackgroundPicker => 'Fondo claro personalizado';

  @override
  String get customDarkBackgroundPicker => 'Fondo oscuro personalizado';

  @override
  String get customCallBackgroundPicker => 'Fondo de llamada personalizado';

  @override
  String get ongoingCallStyleTitle => 'Estilo de llamada en curso';

  @override
  String get glyphMapUnavailable => 'Mapa de glifos no disponible';

  @override
  String get animationDelayRange => 'Retraso de animación (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Retraso de animación (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Silenciar';

  @override
  String get inCallKeypad => 'Teclado';

  @override
  String get inCallSpeaker => 'Vocero';

  @override
  String get inCallMore => 'Más';

  @override
  String get inCallBluetooth => 'bluetooth';

  @override
  String get inCallPhone => 'Teléfono';

  @override
  String get inCallAddCall => 'Agregar llamada';

  @override
  String get inCallChangeSim => 'Cambiar tarjeta SIM';

  @override
  String get inCallDecline => 'Rechazar';

  @override
  String get inCallAnswer => 'Respuesta';

  @override
  String get inCallMessage => 'Mensaje';

  @override
  String get inCallCalling => 'Vocación…';

  @override
  String get inCallIncoming => 'Llamada entrante';

  @override
  String get inCallSelectSim => 'Seleccione SIM...';

  @override
  String get inCallSwitchingSim => 'Cambiando de SIM…';

  @override
  String get inCallCallEnded => 'llamada finalizada';

  @override
  String inCallCallingVia(String sim) {
    return 'Llamando a través de $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Llamando a través de <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Elija SIM para esta llamada';

  @override
  String get inCallDragAnswerDecline =>
      'Arrastra hacia la derecha para responder · Arrastra hacia la izquierda para rechazar';

  @override
  String inCallMobileNumber(String number) {
    return 'Móvil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Actual)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Llama a través de <b>$sim</b> desde';
  }

  @override
  String get inCallCallFrom => 'Llamar desde';

  @override
  String get inCallUnknown => 'Desconocido';

  @override
  String get selectContactRingtone => 'Seleccionar tono de llamada de contacto';

  @override
  String get speakToSearchPrompt => 'hablar para buscar';

  @override
  String get phonePermissionRequired => 'Se requiere permiso telefónico';

  @override
  String callFailed(String error) {
    return 'Llamada fallida: $error';
  }

  @override
  String get callPermissionDenied => 'Permiso de llamada denegado';

  @override
  String get alreadyDefaultDialer =>
      'Ya configurado como marcador predeterminado';

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

/// The translations for Spanish Castilian, as used in Mexico (`es_MX`).
class AppLocalizationsEsMx extends AppLocalizationsEs {
  AppLocalizationsEsMx() : super('es_MX');

  @override
  String get appTitle => 'Nada marcador';

  @override
  String get settings => 'Ajustes';

  @override
  String get settingsSearchHint => 'Configuración de búsqueda';

  @override
  String get settingsSearchNoResults => 'No se encontraron configuraciones';

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
  String get themeSystemDefault => 'Valor predeterminado del sistema';

  @override
  String get themeLight => 'Luz';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get themeFollowSystem => 'Seguir la configuración del sistema';

  @override
  String get themeAlwaysLight => 'Utilice siempre un tema claro';

  @override
  String get themeAlwaysDark => 'Utilice siempre el tema oscuro';

  @override
  String get language => 'Idioma';

  @override
  String get languageDeviceDefault => 'Dispositivo predeterminado';

  @override
  String get languagePickerTitle => 'Idioma';

  @override
  String get languageSearchHint => 'Idiomas de búsqueda';

  @override
  String get font => 'Fuente';

  @override
  String get fontSystem => 'Valor predeterminado del sistema';

  @override
  String get fontNdot => 'Nada (punto)';

  @override
  String get fontSerif => 'robot serif';

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
      'Error al descargar la fuente. Comprueba tu conexión y vuelve a intentarlo.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Fuente';

  @override
  String get fontPreviewSample => 'Nada marcador';

  @override
  String get fontAppWide => 'fuente de la aplicación';

  @override
  String get fontApplyTo => 'Referirse a';

  @override
  String get fontApplyEntireApp => 'Toda la aplicación';

  @override
  String get fontApplyEntireAppSubtitle =>
      'La misma fuente en todas partes, incluso durante las llamadas';

  @override
  String get fontApplyTitlesOnly => 'Títulos y encabezados';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Sólo títulos grandes y encabezados de sección';

  @override
  String get fontApplyCustomize => 'Personalizar';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Elija fuente por pantalla y tipo de texto';

  @override
  String get fontCustomizeSection => 'Personalizar por pantalla';

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
  String get fontRolePageTitle => 'Título de la página';

  @override
  String get fontRoleSectionHeader => 'Encabezado de sección';

  @override
  String get fontRolePrimary => 'texto primario';

  @override
  String get fontRoleSecondary => 'Texto secundario';

  @override
  String get fontRoleButton => 'Botones';

  @override
  String get fontRoleDialKey => 'Teclas del teclado';

  @override
  String get fontSurfaceRecents => 'Recientes';

  @override
  String get fontSurfaceContacts => 'Contactos';

  @override
  String get fontSurfaceSettings => 'Ajustes';

  @override
  String get fontSurfaceDialpad => 'Teclado';

  @override
  String get fontSurfaceShell => 'Navegación';

  @override
  String get fontSurfaceDefaultDialer => 'Mensaje de marcador predeterminado';

  @override
  String get fontSurfaceFavourites => 'Favoritos';

  @override
  String get fontSurfaceBlocked => 'Números bloqueados';

  @override
  String get fontSurfaceContactDetail => 'Detalle de contacto';

  @override
  String get fontSurfaceCallHistory => 'Historial de llamadas';

  @override
  String get fontSurfaceSheets => 'Hojas y recolectores';

  @override
  String get fontSurfaceInCall => 'Pantalla de llamada';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — aplicación completa';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — solo títulos';
  }

  @override
  String get fontSubtitleCustomize => 'Personalizado por pantalla';

  @override
  String get background => 'Fondo';

  @override
  String get accent => 'Acento';

  @override
  String get lightBackground => 'fondo claro';

  @override
  String get lightAccent => 'Acento ligero';

  @override
  String get darkBackground => 'fondo oscuro';

  @override
  String get darkAccent => 'acento oscuro';

  @override
  String get callBackground => 'Fondo de llamada';

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
  String get appIcon => 'icono de la aplicación';

  @override
  String get answerMethod => 'Método de respuesta';

  @override
  String get answerSlide => 'Desliza para responder';

  @override
  String get answerSlideSubtitle =>
      'Desliza el dedo hacia la izquierda o hacia la derecha en la barra, como en Google Phone';

  @override
  String get answerButton => 'Toque de botón';

  @override
  String get answerButtonSubtitle =>
      'Toque los botones de responder o rechazar';

  @override
  String get answerHuawei => 'estilo huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Arrastra el círculo hasta el teléfono verde para contestar.';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei: arrastre a verde/rojo';

  @override
  String get calling => 'Vocación';

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
  String get defaultSim => 'Tarjeta SIM predeterminada';

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
  String get askEveryTime => 'pregunta cada vez';

  @override
  String get askEveryTimeSubtitle =>
      'Mostrar el selector de SIM antes de cada llamada';

  @override
  String simSlot(int slot) {
    return 'Tarjeta SIM $slot';
  }

  @override
  String get noSimCardsFound => 'No se encontraron tarjetas SIM';

  @override
  String couldNotLoadSims(String error) {
    return 'No se pudieron cargar las tarjetas SIM: $error';
  }

  @override
  String get allFavourites => 'Todos los favoritos';

  @override
  String get allFavouritesSubtitle =>
      'Reordenar, eliminar y agregar de contactos';

  @override
  String get blockedNumbers => 'Números bloqueados';

  @override
  String get blockedNumbersSubtitle => 'Ver y desbloquear números';

  @override
  String get soundsAndVibration => 'Sonidos y vibraciones';

  @override
  String get soundsAndVibrationSubtitle =>
      'Tono de llamada, vibración, tonos del teclado de marcación';

  @override
  String couldNotOpenSettings(String error) {
    return 'No se pudo abrir la configuración: $error';
  }

  @override
  String get frequentlyContacted => 'Contactado con frecuencia';

  @override
  String get numberOfRecords => 'Número de registros';

  @override
  String get timePeriod => 'Periodo de tiempo';

  @override
  String get periodLast24Hours => 'Últimas 24 horas';

  @override
  String get periodLast24HoursSubtitle => 'Llamadas del dia pasado';

  @override
  String get periodLast7Days => 'últimos 7 días';

  @override
  String get periodLast7DaysSubtitle => 'Llamadas de la semana pasada';

  @override
  String get periodLast30Days => 'últimos 30 días';

  @override
  String get periodLast30DaysSubtitle => 'Llamadas del mes pasado';

  @override
  String get periodLast12Months => 'últimos 12 meses';

  @override
  String get periodLast12MonthsSubtitle => 'Llamadas del año pasado';

  @override
  String get periodAllTime => 'Todo el tiempo';

  @override
  String get periodAllTimeSubtitle => 'Todo el historial de llamadas';

  @override
  String get frequentMaxOff => 'Apagado';

  @override
  String frequentMaxCount(int count) {
    return '$count contactos';
  }

  @override
  String get torchBlink => 'Parpadeo de la antorcha';

  @override
  String get torchIncomingCall => 'Antorcha de llamada entrante';

  @override
  String get torchOutgoingCall => 'Antorcha de llamada saliente';

  @override
  String get torchOngoingCall => 'Antorcha de llamada en curso';

  @override
  String get torchIncomingInterval => 'Intervalo de parpadeo entrante';

  @override
  String get torchOutgoingInterval => 'Intervalo de parpadeo saliente';

  @override
  String get torchOngoingInterval => 'Intervalo de parpadeo continuo';

  @override
  String get torchOff => 'Apagado';

  @override
  String get torchOffIncomingSubtitle => 'Sin antorcha mientras suena';

  @override
  String get torchOffOutgoingSubtitle => 'Sin antorcha mientras se marca';

  @override
  String get torchOffOngoingSubtitle =>
      'Sin antorcha durante la llamada activa';

  @override
  String get torchFixedInterval => 'Intervalo fijo';

  @override
  String get torchFixedIntervalSubtitle =>
      'Parpadea a una velocidad determinada';

  @override
  String torchIntervalSeconds(String seconds) {
    return '${seconds}s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds parpadear';
  }

  @override
  String get flashlightUnavailable =>
      'Linterna no disponible en este dispositivo';

  @override
  String get glyphLights => 'Luces de glifos';

  @override
  String get glyphCallingAnimation => 'Animación de llamada de glifos';

  @override
  String get glyphOngoingAnimation => 'Animación de llamada en curso de glifo';

  @override
  String get glyphNone => 'Ninguno';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Desactivar las luces de glifo para llamadas salientes';

  @override
  String get glyphNoneInCallSubtitle =>
      'Desactiva las luces de Glyph mientras estás de guardia activamente';

  @override
  String get glyphBreathProgress => 'Aliento y progreso';

  @override
  String get glyphBreathProgressSubtitle =>
      'Las luces respiran mientras la fila se llena a más de 65 años';

  @override
  String get glyphAccumulate => 'Acumular';

  @override
  String get glyphAccumulateSubtitle =>
      'Animación acumulada en las luces C1-C4.';

  @override
  String get glyphSingle => 'Soltero';

  @override
  String get glyphSingleSubtitle => 'Una sola luz se mueve a través de C1-C4';

  @override
  String get glyphBreath => 'Aliento';

  @override
  String get glyphBreathSubtitle => 'Elige luces y velocidad';

  @override
  String get glyphSteady => 'Estable';

  @override
  String get glyphSteadySubtitle =>
      'Las luces seleccionadas permanecen encendidas';

  @override
  String get breathSettings => 'Configuración de respiración';

  @override
  String get activeLights => 'Luces activas';

  @override
  String lightsCount(int count) {
    return '$count luces';
  }

  @override
  String get speedSettings => 'Configuración de velocidad';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms de retraso';
  }

  @override
  String get durationAndSpeed => 'Duración y velocidad';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s de duración, ${interval}ms de intervalo';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get done => 'Hecho';

  @override
  String get save => 'Ahorrar';

  @override
  String get block => 'Bloquear';

  @override
  String get delete => 'Borrar';

  @override
  String get recents => 'Recientes';

  @override
  String get contacts => 'Contactos';

  @override
  String get hideFavouritesOnRecents => 'Ocultar favoritos en Recientes';

  @override
  String get showFavouritesOnRecents => 'Mostrar favoritos en Recientes';

  @override
  String get ongoingCall => 'llamada en curso';

  @override
  String get setAsDefaultTitle => 'ESTABLECER COMO\nPREDETERMINADO';

  @override
  String get setAsDefaultBody =>
      'Para utilizar Nothing Dialer, debe configurarlo como su aplicación de teléfono predeterminada. Esto le permite administrar llamadas, ver el historial y usar animaciones de Glyph.';

  @override
  String get setAsDefaultButton => 'ESTABLECER POR DEFECTO';

  @override
  String get nothingDialerBrand => 'NADA MARCADOR 1';

  @override
  String get favourites => 'Favoritos';

  @override
  String get addFavourite => 'Agregar favorito';

  @override
  String get favouritesDrawerHint =>
      'Utilice el menú para agregar contactos. Toque fuera del cajón o deslícelo para cerrarlo. Destaca un contacto a partir de sus detalles o mantén presionada una llamada en Recientes.';

  @override
  String get menu => 'Menú';

  @override
  String get noFavouritesYet =>
      'Aún no hay favoritos.\nAbra el menú para agregar uno o destacar un contacto.';

  @override
  String get contactsPermissionNeeded => 'Se necesita permiso de contactos';

  @override
  String get chooseContact => 'Elige contacto';

  @override
  String get noPhone => 'sin telefono';

  @override
  String get pickNumber => 'elegir número';

  @override
  String get contactHasNoPhone => 'Este contacto no tiene número de teléfono';

  @override
  String get blockNumber => 'Número de bloque';

  @override
  String get enterPhoneNumber => 'Introduce el número de teléfono';

  @override
  String unblockedDisplay(String display) {
    return 'Desbloqueado $display';
  }

  @override
  String get couldNotUnblockNumber => 'No se pudo desbloquear el número';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bloqueado • $matched emparejado';
  }

  @override
  String get contactsPermissionMissing =>
      'Falta el permiso de contactos. Toque para arreglarlo.';

  @override
  String get noBlockedNumbers => 'Sin números bloqueados';

  @override
  String get unknownContact => 'Contacto desconocido';

  @override
  String get unblock => 'Desatascar';

  @override
  String get permissionNeeded => 'Permiso necesario';

  @override
  String get grantPhonePermission =>
      'Otorgue permiso al teléfono para ver su historial de llamadas.';

  @override
  String get grantContactsPermission =>
      'Conceda permiso a los contactos para ver su libreta de direcciones.';

  @override
  String get openSettings => 'Abrir configuración';

  @override
  String get tryAgain => 'Intentar otra vez';

  @override
  String get couldNotLoadContacts => 'No se pudieron cargar los contactos';

  @override
  String get contactsLoadError =>
      'Algo salió mal al leer tu libreta de direcciones.';

  @override
  String get noContactsFound => 'No se encontraron contactos';

  @override
  String get contactsEmptySubtitle =>
      'Los contactos de su dispositivo aparecerán aquí.';

  @override
  String get searchContacts => 'Buscar contactos…';

  @override
  String get searchRecentCalls => 'Buscar llamadas recientes';

  @override
  String get fromContacts => 'De contactos';

  @override
  String get recentsSearchSection => 'Búsqueda reciente';

  @override
  String get recentsSearchShowContacts => 'Mostrar contactos en la búsqueda';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Mientras busca Recientes, también muestre personas coincidentes de su libreta de direcciones debajo de los resultados del historial de llamadas.';

  @override
  String get voiceSearch => 'Búsqueda por voz';

  @override
  String get createNewContact => 'Crear nuevo contacto';

  @override
  String callError(String error) {
    return 'Error de llamada: $error';
  }

  @override
  String get noRecentCalls => 'No hay llamadas recientes';

  @override
  String get callHistoryEmpty => 'Su historial de llamadas aparecerá aquí.';

  @override
  String get loadMore => 'Cargar más';

  @override
  String get frequentlyContactedHeader => 'Contactado frecuentemente';

  @override
  String get recentHistory => 'Historia reciente';

  @override
  String get noFavouritesRecentsHint =>
      'Aún no hay favoritos. Destaca un contacto, mantén presionada una llamada o usa la pestaña Favoritos.';

  @override
  String get copyNumber => 'Número de copia';

  @override
  String get editNumberBeforeCall => 'Editar número antes de llamar';

  @override
  String get removeFromFavourites => 'Quitar de favoritos';

  @override
  String get addToFavourites => 'Añadir a favoritos';

  @override
  String get blockNumberQuestion => '¿Número de bloque?';

  @override
  String blockNumberConfirm(String number) {
    return 'Ya no recibirás llamadas ni mensajes de texto de $number.';
  }

  @override
  String get blocked => 'Obstruido';

  @override
  String get couldNotBlock => 'No se pudo bloquear';

  @override
  String get contactNotOnDevice => 'Contacto no guardado en este dispositivo';

  @override
  String get unblocked => 'Desbloqueado';

  @override
  String get numberCopied => 'Número copiado';

  @override
  String get showLess => 'Mostrar menos';

  @override
  String get showAllTimes => 'Mostrar todos los horarios';

  @override
  String mostRecent(String time) {
    return 'Más reciente · $time';
  }

  @override
  String get videoCall => 'Videollamada';

  @override
  String get couldNotPlaceVideoCall => 'No se pudo realizar la videollamada';

  @override
  String get message => 'Mensaje';

  @override
  String get couldNotOpenMessaging =>
      'No se pudo abrir la aplicación de mensajería';

  @override
  String get history => 'Historia';

  @override
  String get viewContact => 'Ver contacto';

  @override
  String get addToContact => 'Añadir al contacto';

  @override
  String get callTypeMissed => 'Omitido';

  @override
  String get callTypeRejected => 'Rechazado';

  @override
  String get callTypeIncoming => 'Entrante';

  @override
  String get callTypeOutgoing => 'Extrovertido';

  @override
  String get today => 'Hoy';

  @override
  String get yesterday => 'Ayer';

  @override
  String get justNow => 'En este momento';

  @override
  String minutesAgo(int count) {
    return '$count hace minutos';
  }

  @override
  String hoursAgo(int count) {
    return '$count hace horas';
  }

  @override
  String get filterAll => 'Todo';

  @override
  String get filterMissed => 'Omitido';

  @override
  String get filterContacts => 'Contactos';

  @override
  String get filterNonContacts => 'No contactos';

  @override
  String get iconUpdated =>
      'Icono actualizado. Es posible que su pantalla de inicio tarde un momento en actualizarse.';

  @override
  String get iconSavedRelease =>
      'Elección guardada. El ícono de la pantalla de inicio se actualiza en las versiones de lanzamiento.';

  @override
  String couldNotChangeIcon(String error) {
    return 'No se pudo cambiar el ícono: $error';
  }

  @override
  String get launcherClassicBlack => 'Clásico (negro)';

  @override
  String get launcherLight => 'Luz';

  @override
  String get launcherNothingRed => 'nada rojo';

  @override
  String get launcherDarkGrey => 'Gris oscuro';

  @override
  String get launcherCream => 'Crema';

  @override
  String get launcherRetroPhone => 'teléfono retro';

  @override
  String get launcherRetroPhoneLight => 'Teléfono retro (luz)';

  @override
  String get voiceSearchUnavailable =>
      'La búsqueda por voz no está disponible en este dispositivo.';

  @override
  String voiceSearchFailed(String error) {
    return 'La búsqueda por voz falló: $error';
  }

  @override
  String get customColor => 'Costumbre';

  @override
  String get selectColor => 'Seleccionar color';

  @override
  String get reset => 'Reiniciar';

  @override
  String get simPickerTitle => 'Elige SIM';

  @override
  String get simChooseForCall => 'Elija SIM para esta llamada';

  @override
  String get defaultSimAsk => 'pregunta cada vez';

  @override
  String defaultSimFixed(int slot) {
    return 'Tarjeta SIM $slot';
  }

  @override
  String get contactDetails => 'Detalles de contacto';

  @override
  String get call => 'Llamar';

  @override
  String get share => 'Compartir';

  @override
  String get favourite => 'Favorito';

  @override
  String get unfavourite => 'No favorito';

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
  String get ringtone => 'Tono de llamada';

  @override
  String get defaultRingtone => 'Por defecto';

  @override
  String get simForContact => 'SIM para este contacto';

  @override
  String get callHistoryTitle => 'Historial de llamadas';

  @override
  String get noCallsWithNumber => 'No hay llamadas con este número';

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
  String get inCallGlyphAnimationStyle => 'Animación de glifo de llamada';

  @override
  String get recordsOff => 'Apagado';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Tarjeta SIM predeterminada';

  @override
  String get nothingPhoneOnly => 'Nada solo teléfono';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Las funciones de Glyph requieren un Nothing Phone';

  @override
  String get custom => 'Costumbre';

  @override
  String presetColorHex(String hex) {
    return 'Preestablecido · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Personalizado · $hex';
  }

  @override
  String get oneContact => '1 contacto';

  @override
  String upToContacts(int count) {
    return 'Hasta $count contactos';
  }

  @override
  String get answerButtonTapSubtitle => 'Toque el botón para responder';

  @override
  String get filterCalls => 'Filtrar llamadas';

  @override
  String get filterTooltip => 'Filtrar';

  @override
  String get settingsTooltip => 'Ajustes';

  @override
  String get filterAllSubtitle => 'Registro de llamadas completo';

  @override
  String get filterMissedSubtitle => 'Perdido y rechazado';

  @override
  String get filterContactsSubtitle =>
      'Llamadas coincidentes con un contacto guardado';

  @override
  String get filterNonContactsSubtitle =>
      'Números que no están en tu libreta de direcciones';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Llamada en curso: $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM predeterminada para llamadas';

  @override
  String get blinkInterval => 'Intervalo de parpadeo';

  @override
  String get close => 'Cerca';

  @override
  String get frequentlyContactedInfoBody =>
      'Muestra los números de teléfono más llamados en la parte superior de la pestaña Recientes, según la cantidad de llamadas entrantes, salientes, perdidas o rechazadas que tuvo con cada número en el período de tiempo que elija.\n\nNúmero de registros: configúrelo en 0 para desactivarlo. Utilice del 1 al 20 para mostrar cuántos contactos principales.\n\nEl período de tiempo se aplica solo cuando se muestra al menos un contacto.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count luces, ${ms}ms de velocidad';
  }

  @override
  String get deleteContactQuestion => '¿Eliminar contacto?';

  @override
  String get deleteContactBody =>
      'Este contacto se eliminará permanentemente de su dispositivo.';

  @override
  String get blockContactQuestion => '¿Bloquear contacto?';

  @override
  String get unblockContactQuestion => '¿Desbloquear contacto?';

  @override
  String get blockContactBody =>
      'Ya no recibirás llamadas ni mensajes de texto de este contacto.';

  @override
  String get unblockContactBody =>
      'Comenzarás a recibir llamadas y mensajes de texto de este contacto.';

  @override
  String get contactBlocked => 'Contacto bloqueado';

  @override
  String get contactUnblocked => 'Contacto desbloqueado';

  @override
  String get noPhoneNumbersToBlock =>
      'No hay números de teléfono para bloquear';

  @override
  String get simSameAsSystem => 'Igual que el sistema';

  @override
  String get simSameAsSystemSubtitle =>
      'Sigue la SIM predeterminada en la configuración';

  @override
  String get simAskEveryTimeForContact =>
      'Mostrar siempre el selector de SIM para este contacto';

  @override
  String get ringtoneSetForContact =>
      'Tono de llamada configurado globalmente para este contacto';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'No se pudo elegir el tono de llamada: $error';
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
  String get noCallHistoryFound => 'No se encontró historial de llamadas';

  @override
  String get speedDialVoicemail => 'Marcación rápida: correo de voz';

  @override
  String shareContactSubject(String name) {
    return 'Contacto: $name';
  }

  @override
  String get contactInfo => 'Información de contacto';

  @override
  String get dontAskAgainSim => 'no vuelvas a preguntar';

  @override
  String get simDontAskAgainSubtitle =>
      'Utilice esta SIM como predeterminada (cambiar en Configuración)';

  @override
  String get addContact => 'Añadir contacto';

  @override
  String get createContact => 'Crear contacto';

  @override
  String get paste => 'Pasta';

  @override
  String get clear => 'Claro';

  @override
  String get returnToCall => 'volver a llamar';

  @override
  String get numberOfRecordsTitle => 'Número de registros';

  @override
  String get recordsPickerSubtitle =>
      'Cuántas entradas contactadas con frecuencia mostrar (0 = desactivado)';

  @override
  String get torchInfoTitle => 'Parpadeo de la antorcha';

  @override
  String get torchInfoBody =>
      'Hace parpadear el flash de la cámara durante llamadas entrantes, salientes o en curso. Independiente de las luces de glifo.';

  @override
  String get glyphMapTitle => 'Diseño de glifo';

  @override
  String get glyphMapBody =>
      'Nada Teléfono 1 Zonas LED de glifo. Las animaciones de llamadas salientes y entrantes utilizan estos canales.';

  @override
  String get answerMethodTitle => 'Método de respuesta';

  @override
  String get glyphOutgoingCallStyleTitle => 'Estilo de llamada saliente';

  @override
  String get glyphInCallAnimationTitle =>
      'Animación de glifo durante la llamada';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get torchIncomingTitle => 'Antorcha de llamada entrante';

  @override
  String get torchOutgoingTitle => 'Antorcha de llamada saliente';

  @override
  String get torchOngoingTitle => 'Antorcha de llamada en curso';

  @override
  String get timePeriodTitle => 'Periodo de tiempo';

  @override
  String get ok => 'DE ACUERDO';

  @override
  String get confirmDeleteCall => '¿Eliminar esta llamada del historial?';

  @override
  String get confirmDeleteAllCalls =>
      '¿Eliminar todas las llamadas con este número?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'enviar un mensaje';

  @override
  String get addToExistingContactAction => 'Agregar a un contacto';

  @override
  String get mobileLabel => 'Móvil';

  @override
  String get callingSimForContactTitle => 'Llamando a SIM para este contacto';

  @override
  String get contactSettings => 'Configuración de contacto';

  @override
  String get setCallingSim => 'Configurar SIM de llamada';

  @override
  String get contactRingtone => 'Tono de llamada de contacto';

  @override
  String get shareContact => 'Compartir contacto';

  @override
  String get blockNumbers => 'Números de bloque';

  @override
  String get unblockNumbers => 'Desbloquear números';

  @override
  String get connectedApps => 'Aplicaciones conectadas';

  @override
  String get simNotSet => 'No establecido';

  @override
  String get ringtoneDefault => 'Por defecto';

  @override
  String get customRingtone => 'Costumbre';

  @override
  String get aboutSection => 'Acerca de';

  @override
  String get aboutFeedbackSection => 'Acerca de y comentarios';

  @override
  String get aboutDescription =>
      'Nothing Dialer es de código abierto. Si es desarrollador, puede explorar el código y contribuir.';

  @override
  String get aboutViewSource => 'Ver en GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'No se pudo abrir el enlace';

  @override
  String get reviewSection => 'Revisar';

  @override
  String get reviewDescription =>
      '¿Disfrutas de Nothing Dialer? Tu calificación en Google Play ayuda a otros a encontrar la aplicación.';

  @override
  String get reviewRateOnPlay => 'Califica en Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'No se pudo abrir Google Play';

  @override
  String get breathSpeed => 'Velocidad de respiración';

  @override
  String get breathSpeedBlinkHint =>
      'Inferior = Parpadeo, Superior = Respiración lenta';

  @override
  String get speedSliderHint => 'Inferior = Más rápido, Superior = Más lento';

  @override
  String get swatchDefault => 'Por defecto';

  @override
  String get customAccentColorPicker => 'Color de acento personalizado';

  @override
  String get customLightBackgroundPicker => 'Fondo claro personalizado';

  @override
  String get customDarkBackgroundPicker => 'Fondo oscuro personalizado';

  @override
  String get customCallBackgroundPicker => 'Fondo de llamada personalizado';

  @override
  String get ongoingCallStyleTitle => 'Estilo de llamada en curso';

  @override
  String get glyphMapUnavailable => 'Mapa de glifos no disponible';

  @override
  String get animationDelayRange => 'Retraso de animación (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Retraso de animación (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Silenciar';

  @override
  String get inCallKeypad => 'Teclado';

  @override
  String get inCallSpeaker => 'Vocero';

  @override
  String get inCallMore => 'Más';

  @override
  String get inCallBluetooth => 'bluetooth';

  @override
  String get inCallPhone => 'Teléfono';

  @override
  String get inCallAddCall => 'Agregar llamada';

  @override
  String get inCallChangeSim => 'Cambiar tarjeta SIM';

  @override
  String get inCallDecline => 'Rechazar';

  @override
  String get inCallAnswer => 'Respuesta';

  @override
  String get inCallMessage => 'Mensaje';

  @override
  String get inCallCalling => 'Vocación…';

  @override
  String get inCallIncoming => 'Llamada entrante';

  @override
  String get inCallSelectSim => 'Seleccione SIM...';

  @override
  String get inCallSwitchingSim => 'Cambiando de SIM…';

  @override
  String get inCallCallEnded => 'llamada finalizada';

  @override
  String inCallCallingVia(String sim) {
    return 'Llamando a través de $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Llamando a través de <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Elija SIM para esta llamada';

  @override
  String get inCallDragAnswerDecline =>
      'Arrastra hacia la derecha para responder · Arrastra hacia la izquierda para rechazar';

  @override
  String inCallMobileNumber(String number) {
    return 'Móvil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Actual)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Llama a través de <b>$sim</b> desde';
  }

  @override
  String get inCallCallFrom => 'Llamar desde';

  @override
  String get inCallUnknown => 'Desconocido';

  @override
  String get selectContactRingtone => 'Seleccionar tono de llamada de contacto';

  @override
  String get speakToSearchPrompt => 'hablar para buscar';

  @override
  String get phonePermissionRequired => 'Se requiere permiso telefónico';

  @override
  String callFailed(String error) {
    return 'Llamada fallida: $error';
  }

  @override
  String get callPermissionDenied => 'Permiso de llamada denegado';

  @override
  String get alreadyDefaultDialer =>
      'Ya configurado como marcador predeterminado';

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
