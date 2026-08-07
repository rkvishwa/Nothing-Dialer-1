// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Rien du composeur';

  @override
  String get settings => 'Paramètres';

  @override
  String get settingsSearchHint => 'Paramètres de recherche';

  @override
  String get settingsSearchNoResults => 'Aucun paramètre trouvé';

  @override
  String get general => 'Général';

  @override
  String get theme => 'Thème';

  @override
  String get themeSystemDefault => 'Paramètres système';

  @override
  String get themeLight => 'Lumière';

  @override
  String get themeDark => 'Sombre';

  @override
  String get themeFollowSystem => 'Suivre les paramètres du système';

  @override
  String get themeAlwaysLight => 'Utilisez toujours un thème clair';

  @override
  String get themeAlwaysDark => 'Utilisez toujours un thème sombre';

  @override
  String get language => 'Langue';

  @override
  String get languageDeviceDefault => 'Langue de l\'appareil';

  @override
  String get languagePickerTitle => 'Langue';

  @override
  String get languageSearchHint => 'Langues de recherche';

  @override
  String get font => 'Fonte';

  @override
  String get fontSystem => 'Valeur par défaut du système';

  @override
  String get fontNdot => 'Rien (NDot)';

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
      'Le téléchargement de la police a échoué. Vérifiez votre connexion et réessayez.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Fonte';

  @override
  String get fontPreviewSample => 'Rien du composeur';

  @override
  String get fontAppWide => 'Police de l\'application';

  @override
  String get fontApplyTo => 'Postuler à';

  @override
  String get fontApplyEntireApp => 'Application entière';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Même police partout, y compris lors d\'un appel';

  @override
  String get fontApplyTitlesOnly => 'Titres et en-têtes';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Gros titres et en-têtes de section uniquement';

  @override
  String get fontApplyCustomize => 'Personnaliser';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Choisissez la police par écran et type de texte';

  @override
  String get fontCustomizeSection => 'Personnaliser par écran';

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
  String get fontRolePageTitle => 'Titre de la page';

  @override
  String get fontRoleSectionHeader => 'En-tête de section';

  @override
  String get fontRolePrimary => 'Texte principal';

  @override
  String get fontRoleSecondary => 'Texte secondaire';

  @override
  String get fontRoleButton => 'Boutons';

  @override
  String get fontRoleDialKey => 'Touches du clavier';

  @override
  String get fontSurfaceRecents => 'Récents';

  @override
  String get fontSurfaceContacts => 'Contacts';

  @override
  String get fontSurfaceSettings => 'Paramètres';

  @override
  String get fontSurfaceDialpad => 'Clavier';

  @override
  String get fontSurfaceShell => 'Navigation';

  @override
  String get fontSurfaceDefaultDialer => 'Invite du numéroteur par défaut';

  @override
  String get fontSurfaceFavourites => 'Favoris';

  @override
  String get fontSurfaceBlocked => 'Numéros bloqués';

  @override
  String get fontSurfaceContactDetail => 'Coordonnées';

  @override
  String get fontSurfaceCallHistory => 'Historique des appels';

  @override
  String get fontSurfaceSheets => 'Feuilles et cueilleurs';

  @override
  String get fontSurfaceInCall => 'Écran d\'appel';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — application entière';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — titres uniquement';
  }

  @override
  String get fontSubtitleCustomize => 'Personnalisé par écran';

  @override
  String get background => 'Arrière-plan';

  @override
  String get accent => 'Accent';

  @override
  String get lightBackground => 'Fond clair';

  @override
  String get lightAccent => 'Accent léger';

  @override
  String get darkBackground => 'Fond sombre';

  @override
  String get darkAccent => 'Accent sombre';

  @override
  String get callBackground => 'Contexte d\'appel';

  @override
  String get appIcon => 'Icône de l\'application';

  @override
  String get answerMethod => 'Méthode de réponse';

  @override
  String get answerSlide => 'Faites glisser pour répondre';

  @override
  String get answerSlideSubtitle =>
      'Faites glisser votre doigt vers la gauche/droite sur la barre, comme Google Phone';

  @override
  String get answerButton => 'Appuyez sur un bouton';

  @override
  String get answerButtonSubtitle =>
      'Appuyez sur les boutons de réponse ou de refus';

  @override
  String get answerHuawei => 'Le style Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Faites glisser le cercle vers le téléphone vert pour répondre';

  @override
  String get answerHuaweiTileSubtitle =>
      'Huawei – faites glisser vers le vert/rouge';

  @override
  String get calling => 'Appel';

  @override
  String get defaultSim => 'Carte SIM par défaut';

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
  String get askEveryTime => 'Demande à chaque fois';

  @override
  String get askEveryTimeSubtitle =>
      'Afficher le sélecteur SIM avant chaque appel';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Aucune carte SIM trouvée';

  @override
  String couldNotLoadSims(String error) {
    return 'Impossible de charger les cartes SIM : $error';
  }

  @override
  String get allFavourites => 'Tous les favoris';

  @override
  String get allFavouritesSubtitle =>
      'Réorganiser, supprimer et ajouter des contacts';

  @override
  String get blockedNumbers => 'Numéros bloqués';

  @override
  String get blockedNumbersSubtitle => 'Afficher et débloquer des numéros';

  @override
  String get soundsAndVibration => 'Sons et vibrations';

  @override
  String get soundsAndVibrationSubtitle =>
      'Sonnerie, vibration, tonalités du clavier';

  @override
  String couldNotOpenSettings(String error) {
    return 'Impossible d\'ouvrir les paramètres : $error';
  }

  @override
  String get frequentlyContacted => 'Fréquemment contacté';

  @override
  String get numberOfRecords => 'Nombre d\'enregistrements';

  @override
  String get timePeriod => 'Période';

  @override
  String get periodLast24Hours => 'Dernières 24 heures';

  @override
  String get periodLast24HoursSubtitle => 'Appels de la veille';

  @override
  String get periodLast7Days => '7 derniers jours';

  @override
  String get periodLast7DaysSubtitle => 'Appels de la semaine dernière';

  @override
  String get periodLast30Days => '30 derniers jours';

  @override
  String get periodLast30DaysSubtitle => 'Appels du mois dernier';

  @override
  String get periodLast12Months => '12 derniers mois';

  @override
  String get periodLast12MonthsSubtitle => 'Appels de l\'année dernière';

  @override
  String get periodAllTime => 'Tout le temps';

  @override
  String get periodAllTimeSubtitle => 'Historique complet des appels';

  @override
  String get frequentMaxOff => 'Désactivé';

  @override
  String frequentMaxCount(int count) {
    return '$count contact';
  }

  @override
  String get torchBlink => 'Clignotement de la torche';

  @override
  String get torchIncomingCall => 'Torche des appels entrants';

  @override
  String get torchOutgoingCall => 'Torche des appels sortants';

  @override
  String get torchOngoingCall => 'Torche d\'appel en cours';

  @override
  String get torchIncomingInterval => 'Intervalle de clignotement entrant';

  @override
  String get torchOutgoingInterval => 'Intervalle de clignement sortant';

  @override
  String get torchOngoingInterval => 'Intervalle de clignement continu';

  @override
  String get torchOff => 'Désactivé';

  @override
  String get torchOffIncomingSubtitle => 'Pas de torche pendant la sonnerie';

  @override
  String get torchOffOutgoingSubtitle => 'Pas de lampe pendant la numérotation';

  @override
  String get torchOffOngoingSubtitle => 'Pas de torche pendant un appel actif';

  @override
  String get torchFixedInterval => 'Intervalle fixe';

  @override
  String get torchFixedIntervalSubtitle =>
      'Cligner des yeux à une vitesse définie';

  @override
  String torchIntervalSeconds(String seconds) {
    return '${seconds}s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds clignote';
  }

  @override
  String get flashlightUnavailable =>
      'Lampe de poche non disponible sur cet appareil';

  @override
  String get glyphLights => 'Lumières de glyphe';

  @override
  String get glyphCallingAnimation => 'Animation d\'appel de glyphes';

  @override
  String get glyphOngoingAnimation => 'Animation d\'appel en cours de glyphe';

  @override
  String get glyphNone => 'Aucun';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Désactiver les lumières Glyph pour les appels sortants';

  @override
  String get glyphNoneInCallSubtitle =>
      'Désactivez les lumières Glyph lorsque vous êtes activement en appel';

  @override
  String get glyphBreathProgress => 'Souffle et progrès';

  @override
  String get glyphBreathProgressSubtitle =>
      'Les lumières respirent pendant que la ligne se remplit pendant 65 s';

  @override
  String get glyphAccumulate => 'Accumuler';

  @override
  String get glyphAccumulateSubtitle =>
      'Animation cumulée sur les lumières C1-C4';

  @override
  String get glyphSingle => 'Célibataire';

  @override
  String get glyphSingleSubtitle => 'Lumière unique se déplaçant sur C1-C4';

  @override
  String get glyphBreath => 'Haleine';

  @override
  String get glyphBreathSubtitle => 'Choisissez les lumières et la vitesse';

  @override
  String get glyphSteady => 'Constant';

  @override
  String get glyphSteadySubtitle =>
      'Les lumières sélectionnées restent allumées';

  @override
  String get breathSettings => 'Paramètres de respiration';

  @override
  String get activeLights => 'Lumières actives';

  @override
  String lightsCount(int count) {
    return '$count lumières';
  }

  @override
  String get speedSettings => 'Paramètres de vitesse';

  @override
  String speedSettingsDelay(int ms) {
    return 'Délai ${ms}ms';
  }

  @override
  String get durationAndSpeed => 'Durée et vitesse';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Durée ${duration}s, intervalle de ${interval}ms';
  }

  @override
  String get cancel => 'Annuler';

  @override
  String get done => 'Fait';

  @override
  String get save => 'Sauvegarder';

  @override
  String get block => 'Bloc';

  @override
  String get delete => 'Supprimer';

  @override
  String get recents => 'Récents';

  @override
  String get contacts => 'Contacts';

  @override
  String get hideFavouritesOnRecents => 'Masquer les favoris sur les Récents';

  @override
  String get showFavouritesOnRecents => 'Afficher les favoris sur les Récents';

  @override
  String get ongoingCall => 'Appel en cours';

  @override
  String get setAsDefaultTitle => 'DÉFINIR COMME\nPAR DÉFAUT';

  @override
  String get setAsDefaultBody =>
      'Pour utiliser Nothing Dialer, il doit être défini comme application téléphonique par défaut. Cela vous permet de gérer les appels, d\'afficher l\'historique et d\'utiliser les animations Glyph.';

  @override
  String get setAsDefaultButton => 'DÉFINI PAR DÉFAUT';

  @override
  String get nothingDialerBrand => 'RIEN COMPOSEUR 1';

  @override
  String get favourites => 'Favoris';

  @override
  String get addFavourite => 'Ajouter un favori';

  @override
  String get favouritesDrawerHint =>
      'Utilisez le menu pour ajouter des contacts. Appuyez à l\'extérieur du tiroir ou faites-le glisser pour le fermer. Ajoutez un contact à partir de ses coordonnées ou appuyez longuement sur un appel dans Récents.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'Pas encore de favoris.\nOuvrez le menu pour en ajouter un ou marquer un contact.';

  @override
  String get contactsPermissionNeeded => 'Autorisation des contacts requise';

  @override
  String get chooseContact => 'Choisissez un contact';

  @override
  String get noPhone => 'Pas de téléphone';

  @override
  String get pickNumber => 'Choisir un numéro';

  @override
  String get contactHasNoPhone => 'Ce contact n\'a pas de numéro de téléphone';

  @override
  String get blockNumber => 'Numéro de bloc';

  @override
  String get enterPhoneNumber => 'Entrez le numéro de téléphone';

  @override
  String unblockedDisplay(String display) {
    return 'Débloqué $display';
  }

  @override
  String get couldNotUnblockNumber => 'Impossible de débloquer le numéro';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bloqué • $matched correspond';
  }

  @override
  String get contactsPermissionMissing =>
      'Autorisation des contacts manquante. Appuyez pour réparer.';

  @override
  String get noBlockedNumbers => 'Aucun numéro bloqué';

  @override
  String get unknownContact => 'Contact inconnu';

  @override
  String get unblock => 'Débloquer';

  @override
  String get permissionNeeded => 'Autorisation requise';

  @override
  String get grantPhonePermission =>
      'Accordez au téléphone l\'autorisation de consulter votre historique d\'appels.';

  @override
  String get grantContactsPermission =>
      'Accordez aux contacts la permission de voir votre carnet d’adresses.';

  @override
  String get openSettings => 'Ouvrir les paramètres';

  @override
  String get tryAgain => 'Essayer à nouveau';

  @override
  String get couldNotLoadContacts => 'Impossible de charger les contacts';

  @override
  String get contactsLoadError =>
      'Une erreur s\'est produite lors de la lecture de votre carnet d\'adresses.';

  @override
  String get noContactsFound => 'Aucun contact trouvé';

  @override
  String get contactsEmptySubtitle =>
      'Les contacts de votre appareil apparaîtront ici.';

  @override
  String get searchContacts => 'Rechercher des contacts…';

  @override
  String get searchRecentCalls => 'Rechercher des appels récents';

  @override
  String get fromContacts => 'À partir des contacts';

  @override
  String get recentsSearchSection => 'Recherche récente';

  @override
  String get recentsSearchShowContacts =>
      'Afficher les contacts dans la recherche';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Lors de la recherche de messages récents, affichez également les personnes correspondantes de votre carnet d\'adresses sous les résultats de l\'historique des appels.';

  @override
  String get voiceSearch => 'Recherche vocale';

  @override
  String get createNewContact => 'Créer un nouveau contact';

  @override
  String callError(String error) {
    return 'Erreur d\'appel : $error';
  }

  @override
  String get noRecentCalls => 'Aucun appel récent';

  @override
  String get callHistoryEmpty => 'Votre historique d’appels apparaîtra ici.';

  @override
  String get loadMore => 'Charger plus';

  @override
  String get frequentlyContactedHeader => 'Fréquemment contacté';

  @override
  String get recentHistory => 'Histoire récente';

  @override
  String get noFavouritesRecentsHint =>
      'Pas encore de favoris. Marquez un contact, appuyez longuement sur un appel ou utilisez l\'onglet Favoris.';

  @override
  String get copyNumber => 'Numéro de copie';

  @override
  String get editNumberBeforeCall => 'Modifier le numéro avant l\'appel';

  @override
  String get removeFromFavourites => 'Supprimer des favoris';

  @override
  String get addToFavourites => 'Ajouter aux favoris';

  @override
  String get blockNumberQuestion => 'Numéro de bloc ?';

  @override
  String blockNumberConfirm(String number) {
    return 'Vous ne recevrez plus d\'appels ni de SMS du $number.';
  }

  @override
  String get blocked => 'Bloqué';

  @override
  String get couldNotBlock => 'Impossible de bloquer';

  @override
  String get contactNotOnDevice => 'Contact non enregistré sur cet appareil';

  @override
  String get unblocked => 'Débloqué';

  @override
  String get numberCopied => 'Numéro copié';

  @override
  String get showLess => 'Afficher moins';

  @override
  String get showAllTimes => 'Afficher toutes les heures';

  @override
  String mostRecent(String time) {
    return 'Le plus récent · $time';
  }

  @override
  String get videoCall => 'Appel vidéo';

  @override
  String get couldNotPlaceVideoCall => 'Impossible de passer un appel vidéo';

  @override
  String get message => 'Message';

  @override
  String get couldNotOpenMessaging =>
      'Impossible d\'ouvrir l\'application de messagerie';

  @override
  String get history => 'Histoire';

  @override
  String get viewContact => 'Afficher les contacts';

  @override
  String get addToContact => 'Ajouter au contact';

  @override
  String get callTypeMissed => 'Manqué';

  @override
  String get callTypeRejected => 'Rejeté';

  @override
  String get callTypeIncoming => 'Entrant';

  @override
  String get callTypeOutgoing => 'Sortant';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get yesterday => 'Hier';

  @override
  String get justNow => 'À l\'instant';

  @override
  String minutesAgo(int count) {
    return 'il y a $count min';
  }

  @override
  String hoursAgo(int count) {
    return 'Il y a $count heure';
  }

  @override
  String get filterAll => 'Tous';

  @override
  String get filterMissed => 'Manqué';

  @override
  String get filterContacts => 'Contacts';

  @override
  String get filterNonContacts => 'Non-contacts';

  @override
  String get iconUpdated =>
      'Icône mise à jour. L\'actualisation de votre écran d\'accueil peut prendre un moment.';

  @override
  String get iconSavedRelease =>
      'Choix enregistré. L\'icône de l\'écran d\'accueil est mise à jour dans les versions.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Impossible de changer l\'icône : $error';
  }

  @override
  String get launcherClassicBlack => 'Classique (noir)';

  @override
  String get launcherLight => 'Lumière';

  @override
  String get launcherNothingRed => 'Rien de rouge';

  @override
  String get launcherDarkGrey => 'Gris foncé';

  @override
  String get launcherCream => 'Crème';

  @override
  String get launcherRetroPhone => 'Téléphone rétro';

  @override
  String get launcherRetroPhoneLight => 'Téléphone rétro (léger)';

  @override
  String get voiceSearchUnavailable =>
      'La recherche vocale n\'est pas disponible sur cet appareil.';

  @override
  String voiceSearchFailed(String error) {
    return 'Échec de la recherche vocale : $error';
  }

  @override
  String get customColor => 'Coutume';

  @override
  String get selectColor => 'Sélectionnez la couleur';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get simPickerTitle => 'Choisissez une carte SIM';

  @override
  String get simChooseForCall => 'Choisir la SIM pour cet appel';

  @override
  String get defaultSimAsk => 'Demande à chaque fois';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Coordonnées';

  @override
  String get call => 'Appel';

  @override
  String get share => 'Partager';

  @override
  String get favourite => 'Préféré';

  @override
  String get unfavourite => 'Je n\'aime pas';

  @override
  String get blockContact => 'Bloquer les contacts';

  @override
  String get unblockContact => 'Débloquer le contact';

  @override
  String get deleteContact => 'Supprimer le contact';

  @override
  String get phone => 'Téléphone';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Sonnerie';

  @override
  String get defaultRingtone => 'Défaut';

  @override
  String get simForContact => 'SIM pour ce contact';

  @override
  String get callHistoryTitle => 'Historique des appels';

  @override
  String get noCallsWithNumber => 'Aucun appel avec ce numéro';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animation de glyphe';

  @override
  String get inCallGlyphAnimationStyle =>
      'Animation du glyphe lors d\'un appel';

  @override
  String get recordsOff => 'Désactivé';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Carte SIM par défaut';

  @override
  String get nothingPhoneOnly => 'Rien Téléphone uniquement';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Les fonctionnalités de Glyph nécessitent un téléphone Nothing';

  @override
  String get custom => 'Personnalisé';

  @override
  String presetColorHex(String hex) {
    return 'Préréglage · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Personnalisé · $hex';
  }

  @override
  String get oneContact => '1 contact';

  @override
  String upToContacts(int count) {
    return 'Jusqu\'à $count contacts';
  }

  @override
  String get answerButtonTapSubtitle => 'Appuyez sur le bouton pour répondre';

  @override
  String get filterCalls => 'Filtrer les appels';

  @override
  String get filterTooltip => 'Filtre';

  @override
  String get settingsTooltip => 'Paramètres';

  @override
  String get filterAllSubtitle => 'Journal d\'appels complet';

  @override
  String get filterMissedSubtitle => 'Manqué et rejeté';

  @override
  String get filterContactsSubtitle =>
      'Appels correspondant à un contact enregistré';

  @override
  String get filterNonContactsSubtitle =>
      'Numéros absents de votre carnet d\'adresses';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Appel en cours : $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM par défaut pour les appels';

  @override
  String get blinkInterval => 'Intervalle de clignotement';

  @override
  String get close => 'Fermer';

  @override
  String get frequentlyContactedInfoBody =>
      'Affiche vos numéros de téléphone les plus appelés en haut de l\'onglet Récents, en fonction du nombre d\'appels entrants, sortants, manqués ou rejetés que vous avez reçus avec chaque numéro au cours de la période choisie.\n\nNombre d\'enregistrements : définissez-le sur 0 pour désactiver cette option. Utilisez 1 à 20 pour afficher autant de contacts importants.\n\nLa période de temps s\'applique uniquement lorsqu\'au moins un contact est affiché.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count lumières, vitesse ${ms}ms';
  }

  @override
  String get deleteContactQuestion => 'Supprimer le contact ?';

  @override
  String get deleteContactBody =>
      'Ce contact sera définitivement supprimé de votre appareil.';

  @override
  String get blockContactQuestion => 'Bloquer les contacts ?';

  @override
  String get unblockContactQuestion => 'Débloquer le contact ?';

  @override
  String get blockContactBody =>
      'Vous ne recevrez plus d\'appels ni de SMS de ce contact.';

  @override
  String get unblockContactBody =>
      'Vous commencerez à recevoir des appels et des SMS de ce contact.';

  @override
  String get contactBlocked => 'Contact bloqué';

  @override
  String get contactUnblocked => 'Contact débloqué';

  @override
  String get noPhoneNumbersToBlock => 'Aucun numéro de téléphone à bloquer';

  @override
  String get simSameAsSystem => 'Identique au système';

  @override
  String get simSameAsSystemSubtitle =>
      'Suit la carte SIM par défaut dans les paramètres';

  @override
  String get simAskEveryTimeForContact =>
      'Toujours afficher le sélecteur de carte SIM pour ce contact';

  @override
  String get ringtoneSetForContact =>
      'Sonnerie définie globalement pour ce contact';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Échec de la sélection de la sonnerie : $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Erreur : $error';
  }

  @override
  String get noCallHistoryFound => 'Aucun historique d\'appels trouvé';

  @override
  String get speedDialVoicemail => 'Numérotation rapide : Messagerie vocale';

  @override
  String shareContactSubject(String name) {
    return 'Contact : $name';
  }

  @override
  String get contactInfo => 'Coordonnées';

  @override
  String get dontAskAgainSim => 'Ne demande plus';

  @override
  String get simDontAskAgainSubtitle =>
      'Utiliser cette SIM par défaut (modification dans Paramètres)';

  @override
  String get addContact => 'Ajouter un contact';

  @override
  String get createContact => 'Créer un contact';

  @override
  String get paste => 'Coller';

  @override
  String get clear => 'Clair';

  @override
  String get returnToCall => 'Retourner à l\'appel';

  @override
  String get numberOfRecordsTitle => 'Nombre d\'enregistrements';

  @override
  String get recordsPickerSubtitle =>
      'Combien d\'entrées fréquemment contactées à afficher (0 = désactivé)';

  @override
  String get torchInfoTitle => 'Clignotement de la torche';

  @override
  String get torchInfoBody =>
      'Fait clignoter le flash de l\'appareil photo pendant les appels entrants, sortants ou en cours. Indépendant des lumières Glyph.';

  @override
  String get glyphMapTitle => 'Disposition des glyphes';

  @override
  String get glyphMapBody =>
      'Rien Zones LED du glyphe du téléphone 1. Les animations sortantes et entrantes utilisent ces canaux.';

  @override
  String get answerMethodTitle => 'Méthode de réponse';

  @override
  String get glyphOutgoingCallStyleTitle => 'Style d\'appel sortant';

  @override
  String get glyphInCallAnimationTitle =>
      'Animation de glyphe lors d\'un appel';

  @override
  String get themePickerTitle => 'Thème';

  @override
  String get torchIncomingTitle => 'Torche des appels entrants';

  @override
  String get torchOutgoingTitle => 'Torche des appels sortants';

  @override
  String get torchOngoingTitle => 'Torche d\'appel en cours';

  @override
  String get timePeriodTitle => 'Période';

  @override
  String get ok => 'D\'ACCORD';

  @override
  String get confirmDeleteCall => 'Supprimer cet appel de l\'historique ?';

  @override
  String get confirmDeleteAllCalls =>
      'Supprimer tous les appels avec ce numéro ?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Envoyer un message';

  @override
  String get addToExistingContactAction => 'Ajouter à un contact';

  @override
  String get mobileLabel => 'Mobile';

  @override
  String get callingSimForContactTitle => 'Appel SIM pour ce contact';

  @override
  String get contactSettings => 'Paramètres des contacts';

  @override
  String get setCallingSim => 'Définir la carte SIM d\'appel';

  @override
  String get contactRingtone => 'Sonnerie de contact';

  @override
  String get shareContact => 'Partager le contact';

  @override
  String get blockNumbers => 'Bloquer les numéros';

  @override
  String get unblockNumbers => 'Débloquer des numéros';

  @override
  String get connectedApps => 'Applications connectées';

  @override
  String get simNotSet => 'Non défini';

  @override
  String get ringtoneDefault => 'Défaut';

  @override
  String get customRingtone => 'Coutume';

  @override
  String get aboutSection => 'À propos';

  @override
  String get aboutFeedbackSection => 'À propos et commentaires';

  @override
  String get aboutDescription =>
      'Nothing Dialer est open source. Si vous êtes développeur, vous pouvez explorer le code et contribuer.';

  @override
  String get aboutViewSource => 'Voir sur GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Impossible d\'ouvrir le lien';

  @override
  String get reviewSection => 'Avis';

  @override
  String get reviewDescription =>
      'Vous aimez Nothing Dialer ? Votre note sur Google Play aide les autres à découvrir l\'application.';

  @override
  String get reviewRateOnPlay => 'Noter sur Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Noter sans quitter l\'application';

  @override
  String get reviewCouldNotOpen => 'Impossible d\'ouvrir Google Play';

  @override
  String get breathSpeed => 'Vitesse de respiration';

  @override
  String get breathSpeedBlinkHint =>
      'Inférieur = Clignement, Supérieur = Respiration lente';

  @override
  String get speedSliderHint => 'Plus bas = plus rapide, plus haut = plus lent';

  @override
  String get swatchDefault => 'Défaut';

  @override
  String get customAccentColorPicker => 'Couleur d\'accent personnalisée';

  @override
  String get customLightBackgroundPicker => 'Fond clair personnalisé';

  @override
  String get customDarkBackgroundPicker => 'Fond sombre personnalisé';

  @override
  String get customCallBackgroundPicker => 'Arrière-plan d\'appel personnalisé';

  @override
  String get ongoingCallStyleTitle => 'Style d\'appel en cours';

  @override
  String get glyphMapUnavailable => 'Carte des glyphes indisponible';

  @override
  String get animationDelayRange => 'Délai d\'animation (1 s - 10 s)';

  @override
  String get animationDelayRangeSingle => 'Délai d\'animation (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Muet';

  @override
  String get inCallKeypad => 'Clavier';

  @override
  String get inCallSpeaker => 'Haut-parleur';

  @override
  String get inCallMore => 'Plus';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Téléphone';

  @override
  String get inCallAddCall => 'Ajouter un appel';

  @override
  String get inCallChangeSim => 'Changer de SIM';

  @override
  String get inCallDecline => 'Refuser';

  @override
  String get inCallAnswer => 'Répondre';

  @override
  String get inCallMessage => 'Message';

  @override
  String get inCallCalling => 'Appel en cours…';

  @override
  String get inCallIncoming => 'Appel entrant';

  @override
  String get inCallSelectSim => 'Choisir la SIM…';

  @override
  String get inCallSwitchingSim => 'Changement de SIM…';

  @override
  String get inCallCallEnded => 'Appel terminé';

  @override
  String inCallCallingVia(String sim) {
    return 'Appel via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Appel via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Choisir la SIM pour cet appel';

  @override
  String get inCallDragAnswerDecline =>
      'Glisser à droite pour répondre · à gauche pour refuser';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobile $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label  (Actuel)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Appel via <b>$sim</b> depuis';
  }

  @override
  String get inCallCallFrom => 'Appel de';

  @override
  String get inCallUnknown => 'Inconnu';

  @override
  String get selectContactRingtone => 'Sélectionner la sonnerie du contact';

  @override
  String get speakToSearchPrompt => 'Parlez pour rechercher';

  @override
  String get phonePermissionRequired => 'Autorisation téléphone requise';

  @override
  String callFailed(String error) {
    return 'Échec de l\'appel : $error';
  }

  @override
  String get callPermissionDenied => 'Autorisation d\'appel refusée';

  @override
  String get alreadyDefaultDialer => 'Déjà l\'application téléphone par défaut';

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

/// The translations for French, as used in Canada (`fr_CA`).
class AppLocalizationsFrCa extends AppLocalizationsFr {
  AppLocalizationsFrCa() : super('fr_CA');

  @override
  String get appTitle => 'Rien du composeur';

  @override
  String get settings => 'Paramètres';

  @override
  String get settingsSearchHint => 'Paramètres de recherche';

  @override
  String get settingsSearchNoResults => 'Aucun paramètre trouvé';

  @override
  String get general => 'Général';

  @override
  String get theme => 'Thème';

  @override
  String get themeSystemDefault => 'Système par défaut';

  @override
  String get themeLight => 'Lumière';

  @override
  String get themeDark => 'Sombre';

  @override
  String get themeFollowSystem => 'Suivre les paramètres du système';

  @override
  String get themeAlwaysLight => 'Utilisez toujours un thème clair';

  @override
  String get themeAlwaysDark => 'Utilisez toujours un thème sombre';

  @override
  String get language => 'Langue';

  @override
  String get languageDeviceDefault => 'Appareil par défaut';

  @override
  String get languagePickerTitle => 'Langue';

  @override
  String get languageSearchHint => 'Langues de recherche';

  @override
  String get font => 'Fonte';

  @override
  String get fontSystem => 'Valeur par défaut du système';

  @override
  String get fontNdot => 'Rien (NDot)';

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
      'Le téléchargement de la police a échoué. Vérifiez votre connexion et réessayez.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Fonte';

  @override
  String get fontPreviewSample => 'Rien du composeur';

  @override
  String get fontAppWide => 'Police de l\'application';

  @override
  String get fontApplyTo => 'Postuler à';

  @override
  String get fontApplyEntireApp => 'Application entière';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Même police partout, y compris lors d\'un appel';

  @override
  String get fontApplyTitlesOnly => 'Titres et en-têtes';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Gros titres et en-têtes de section uniquement';

  @override
  String get fontApplyCustomize => 'Personnaliser';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Choisissez la police par écran et type de texte';

  @override
  String get fontCustomizeSection => 'Personnaliser par écran';

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
  String get fontRolePageTitle => 'Titre de la page';

  @override
  String get fontRoleSectionHeader => 'En-tête de section';

  @override
  String get fontRolePrimary => 'Texte principal';

  @override
  String get fontRoleSecondary => 'Texte secondaire';

  @override
  String get fontRoleButton => 'Boutons';

  @override
  String get fontRoleDialKey => 'Touches du clavier';

  @override
  String get fontSurfaceRecents => 'Récents';

  @override
  String get fontSurfaceContacts => 'Contacts';

  @override
  String get fontSurfaceSettings => 'Paramètres';

  @override
  String get fontSurfaceDialpad => 'Clavier';

  @override
  String get fontSurfaceShell => 'Navigation';

  @override
  String get fontSurfaceDefaultDialer => 'Invite du numéroteur par défaut';

  @override
  String get fontSurfaceFavourites => 'Favoris';

  @override
  String get fontSurfaceBlocked => 'Numéros bloqués';

  @override
  String get fontSurfaceContactDetail => 'Coordonnées';

  @override
  String get fontSurfaceCallHistory => 'Historique des appels';

  @override
  String get fontSurfaceSheets => 'Feuilles et cueilleurs';

  @override
  String get fontSurfaceInCall => 'Écran d\'appel';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — application entière';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — titres uniquement';
  }

  @override
  String get fontSubtitleCustomize => 'Personnalisé par écran';

  @override
  String get background => 'Arrière-plan';

  @override
  String get accent => 'Accent';

  @override
  String get lightBackground => 'Fond clair';

  @override
  String get lightAccent => 'Accent léger';

  @override
  String get darkBackground => 'Fond sombre';

  @override
  String get darkAccent => 'Accent sombre';

  @override
  String get callBackground => 'Contexte d\'appel';

  @override
  String get appIcon => 'Icône de l\'application';

  @override
  String get answerMethod => 'Méthode de réponse';

  @override
  String get answerSlide => 'Faites glisser pour répondre';

  @override
  String get answerSlideSubtitle =>
      'Faites glisser votre doigt vers la gauche/droite sur la barre, comme Google Phone';

  @override
  String get answerButton => 'Appuyez sur un bouton';

  @override
  String get answerButtonSubtitle =>
      'Appuyez sur les boutons de réponse ou de refus';

  @override
  String get answerHuawei => 'Le style Huawei';

  @override
  String get answerHuaweiSubtitle =>
      'Faites glisser le cercle vers le téléphone vert pour répondre';

  @override
  String get answerHuaweiTileSubtitle =>
      'Huawei – faites glisser vers le vert/rouge';

  @override
  String get calling => 'Appel';

  @override
  String get defaultSim => 'Carte SIM par défaut';

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
  String get askEveryTime => 'Demande à chaque fois';

  @override
  String get askEveryTimeSubtitle =>
      'Afficher le sélecteur SIM avant chaque appel';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Aucune carte SIM trouvée';

  @override
  String couldNotLoadSims(String error) {
    return 'Impossible de charger les cartes SIM : $error';
  }

  @override
  String get allFavourites => 'Tous les favoris';

  @override
  String get allFavouritesSubtitle =>
      'Réorganiser, supprimer et ajouter des contacts';

  @override
  String get blockedNumbers => 'Numéros bloqués';

  @override
  String get blockedNumbersSubtitle => 'Afficher et débloquer des numéros';

  @override
  String get soundsAndVibration => 'Sons et vibrations';

  @override
  String get soundsAndVibrationSubtitle =>
      'Sonnerie, vibration, tonalités du clavier';

  @override
  String couldNotOpenSettings(String error) {
    return 'Impossible d\'ouvrir les paramètres : $error';
  }

  @override
  String get frequentlyContacted => 'Fréquemment contacté';

  @override
  String get numberOfRecords => 'Nombre d\'enregistrements';

  @override
  String get timePeriod => 'Période';

  @override
  String get periodLast24Hours => 'Dernières 24 heures';

  @override
  String get periodLast24HoursSubtitle => 'Appels de la veille';

  @override
  String get periodLast7Days => '7 derniers jours';

  @override
  String get periodLast7DaysSubtitle => 'Appels de la semaine dernière';

  @override
  String get periodLast30Days => '30 derniers jours';

  @override
  String get periodLast30DaysSubtitle => 'Appels du mois dernier';

  @override
  String get periodLast12Months => '12 derniers mois';

  @override
  String get periodLast12MonthsSubtitle => 'Appels de l\'année dernière';

  @override
  String get periodAllTime => 'Tout le temps';

  @override
  String get periodAllTimeSubtitle => 'Historique complet des appels';

  @override
  String get frequentMaxOff => 'Désactivé';

  @override
  String frequentMaxCount(int count) {
    return '$count contact';
  }

  @override
  String get torchBlink => 'Clignotement de la torche';

  @override
  String get torchIncomingCall => 'Torche des appels entrants';

  @override
  String get torchOutgoingCall => 'Torche des appels sortants';

  @override
  String get torchOngoingCall => 'Torche d\'appel en cours';

  @override
  String get torchIncomingInterval => 'Intervalle de clignotement entrant';

  @override
  String get torchOutgoingInterval => 'Intervalle de clignement sortant';

  @override
  String get torchOngoingInterval => 'Intervalle de clignement continu';

  @override
  String get torchOff => 'Désactivé';

  @override
  String get torchOffIncomingSubtitle => 'Pas de torche pendant la sonnerie';

  @override
  String get torchOffOutgoingSubtitle => 'Pas de lampe pendant la numérotation';

  @override
  String get torchOffOngoingSubtitle => 'Pas de torche pendant un appel actif';

  @override
  String get torchFixedInterval => 'Intervalle fixe';

  @override
  String get torchFixedIntervalSubtitle =>
      'Cligner des yeux à une vitesse définie';

  @override
  String torchIntervalSeconds(String seconds) {
    return '${seconds}s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds clignote';
  }

  @override
  String get flashlightUnavailable =>
      'Lampe de poche non disponible sur cet appareil';

  @override
  String get glyphLights => 'Lumières de glyphe';

  @override
  String get glyphCallingAnimation => 'Animation d\'appel de glyphes';

  @override
  String get glyphOngoingAnimation => 'Animation d\'appel en cours de glyphe';

  @override
  String get glyphNone => 'Aucun';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Désactiver les lumières Glyph pour les appels sortants';

  @override
  String get glyphNoneInCallSubtitle =>
      'Désactivez les lumières Glyph lorsque vous êtes activement en appel';

  @override
  String get glyphBreathProgress => 'Souffle et progrès';

  @override
  String get glyphBreathProgressSubtitle =>
      'Les lumières respirent pendant que la ligne se remplit pendant 65 s';

  @override
  String get glyphAccumulate => 'Accumuler';

  @override
  String get glyphAccumulateSubtitle =>
      'Animation cumulée sur les lumières C1-C4';

  @override
  String get glyphSingle => 'Célibataire';

  @override
  String get glyphSingleSubtitle => 'Lumière unique se déplaçant sur C1-C4';

  @override
  String get glyphBreath => 'Haleine';

  @override
  String get glyphBreathSubtitle => 'Choisissez les lumières et la vitesse';

  @override
  String get glyphSteady => 'Constant';

  @override
  String get glyphSteadySubtitle =>
      'Les lumières sélectionnées restent allumées';

  @override
  String get breathSettings => 'Paramètres de respiration';

  @override
  String get activeLights => 'Lumières actives';

  @override
  String lightsCount(int count) {
    return '$count lumières';
  }

  @override
  String get speedSettings => 'Paramètres de vitesse';

  @override
  String speedSettingsDelay(int ms) {
    return 'Délai ${ms}ms';
  }

  @override
  String get durationAndSpeed => 'Durée et vitesse';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return 'Durée ${duration}s, intervalle de ${interval}ms';
  }

  @override
  String get cancel => 'Annuler';

  @override
  String get done => 'Fait';

  @override
  String get save => 'Sauvegarder';

  @override
  String get block => 'Bloc';

  @override
  String get delete => 'Supprimer';

  @override
  String get recents => 'Récents';

  @override
  String get contacts => 'Contacts';

  @override
  String get hideFavouritesOnRecents => 'Masquer les favoris sur les Récents';

  @override
  String get showFavouritesOnRecents => 'Afficher les favoris sur les Récents';

  @override
  String get ongoingCall => 'Appel en cours';

  @override
  String get setAsDefaultTitle => 'DÉFINIR COMME\nPAR DÉFAUT';

  @override
  String get setAsDefaultBody =>
      'Pour utiliser Nothing Dialer, il doit être défini comme application téléphonique par défaut. Cela vous permet de gérer les appels, d\'afficher l\'historique et d\'utiliser les animations Glyph.';

  @override
  String get setAsDefaultButton => 'DÉFINI PAR DÉFAUT';

  @override
  String get nothingDialerBrand => 'RIEN COMPOSEUR 1';

  @override
  String get favourites => 'Favoris';

  @override
  String get addFavourite => 'Ajouter un favori';

  @override
  String get favouritesDrawerHint =>
      'Utilisez le menu pour ajouter des contacts. Appuyez à l\'extérieur du tiroir ou faites-le glisser pour le fermer. Ajoutez un contact à partir de ses coordonnées ou appuyez longuement sur un appel dans Récents.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'Pas encore de favoris.\nOuvrez le menu pour en ajouter un ou marquer un contact.';

  @override
  String get contactsPermissionNeeded => 'Autorisation des contacts requise';

  @override
  String get chooseContact => 'Choisissez un contact';

  @override
  String get noPhone => 'Pas de téléphone';

  @override
  String get pickNumber => 'Choisir un numéro';

  @override
  String get contactHasNoPhone => 'Ce contact n\'a pas de numéro de téléphone';

  @override
  String get blockNumber => 'Numéro de bloc';

  @override
  String get enterPhoneNumber => 'Entrez le numéro de téléphone';

  @override
  String unblockedDisplay(String display) {
    return 'Débloqué $display';
  }

  @override
  String get couldNotUnblockNumber => 'Impossible de débloquer le numéro';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked bloqué • $matched correspond';
  }

  @override
  String get contactsPermissionMissing =>
      'Autorisation des contacts manquante. Appuyez pour réparer.';

  @override
  String get noBlockedNumbers => 'Aucun numéro bloqué';

  @override
  String get unknownContact => 'Contact inconnu';

  @override
  String get unblock => 'Débloquer';

  @override
  String get permissionNeeded => 'Autorisation requise';

  @override
  String get grantPhonePermission =>
      'Accordez au téléphone l\'autorisation de consulter votre historique d\'appels.';

  @override
  String get grantContactsPermission =>
      'Accordez aux contacts la permission de voir votre carnet d’adresses.';

  @override
  String get openSettings => 'Ouvrir les paramètres';

  @override
  String get tryAgain => 'Essayer à nouveau';

  @override
  String get couldNotLoadContacts => 'Impossible de charger les contacts';

  @override
  String get contactsLoadError =>
      'Une erreur s\'est produite lors de la lecture de votre carnet d\'adresses.';

  @override
  String get noContactsFound => 'Aucun contact trouvé';

  @override
  String get contactsEmptySubtitle =>
      'Les contacts de votre appareil apparaîtront ici.';

  @override
  String get searchContacts => 'Rechercher des contacts…';

  @override
  String get searchRecentCalls => 'Rechercher des appels récents';

  @override
  String get fromContacts => 'À partir des contacts';

  @override
  String get recentsSearchSection => 'Recherche récente';

  @override
  String get recentsSearchShowContacts =>
      'Afficher les contacts dans la recherche';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Lors de la recherche de messages récents, affichez également les personnes correspondantes de votre carnet d\'adresses sous les résultats de l\'historique des appels.';

  @override
  String get voiceSearch => 'Recherche vocale';

  @override
  String get createNewContact => 'Créer un nouveau contact';

  @override
  String callError(String error) {
    return 'Erreur d\'appel : $error';
  }

  @override
  String get noRecentCalls => 'Aucun appel récent';

  @override
  String get callHistoryEmpty => 'Votre historique d’appels apparaîtra ici.';

  @override
  String get loadMore => 'Charger plus';

  @override
  String get frequentlyContactedHeader => 'Fréquemment contacté';

  @override
  String get recentHistory => 'Histoire récente';

  @override
  String get noFavouritesRecentsHint =>
      'Pas encore de favoris. Marquez un contact, appuyez longuement sur un appel ou utilisez l\'onglet Favoris.';

  @override
  String get copyNumber => 'Numéro de copie';

  @override
  String get editNumberBeforeCall => 'Modifier le numéro avant l\'appel';

  @override
  String get removeFromFavourites => 'Supprimer des favoris';

  @override
  String get addToFavourites => 'Ajouter aux favoris';

  @override
  String get blockNumberQuestion => 'Numéro de bloc ?';

  @override
  String blockNumberConfirm(String number) {
    return 'Vous ne recevrez plus d\'appels ni de SMS du $number.';
  }

  @override
  String get blocked => 'Bloqué';

  @override
  String get couldNotBlock => 'Impossible de bloquer';

  @override
  String get contactNotOnDevice => 'Contact non enregistré sur cet appareil';

  @override
  String get unblocked => 'Débloqué';

  @override
  String get numberCopied => 'Numéro copié';

  @override
  String get showLess => 'Afficher moins';

  @override
  String get showAllTimes => 'Afficher toutes les heures';

  @override
  String mostRecent(String time) {
    return 'Le plus récent · $time';
  }

  @override
  String get videoCall => 'Appel vidéo';

  @override
  String get couldNotPlaceVideoCall => 'Impossible de passer un appel vidéo';

  @override
  String get message => 'Message';

  @override
  String get couldNotOpenMessaging =>
      'Impossible d\'ouvrir l\'application de messagerie';

  @override
  String get history => 'Histoire';

  @override
  String get viewContact => 'Afficher les contacts';

  @override
  String get addToContact => 'Ajouter au contact';

  @override
  String get callTypeMissed => 'Manqué';

  @override
  String get callTypeRejected => 'Rejeté';

  @override
  String get callTypeIncoming => 'Entrant';

  @override
  String get callTypeOutgoing => 'Sortant';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get yesterday => 'Hier';

  @override
  String get justNow => 'Tout à l\' heure';

  @override
  String minutesAgo(int count) {
    return 'il y a $count min';
  }

  @override
  String hoursAgo(int count) {
    return 'Il y a $count heure';
  }

  @override
  String get filterAll => 'Tous';

  @override
  String get filterMissed => 'Manqué';

  @override
  String get filterContacts => 'Contacts';

  @override
  String get filterNonContacts => 'Non-contacts';

  @override
  String get iconUpdated =>
      'Icône mise à jour. L\'actualisation de votre écran d\'accueil peut prendre un moment.';

  @override
  String get iconSavedRelease =>
      'Choix enregistré. L\'icône de l\'écran d\'accueil est mise à jour dans les versions.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Impossible de changer l\'icône : $error';
  }

  @override
  String get launcherClassicBlack => 'Classique (noir)';

  @override
  String get launcherLight => 'Lumière';

  @override
  String get launcherNothingRed => 'Rien de rouge';

  @override
  String get launcherDarkGrey => 'Gris foncé';

  @override
  String get launcherCream => 'Crème';

  @override
  String get launcherRetroPhone => 'Téléphone rétro';

  @override
  String get launcherRetroPhoneLight => 'Téléphone rétro (léger)';

  @override
  String get voiceSearchUnavailable =>
      'La recherche vocale n\'est pas disponible sur cet appareil.';

  @override
  String voiceSearchFailed(String error) {
    return 'Échec de la recherche vocale : $error';
  }

  @override
  String get customColor => 'Coutume';

  @override
  String get selectColor => 'Sélectionnez la couleur';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get simPickerTitle => 'Choisissez une carte SIM';

  @override
  String get simChooseForCall => 'Choisir la SIM pour cet appel';

  @override
  String get defaultSimAsk => 'Demande à chaque fois';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Coordonnées';

  @override
  String get call => 'Appel';

  @override
  String get share => 'Partager';

  @override
  String get favourite => 'Préféré';

  @override
  String get unfavourite => 'Je n\'aime pas';

  @override
  String get blockContact => 'Bloquer les contacts';

  @override
  String get unblockContact => 'Débloquer le contact';

  @override
  String get deleteContact => 'Supprimer le contact';

  @override
  String get phone => 'Téléphone';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Sonnerie';

  @override
  String get defaultRingtone => 'Défaut';

  @override
  String get simForContact => 'SIM pour ce contact';

  @override
  String get callHistoryTitle => 'Historique des appels';

  @override
  String get noCallsWithNumber => 'Aucun appel avec ce numéro';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Animation de glyphe';

  @override
  String get inCallGlyphAnimationStyle =>
      'Animation du glyphe lors d\'un appel';

  @override
  String get recordsOff => 'Désactivé';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Carte SIM par défaut';

  @override
  String get nothingPhoneOnly => 'Rien Téléphone uniquement';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Les fonctionnalités de Glyph nécessitent un téléphone Nothing';

  @override
  String get custom => 'Coutume';

  @override
  String presetColorHex(String hex) {
    return 'Préréglage · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Personnalisé · $hex';
  }

  @override
  String get oneContact => '1 contact';

  @override
  String upToContacts(int count) {
    return 'Jusqu\'à $count contacts';
  }

  @override
  String get answerButtonTapSubtitle => 'Appuyez sur le bouton pour répondre';

  @override
  String get filterCalls => 'Filtrer les appels';

  @override
  String get filterTooltip => 'Filtre';

  @override
  String get settingsTooltip => 'Paramètres';

  @override
  String get filterAllSubtitle => 'Journal d\'appels complet';

  @override
  String get filterMissedSubtitle => 'Manqué et rejeté';

  @override
  String get filterContactsSubtitle =>
      'Appels correspondant à un contact enregistré';

  @override
  String get filterNonContactsSubtitle =>
      'Numéros absents de votre carnet d\'adresses';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Appel en cours : $detail';
  }

  @override
  String get defaultSimForCalls => 'SIM par défaut pour les appels';

  @override
  String get blinkInterval => 'Intervalle de clignotement';

  @override
  String get close => 'Fermer';

  @override
  String get frequentlyContactedInfoBody =>
      'Affiche vos numéros de téléphone les plus appelés en haut de l\'onglet Récents, en fonction du nombre d\'appels entrants, sortants, manqués ou rejetés que vous avez reçus avec chaque numéro au cours de la période choisie.\n\nNombre d\'enregistrements : définissez-le sur 0 pour désactiver cette option. Utilisez 1 à 20 pour afficher autant de contacts importants.\n\nLa période de temps s\'applique uniquement lorsqu\'au moins un contact est affiché.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count lumières, vitesse ${ms}ms';
  }

  @override
  String get deleteContactQuestion => 'Supprimer le contact ?';

  @override
  String get deleteContactBody =>
      'Ce contact sera définitivement supprimé de votre appareil.';

  @override
  String get blockContactQuestion => 'Bloquer les contacts ?';

  @override
  String get unblockContactQuestion => 'Débloquer le contact ?';

  @override
  String get blockContactBody =>
      'Vous ne recevrez plus d\'appels ni de SMS de ce contact.';

  @override
  String get unblockContactBody =>
      'Vous commencerez à recevoir des appels et des SMS de ce contact.';

  @override
  String get contactBlocked => 'Contact bloqué';

  @override
  String get contactUnblocked => 'Contact débloqué';

  @override
  String get noPhoneNumbersToBlock => 'Aucun numéro de téléphone à bloquer';

  @override
  String get simSameAsSystem => 'Identique au système';

  @override
  String get simSameAsSystemSubtitle =>
      'Suit la carte SIM par défaut dans les paramètres';

  @override
  String get simAskEveryTimeForContact =>
      'Toujours afficher le sélecteur de carte SIM pour ce contact';

  @override
  String get ringtoneSetForContact =>
      'Sonnerie définie globalement pour ce contact';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Échec de la sélection de la sonnerie : $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Erreur : $error';
  }

  @override
  String get noCallHistoryFound => 'Aucun historique d\'appels trouvé';

  @override
  String get speedDialVoicemail => 'Numérotation rapide : Messagerie vocale';

  @override
  String shareContactSubject(String name) {
    return 'Contact : $name';
  }

  @override
  String get contactInfo => 'Coordonnées';

  @override
  String get dontAskAgainSim => 'Ne demande plus';

  @override
  String get simDontAskAgainSubtitle =>
      'Utiliser cette SIM par défaut (modification dans Paramètres)';

  @override
  String get addContact => 'Ajouter un contact';

  @override
  String get createContact => 'Créer un contact';

  @override
  String get paste => 'Coller';

  @override
  String get clear => 'Clair';

  @override
  String get returnToCall => 'Retourner à l\'appel';

  @override
  String get numberOfRecordsTitle => 'Nombre d\'enregistrements';

  @override
  String get recordsPickerSubtitle =>
      'Combien d\'entrées fréquemment contactées à afficher (0 = désactivé)';

  @override
  String get torchInfoTitle => 'Clignotement de la torche';

  @override
  String get torchInfoBody =>
      'Fait clignoter le flash de l\'appareil photo pendant les appels entrants, sortants ou en cours. Indépendant des lumières Glyph.';

  @override
  String get glyphMapTitle => 'Disposition des glyphes';

  @override
  String get glyphMapBody =>
      'Rien Zones LED du glyphe du téléphone 1. Les animations sortantes et entrantes utilisent ces canaux.';

  @override
  String get answerMethodTitle => 'Méthode de réponse';

  @override
  String get glyphOutgoingCallStyleTitle => 'Style d\'appel sortant';

  @override
  String get glyphInCallAnimationTitle =>
      'Animation de glyphe lors d\'un appel';

  @override
  String get themePickerTitle => 'Thème';

  @override
  String get torchIncomingTitle => 'Torche des appels entrants';

  @override
  String get torchOutgoingTitle => 'Torche des appels sortants';

  @override
  String get torchOngoingTitle => 'Torche d\'appel en cours';

  @override
  String get timePeriodTitle => 'Période';

  @override
  String get ok => 'D\'ACCORD';

  @override
  String get confirmDeleteCall => 'Supprimer cet appel de l\'historique ?';

  @override
  String get confirmDeleteAllCalls =>
      'Supprimer tous les appels avec ce numéro ?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Envoyer un message';

  @override
  String get addToExistingContactAction => 'Ajouter à un contact';

  @override
  String get mobileLabel => 'Mobile';

  @override
  String get callingSimForContactTitle => 'Appel SIM pour ce contact';

  @override
  String get contactSettings => 'Paramètres des contacts';

  @override
  String get setCallingSim => 'Définir la carte SIM d\'appel';

  @override
  String get contactRingtone => 'Sonnerie de contact';

  @override
  String get shareContact => 'Partager le contact';

  @override
  String get blockNumbers => 'Bloquer les numéros';

  @override
  String get unblockNumbers => 'Débloquer des numéros';

  @override
  String get connectedApps => 'Applications connectées';

  @override
  String get simNotSet => 'Non défini';

  @override
  String get ringtoneDefault => 'Défaut';

  @override
  String get customRingtone => 'Coutume';

  @override
  String get aboutSection => 'À propos';

  @override
  String get aboutFeedbackSection => 'À propos et commentaires';

  @override
  String get aboutDescription =>
      'Nothing Dialer est open source. Si vous êtes développeur, vous êtes invités à explorer le code et à contribuer.';

  @override
  String get aboutViewSource => 'Voir sur GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Impossible d\'ouvrir le lien';

  @override
  String get reviewSection => 'Revoir';

  @override
  String get reviewDescription =>
      'Vous appréciez Nothing Dialer ? Votre note sur Google Play aide les autres à trouver l\'application.';

  @override
  String get reviewRateOnPlay => 'Évaluer sur Google Play';

  @override
  String get reviewRateOnPlaySubtitle =>
      'Laissez une note sans quitter l\'application';

  @override
  String get reviewCouldNotOpen => 'Impossible d\'ouvrir Google Play';

  @override
  String get breathSpeed => 'Vitesse de respiration';

  @override
  String get breathSpeedBlinkHint =>
      'Inférieur = Clignement, Supérieur = Respiration lente';

  @override
  String get speedSliderHint => 'Plus bas = plus rapide, plus haut = plus lent';

  @override
  String get swatchDefault => 'Défaut';

  @override
  String get customAccentColorPicker => 'Couleur d\'accent personnalisée';

  @override
  String get customLightBackgroundPicker => 'Fond clair personnalisé';

  @override
  String get customDarkBackgroundPicker => 'Fond sombre personnalisé';

  @override
  String get customCallBackgroundPicker => 'Arrière-plan d\'appel personnalisé';

  @override
  String get ongoingCallStyleTitle => 'Style d\'appel en cours';

  @override
  String get glyphMapUnavailable => 'Carte des glyphes indisponible';

  @override
  String get animationDelayRange => 'Délai d\'animation (1 s - 10 s)';

  @override
  String get animationDelayRangeSingle => 'Délai d\'animation (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Muet';

  @override
  String get inCallKeypad => 'Clavier';

  @override
  String get inCallSpeaker => 'Conférencier';

  @override
  String get inCallMore => 'Plus';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Téléphone';

  @override
  String get inCallAddCall => 'Ajouter un appel';

  @override
  String get inCallChangeSim => 'Changer de carte SIM';

  @override
  String get inCallDecline => 'Déclin';

  @override
  String get inCallAnswer => 'Répondre';

  @override
  String get inCallMessage => 'Message';

  @override
  String get inCallCalling => 'Appel…';

  @override
  String get inCallIncoming => 'Appel entrant';

  @override
  String get inCallSelectSim => 'Sélectionnez SIM…';

  @override
  String get inCallSwitchingSim => 'Changer de carte SIM…';

  @override
  String get inCallCallEnded => 'Appel terminé';

  @override
  String inCallCallingVia(String sim) {
    return 'Appel via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Appel via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Choisir la SIM pour cet appel';

  @override
  String get inCallDragAnswerDecline =>
      'Faites glisser vers la droite pour répondre · Faites glisser vers la gauche pour refuser';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobile $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (actuel)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Appelez au <b>$sim</b> depuis';
  }

  @override
  String get inCallCallFrom => 'Appeler de';

  @override
  String get inCallUnknown => 'Inconnu';

  @override
  String get selectContactRingtone => 'Sélectionnez la sonnerie du contact';

  @override
  String get speakToSearchPrompt => 'Parler pour rechercher';

  @override
  String get phonePermissionRequired => 'Autorisation téléphonique requise';

  @override
  String callFailed(String error) {
    return 'Échec de l\'appel : $error';
  }

  @override
  String get callPermissionDenied => 'Autorisation d\'appel refusée';

  @override
  String get alreadyDefaultDialer => 'Déjà défini comme numéroteur par défaut';

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
