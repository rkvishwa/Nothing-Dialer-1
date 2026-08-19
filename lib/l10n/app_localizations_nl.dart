// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Niets dialer';

  @override
  String get settings => 'Instellingen';

  @override
  String get settingsSearchHint => 'Zoekinstellingen';

  @override
  String get settingsSearchNoResults => 'Geen instellingen gevonden';

  @override
  String get general => 'Algemeen';

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
  String get theme => 'Thema';

  @override
  String get themeSystemDefault => 'Systeemstandaard';

  @override
  String get themeLight => 'Licht';

  @override
  String get themeDark => 'Donker';

  @override
  String get themeFollowSystem => 'Volg de systeeminstellingen';

  @override
  String get themeAlwaysLight => 'Gebruik altijd een licht thema';

  @override
  String get themeAlwaysDark => 'Gebruik altijd een donker thema';

  @override
  String get language => 'Taal';

  @override
  String get languageDeviceDefault => 'Standaard apparaat';

  @override
  String get languagePickerTitle => 'Taal';

  @override
  String get languageSearchHint => 'Zoek talen';

  @override
  String get font => 'Lettertype';

  @override
  String get fontSystem => 'Systeemstandaard';

  @override
  String get fontNdot => 'Niets (NDot)';

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
      'Het downloaden van lettertypen is mislukt. Controleer uw verbinding en probeer het opnieuw.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Lettertype';

  @override
  String get fontPreviewSample => 'Niets dialer';

  @override
  String get fontAppWide => 'App-lettertype';

  @override
  String get fontApplyTo => 'Toepassen op';

  @override
  String get fontApplyEntireApp => 'Gehele app';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Overal hetzelfde lettertype, ook tijdens het bellen';

  @override
  String get fontApplyTitlesOnly => 'Titels en kopteksten';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Alleen grote titels en sectiekoppen';

  @override
  String get fontApplyCustomize => 'Pas aan';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Kies het lettertype per scherm en teksttype';

  @override
  String get fontCustomizeSection => 'Aanpassen per scherm';

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
  String get fontRolePageTitle => 'Paginatitel';

  @override
  String get fontRoleSectionHeader => 'Sectiekop';

  @override
  String get fontRolePrimary => 'Primaire tekst';

  @override
  String get fontRoleSecondary => 'Secundaire tekst';

  @override
  String get fontRoleButton => 'Knoppen';

  @override
  String get fontRoleDialKey => 'Toetsen op het toetsenblok';

  @override
  String get fontSurfaceRecents => 'Recent';

  @override
  String get fontSurfaceContacts => 'Contacten';

  @override
  String get fontSurfaceSettings => 'Instellingen';

  @override
  String get fontSurfaceDialpad => 'Toetsenblok';

  @override
  String get fontSurfaceShell => 'Navigatie';

  @override
  String get fontSurfaceDefaultDialer => 'Standaardkiezerprompt';

  @override
  String get fontSurfaceFavourites => 'Favorieten';

  @override
  String get fontSurfaceBlocked => 'Geblokkeerde nummers';

  @override
  String get fontSurfaceContactDetail => 'Contactgegevens';

  @override
  String get fontSurfaceCallHistory => 'Belgeschiedenis';

  @override
  String get fontSurfaceSheets => 'Vellen en plukkers';

  @override
  String get fontSurfaceInCall => 'Inbelscherm';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — hele app';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — alleen titels';
  }

  @override
  String get fontSubtitleCustomize => 'Aangepast per scherm';

  @override
  String get background => 'Achtergrond';

  @override
  String get accent => 'Accent';

  @override
  String get lightBackground => 'Lichte achtergrond';

  @override
  String get lightAccent => 'Licht accent';

  @override
  String get darkBackground => 'Donkere achtergrond';

  @override
  String get darkAccent => 'Donker accent';

  @override
  String get callBackground => 'Bel achtergrond';

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
  String get appIcon => 'App-pictogram';

  @override
  String get answerMethod => 'Antwoordmethode';

  @override
  String get answerSlide => 'Schuif om te antwoorden';

  @override
  String get answerSlideSubtitle =>
      'Veeg naar links/rechts op de balk, zoals Google Phone';

  @override
  String get answerButton => 'Knop tikken';

  @override
  String get answerButtonSubtitle =>
      'Tik op de knoppen voor beantwoorden of weigeren';

  @override
  String get answerHuawei => 'Huawei-stijl';

  @override
  String get answerHuaweiSubtitle =>
      'Sleep de cirkel naar de groene telefoon om te antwoorden';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — sleep naar groen/rood';

  @override
  String get calling => 'Roeping';

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
  String get defaultSim => 'Standaard simkaart';

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
  String get askEveryTime => 'Vraag het elke keer';

  @override
  String get askEveryTimeSubtitle => 'Toon SIM-kiezer vóór elk gesprek';

  @override
  String simSlot(int slot) {
    return 'Simkaart $slot';
  }

  @override
  String get noSimCardsFound => 'Geen simkaarten gevonden';

  @override
  String couldNotLoadSims(String error) {
    return 'Kan simkaarten niet laden: $error';
  }

  @override
  String get allFavourites => 'Allemaal favorieten';

  @override
  String get allFavouritesSubtitle =>
      'Opnieuw ordenen, verwijderen en toevoegen uit contacten';

  @override
  String get blockedNumbers => 'Geblokkeerde nummers';

  @override
  String get blockedNumbersSubtitle => 'Nummers bekijken en deblokkeren';

  @override
  String get soundsAndVibration => 'Geluiden en trillingen';

  @override
  String get soundsAndVibrationSubtitle =>
      'Beltoon, trillingen, toetsenbloktonen';

  @override
  String couldNotOpenSettings(String error) {
    return 'Kan instellingen niet openen: $error';
  }

  @override
  String get frequentlyContacted => 'Vaak gecontacteerd';

  @override
  String get numberOfRecords => 'Aantal records';

  @override
  String get timePeriod => 'Tijdsperiode';

  @override
  String get periodLast24Hours => 'Laatste 24 uur';

  @override
  String get periodLast24HoursSubtitle => 'Oproepen van de afgelopen dag';

  @override
  String get periodLast7Days => 'Laatste 7 dagen';

  @override
  String get periodLast7DaysSubtitle => 'Bellen van de afgelopen week';

  @override
  String get periodLast30Days => 'Laatste 30 dagen';

  @override
  String get periodLast30DaysSubtitle => 'Oproepen van de afgelopen maand';

  @override
  String get periodLast12Months => 'Laatste 12 maanden';

  @override
  String get periodLast12MonthsSubtitle => 'Bellen van het afgelopen jaar';

  @override
  String get periodAllTime => 'Altijd';

  @override
  String get periodAllTimeSubtitle => 'Volledige belgeschiedenis';

  @override
  String get frequentMaxOff => 'Uit';

  @override
  String frequentMaxCount(int count) {
    return '$count contacten';
  }

  @override
  String get torchBlink => 'Fakkel knipperen';

  @override
  String get torchIncomingCall => 'Zaklamp voor inkomend gesprek';

  @override
  String get torchOutgoingCall => 'Zaklamp voor uitgaand gesprek';

  @override
  String get torchOngoingCall => 'Lopende oproep fakkel';

  @override
  String get torchIncomingInterval => 'Inkomend knipperinterval';

  @override
  String get torchOutgoingInterval => 'Uitgaand knipperinterval';

  @override
  String get torchOngoingInterval => 'Doorlopend knipperinterval';

  @override
  String get torchOff => 'Uit';

  @override
  String get torchOffIncomingSubtitle => 'Geen zaklamp tijdens het rinkelen';

  @override
  String get torchOffOutgoingSubtitle => 'Geen zaklamp tijdens het bellen';

  @override
  String get torchOffOngoingSubtitle => 'Geen zaklamp tijdens actief gesprek';

  @override
  String get torchFixedInterval => 'Vast interval';

  @override
  String get torchFixedIntervalSubtitle =>
      'Knipper met een ingestelde snelheid';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds knipperen';
  }

  @override
  String get flashlightUnavailable =>
      'Zaklamp niet beschikbaar op dit apparaat';

  @override
  String get glyphLights => 'Glyph-lichten';

  @override
  String get glyphCallingAnimation => 'Glyph-aanroepende animatie';

  @override
  String get glyphOngoingAnimation => 'Glyph lopende oproepanimatie';

  @override
  String get glyphNone => 'Geen';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Schakel Glyph-verlichting uit voor uitgaande oproepen';

  @override
  String get glyphNoneInCallSubtitle =>
      'Schakel Glyph-lichten uit terwijl u actief bent in gesprek';

  @override
  String get glyphBreathProgress => 'Adem en vooruitgang';

  @override
  String get glyphBreathProgressSubtitle =>
      'Lichten ademen terwijl de lijn in de loop van 65 seconden vol raakt';

  @override
  String get glyphAccumulate => 'Accumuleren';

  @override
  String get glyphAccumulateSubtitle =>
      'Accumulerende animatie op lichten C1-C4';

  @override
  String get glyphSingle => 'Enkel';

  @override
  String get glyphSingleSubtitle => 'Enkel licht dat over C1-C4 beweegt';

  @override
  String get glyphBreath => 'Adem';

  @override
  String get glyphBreathSubtitle => 'Kies voor licht en snelheid';

  @override
  String get glyphSteady => 'Stabiel';

  @override
  String get glyphSteadySubtitle => 'Geselecteerde lampen blijven branden';

  @override
  String get breathSettings => 'Ademinstellingen';

  @override
  String get activeLights => 'Actieve lichten';

  @override
  String lightsCount(int count) {
    return '$count lichten';
  }

  @override
  String get speedSettings => 'Snelheidsinstellingen';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms vertraging';
  }

  @override
  String get durationAndSpeed => 'Duur en snelheid';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s duur, ${interval}ms interval';
  }

  @override
  String get cancel => 'Annuleren';

  @override
  String get done => 'Klaar';

  @override
  String get save => 'Redden';

  @override
  String get block => 'Blok';

  @override
  String get delete => 'Verwijderen';

  @override
  String get recents => 'Recent';

  @override
  String get contacts => 'Contacten';

  @override
  String get hideFavouritesOnRecents => 'Verberg favorieten op Recent';

  @override
  String get showFavouritesOnRecents => 'Toon favorieten op Recent';

  @override
  String get ongoingCall => 'Lopende oproep';

  @override
  String get setAsDefaultTitle => 'INSTELLEN ALS\nSTANDAARD';

  @override
  String get setAsDefaultBody =>
      'Om Nothing Dialer te gebruiken, moet deze zijn ingesteld als uw standaard telefoonapp. Hiermee kunt u oproepen beheren, de geschiedenis bekijken en Glyph-animaties gebruiken.';

  @override
  String get setAsDefaultButton => 'ALS STANDAARD INSTELLEN';

  @override
  String get nothingDialerBrand => 'NIETS KIEZER 1';

  @override
  String get favourites => 'Favorieten';

  @override
  String get addFavourite => 'Favoriet toevoegen';

  @override
  String get favouritesDrawerHint =>
      'Gebruik het menu om contacten toe te voegen. Tik buiten de lade of veeg deze dicht. Geef een contactpersoon een ster vanuit de gegevens ervan, of druk lang op een gesprek in Recent.';

  @override
  String get menu => 'Menu';

  @override
  String get noFavouritesYet =>
      'Nog geen favorieten.\nOpen het menu om er een toe te voegen of een contact een ster te geven.';

  @override
  String get contactsPermissionNeeded => 'Toestemming voor contacten vereist';

  @override
  String get chooseContact => 'Kies contactpersoon';

  @override
  String get noPhone => 'Geen telefoon';

  @override
  String get pickNumber => 'Kies nummer';

  @override
  String get contactHasNoPhone => 'Dit contact heeft geen telefoonnummer';

  @override
  String get blockNumber => 'Bloknummer';

  @override
  String get enterPhoneNumber => 'Voer telefoonnummer in';

  @override
  String unblockedDisplay(String display) {
    return 'Gedeblokkeerd $display';
  }

  @override
  String get couldNotUnblockNumber => 'Kan nummer niet deblokkeren';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked geblokkeerd • $matched komt overeen';
  }

  @override
  String get contactsPermissionMissing =>
      'Contactrechten ontbreken. Tik om te repareren.';

  @override
  String get noBlockedNumbers => 'Geen geblokkeerde nummers';

  @override
  String get unknownContact => 'Onbekende contactpersoon';

  @override
  String get unblock => 'Deblokkeren';

  @override
  String get permissionNeeded => 'Toestemming nodig';

  @override
  String get grantPhonePermission =>
      'Geef uw telefoon toestemming om uw belgeschiedenis te bekijken.';

  @override
  String get grantContactsPermission =>
      'Geef contacten toestemming om uw adresboek te bekijken.';

  @override
  String get openSettings => 'Instellingen openen';

  @override
  String get tryAgain => 'Probeer het opnieuw';

  @override
  String get couldNotLoadContacts => 'Kan contacten niet laden';

  @override
  String get contactsLoadError =>
      'Er is iets misgegaan bij het lezen van uw adresboek.';

  @override
  String get noContactsFound => 'Geen contacten gevonden';

  @override
  String get contactsEmptySubtitle =>
      'Contacten van uw apparaat verschijnen hier.';

  @override
  String get searchContacts => 'Contacten zoeken…';

  @override
  String get searchRecentCalls => 'Zoek naar recente oproepen';

  @override
  String get fromContacts => 'Van contacten';

  @override
  String get recentsSearchSection => 'Recente zoekopdrachten';

  @override
  String get recentsSearchShowContacts => 'Toon contacten in zoekopdracht';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Terwijl u naar Recent zoekt, kunt u ook overeenkomende personen uit uw adresboek weergeven onder de resultaten van de belgeschiedenis.';

  @override
  String get voiceSearch => 'Gesproken zoekopdracht';

  @override
  String get createNewContact => 'Nieuw contact maken';

  @override
  String callError(String error) {
    return 'Oproepfout: $error';
  }

  @override
  String get noRecentCalls => 'Geen recente oproepen';

  @override
  String get callHistoryEmpty => 'Hier verschijnt uw belgeschiedenis.';

  @override
  String get loadMore => 'Laad meer';

  @override
  String get frequentlyContactedHeader => 'Veel contact gehad';

  @override
  String get recentHistory => 'Recente geschiedenis';

  @override
  String get noFavouritesRecentsHint =>
      'Nog geen favorieten. Geef een contact een ster, druk lang op een oproep of gebruik het tabblad Favorieten.';

  @override
  String get copyNumber => 'Kopieer nummer';

  @override
  String get editNumberBeforeCall => 'Bewerk nummer voordat u belt';

  @override
  String get removeFromFavourites => 'Verwijderen uit favorieten';

  @override
  String get addToFavourites => 'Toevoegen aan favorieten';

  @override
  String get blockNumberQuestion => 'Nummer blokkeren?';

  @override
  String blockNumberConfirm(String number) {
    return 'Je ontvangt geen oproepen of sms-berichten meer van $number.';
  }

  @override
  String get blocked => 'Geblokkeerd';

  @override
  String get couldNotBlock => 'Kon niet blokkeren';

  @override
  String get contactNotOnDevice => 'Contact niet opgeslagen op dit apparaat';

  @override
  String get unblocked => 'Gedeblokkeerd';

  @override
  String get numberCopied => 'Nummer gekopieerd';

  @override
  String get showLess => 'Laat minder zien';

  @override
  String get showAllTimes => 'Toon alle tijden';

  @override
  String mostRecent(String time) {
    return 'Meest recente · $time';
  }

  @override
  String get videoCall => 'Videogesprek';

  @override
  String get couldNotPlaceVideoCall => 'Kan geen videogesprek plaatsen';

  @override
  String get message => 'Bericht';

  @override
  String get couldNotOpenMessaging => 'Kan de berichtenapp niet openen';

  @override
  String get history => 'Geschiedenis';

  @override
  String get viewContact => 'Bekijk contactpersoon';

  @override
  String get addToContact => 'Toevoegen aan contactpersoon';

  @override
  String get callTypeMissed => 'Gemist';

  @override
  String get callTypeRejected => 'Afgewezen';

  @override
  String get callTypeIncoming => 'Inkomend';

  @override
  String get callTypeOutgoing => 'Uitgaand';

  @override
  String get today => 'Vandaag';

  @override
  String get yesterday => 'Gisteren';

  @override
  String get justNow => 'Zojuist';

  @override
  String minutesAgo(int count) {
    return '$count min geleden';
  }

  @override
  String hoursAgo(int count) {
    return '$count uur geleden';
  }

  @override
  String get filterAll => 'Alle';

  @override
  String get filterMissed => 'Gemist';

  @override
  String get filterContacts => 'Contacten';

  @override
  String get filterNonContacts => 'Niet-contacten';

  @override
  String get iconUpdated =>
      'Icoon bijgewerkt. Het kan even duren voordat uw startscherm is vernieuwd.';

  @override
  String get iconSavedRelease =>
      'Keuze opgeslagen. Het startschermpictogram wordt bijgewerkt in releasebuilds.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Kan pictogram niet wijzigen: $error';
  }

  @override
  String get launcherClassicBlack => 'Klassiek (zwart)';

  @override
  String get launcherLight => 'Licht';

  @override
  String get launcherNothingRed => 'Niets rood';

  @override
  String get launcherDarkGrey => 'Donkergrijs';

  @override
  String get launcherCream => 'Room';

  @override
  String get launcherRetroPhone => 'Retro-telefoon';

  @override
  String get launcherRetroPhoneLight => 'Retrotelefoon (licht)';

  @override
  String get voiceSearchUnavailable =>
      'Gesproken zoekopdrachten zijn niet beschikbaar op dit apparaat.';

  @override
  String voiceSearchFailed(String error) {
    return 'Gesproken zoekopdracht mislukt: $error';
  }

  @override
  String get customColor => 'Aangepast';

  @override
  String get selectColor => 'Selecteer kleur';

  @override
  String get reset => 'Opnieuw instellen';

  @override
  String get simPickerTitle => 'Kies SIM';

  @override
  String get simChooseForCall => 'Kies SIM voor dit gesprek';

  @override
  String get defaultSimAsk => 'Vraag het elke keer';

  @override
  String defaultSimFixed(int slot) {
    return 'Simkaart $slot';
  }

  @override
  String get contactDetails => 'Contactgegevens';

  @override
  String get call => 'Telefoongesprek';

  @override
  String get share => 'Deel';

  @override
  String get favourite => 'Favoriet';

  @override
  String get unfavourite => 'Niet favoriet';

  @override
  String get blockContact => 'Contact blokkeren';

  @override
  String get unblockContact => 'Contact deblokkeren';

  @override
  String get deleteContact => 'Contactpersoon verwijderen';

  @override
  String get phone => 'Telefoon';

  @override
  String get email => 'E-mail';

  @override
  String get ringtone => 'Beltoon';

  @override
  String get defaultRingtone => 'Standaard';

  @override
  String get simForContact => 'Simkaart voor dit contact';

  @override
  String get callHistoryTitle => 'Belgeschiedenis';

  @override
  String get noCallsWithNumber => 'Geen oproepen met dit nummer';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyph-animatie';

  @override
  String get inCallGlyphAnimationStyle => 'Glyph-animatie tijdens het gesprek';

  @override
  String get recordsOff => 'Uit';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Standaard simkaart';

  @override
  String get nothingPhoneOnly => 'Niets Alleen telefoon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph-functies vereisen een Niets-telefoon';

  @override
  String get custom => 'Aangepast';

  @override
  String presetColorHex(String hex) {
    return 'Voorinstelling · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Aangepast · $hex';
  }

  @override
  String get oneContact => '1 contactpersoon';

  @override
  String upToContacts(int count) {
    return 'Maximaal $count contacten';
  }

  @override
  String get answerButtonTapSubtitle => 'Tik op de knop om te antwoorden';

  @override
  String get filterCalls => 'Filter oproepen';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'Instellingen';

  @override
  String get filterAllSubtitle => 'Gehele oproeplog';

  @override
  String get filterMissedSubtitle => 'Gemist en afgewezen';

  @override
  String get filterContactsSubtitle =>
      'Oproepen gekoppeld aan een opgeslagen contact';

  @override
  String get filterNonContactsSubtitle => 'Nummers niet in uw adresboek';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Lopend gesprek: $detail';
  }

  @override
  String get defaultSimForCalls => 'Standaard simkaart voor oproepen';

  @override
  String get blinkInterval => 'Knipperinterval';

  @override
  String get close => 'Dichtbij';

  @override
  String get frequentlyContactedInfoBody =>
      'Toont uw meest gebelde telefoonnummers bovenaan het tabblad Recent, op basis van het aantal inkomende, uitgaande, gemiste of afgewezen oproepen die u met elk nummer heeft gehad in de door u gekozen periode.\n\nAantal records: stel deze in op 0 om dit uit te schakelen. Gebruik 1–20 om aan te geven dat er veel topcontacten zijn.\n\nDe tijdsperiode is alleen van toepassing als er minimaal één contactpersoon wordt weergegeven.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count lichten, ${ms}ms snelheid';
  }

  @override
  String get deleteContactQuestion => 'Contactpersoon verwijderen?';

  @override
  String get deleteContactBody =>
      'Dit contact wordt permanent van uw apparaat verwijderd.';

  @override
  String get blockContactQuestion => 'Contact blokkeren?';

  @override
  String get unblockContactQuestion => 'Contact deblokkeren?';

  @override
  String get blockContactBody =>
      'Je ontvangt geen oproepen of sms-berichten meer van dit contact.';

  @override
  String get unblockContactBody =>
      'U ontvangt nu oproepen en sms-berichten van dit contact.';

  @override
  String get contactBlocked => 'Contact geblokkeerd';

  @override
  String get contactUnblocked => 'Contact gedeblokkeerd';

  @override
  String get noPhoneNumbersToBlock => 'Geen telefoonnummers om te blokkeren';

  @override
  String get simSameAsSystem => 'Hetzelfde als systeem';

  @override
  String get simSameAsSystemSubtitle =>
      'Volgt de standaardsimkaart in Instellingen';

  @override
  String get simAskEveryTimeForContact =>
      'Toon altijd SIM-kiezer voor dit contact';

  @override
  String get ringtoneSetForContact =>
      'Ringtone wereldwijd ingesteld voor dit contact';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Kan beltoon niet kiezen: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Fout: $error';
  }

  @override
  String get noCallHistoryFound => 'Geen oproepgeschiedenis gevonden';

  @override
  String get speedDialVoicemail => 'Snelkiezen: Voicemail';

  @override
  String shareContactSubject(String name) {
    return 'Contactpersoon: $name';
  }

  @override
  String get contactInfo => 'Contactgegevens';

  @override
  String get dontAskAgainSim => 'Vraag het niet opnieuw';

  @override
  String get simDontAskAgainSubtitle =>
      'Gebruik deze simkaart als standaard (wijziging in Instellingen)';

  @override
  String get addContact => 'Contactpersoon toevoegen';

  @override
  String get createContact => 'Contact maken';

  @override
  String get paste => 'Plakken';

  @override
  String get clear => 'Duidelijk';

  @override
  String get returnToCall => 'Terug naar oproep';

  @override
  String get numberOfRecordsTitle => 'Aantal records';

  @override
  String get recordsPickerSubtitle =>
      'Hoeveel vaak gecontacteerde vermeldingen moeten worden weergegeven (0 = uitgeschakeld)';

  @override
  String get torchInfoTitle => 'Zaklamp knippert';

  @override
  String get torchInfoBody =>
      'Knippert de flitser van de camera tijdens inkomende, uitgaande of lopende gesprekken. Onafhankelijk van Glyph-lichten.';

  @override
  String get glyphMapTitle => 'Glyph-indeling';

  @override
  String get glyphMapBody =>
      'Niets Telefoon 1 Glyph LED-zones. Uitgaande en in-call animaties maken gebruik van deze kanalen.';

  @override
  String get answerMethodTitle => 'Antwoordmethode';

  @override
  String get glyphOutgoingCallStyleTitle => 'Uitgaande gespreksstijl';

  @override
  String get glyphInCallAnimationTitle => 'Glyph-animatie tijdens het gesprek';

  @override
  String get themePickerTitle => 'Thema';

  @override
  String get torchIncomingTitle => 'Zaklamp voor inkomend gesprek';

  @override
  String get torchOutgoingTitle => 'Zaklamp voor uitgaand gesprek';

  @override
  String get torchOngoingTitle => 'Lopende oproep fakkel';

  @override
  String get timePeriodTitle => 'Tijdsperiode';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall =>
      'Dit gesprek uit de geschiedenis verwijderen?';

  @override
  String get confirmDeleteAllCalls =>
      'Alle oproepen met dit nummer verwijderen?';

  @override
  String get whatsapp => 'WhatsAppen';

  @override
  String get sendMessage => 'Stuur een bericht';

  @override
  String get addToExistingContactAction => 'Toevoegen aan een contactpersoon';

  @override
  String get mobileLabel => 'Mobiel';

  @override
  String get callingSimForContactTitle => 'Bellen naar SIM voor dit contact';

  @override
  String get contactSettings => 'Contactinstellingen';

  @override
  String get setCallingSim => 'Bel-SIM instellen';

  @override
  String get contactRingtone => 'Contactbeltoon';

  @override
  String get shareContact => 'Deel contact';

  @override
  String get blockNumbers => 'Bloknummers';

  @override
  String get unblockNumbers => 'Deblokkeer nummers';

  @override
  String get connectedApps => 'Verbonden apps';

  @override
  String get simNotSet => 'Niet ingesteld';

  @override
  String get ringtoneDefault => 'Standaard';

  @override
  String get customRingtone => 'Aangepast';

  @override
  String get aboutSection => 'Over';

  @override
  String get aboutFeedbackSection => 'Over & feedback';

  @override
  String get aboutDescription =>
      'Niets Dialer is open source. Als u een ontwikkelaar bent, bent u van harte welkom om de code te verkennen en een bijdrage te leveren.';

  @override
  String get aboutViewSource => 'Bekijk op GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Kan link niet openen';

  @override
  String get reviewSection => 'Beoordeling';

  @override
  String get reviewDescription =>
      'Genieten van niets Dialer? Uw beoordeling op Google Play helpt anderen de app te vinden.';

  @override
  String get reviewRateOnPlay => 'Beoordeel op Google Play';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Kan Google Play niet openen';

  @override
  String get breathSpeed => 'Ademsnelheid';

  @override
  String get breathSpeedBlinkHint =>
      'Lager = Knipperen, Hoger = Langzaam ademhalen';

  @override
  String get speedSliderHint => 'Lager = sneller, hoger = langzamer';

  @override
  String get swatchDefault => 'Standaard';

  @override
  String get customAccentColorPicker => 'Aangepaste accentkleur';

  @override
  String get customLightBackgroundPicker => 'Aangepaste lichte achtergrond';

  @override
  String get customDarkBackgroundPicker => 'Aangepaste donkere achtergrond';

  @override
  String get customCallBackgroundPicker => 'Aangepaste oproepachtergrond';

  @override
  String get ongoingCallStyleTitle => 'Doorlopende gespreksstijl';

  @override
  String get glyphMapUnavailable => 'Glyph-kaart niet beschikbaar';

  @override
  String get animationDelayRange => 'Animatievertraging (1s - 10s)';

  @override
  String get animationDelayRangeSingle => 'Animatievertraging (0,1s - 10s)';

  @override
  String get inCallMute => 'Stom';

  @override
  String get inCallKeypad => 'Toetsenbord';

  @override
  String get inCallSpeaker => 'Spreker';

  @override
  String get inCallMore => 'Meer';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefoon';

  @override
  String get inCallAddCall => 'Voeg oproep toe';

  @override
  String get inCallChangeSim => 'Wijzig simkaart';

  @override
  String get inCallDecline => 'Afwijzen';

  @override
  String get inCallAnswer => 'Antwoord';

  @override
  String get inCallMessage => 'Bericht';

  @override
  String get inCallCalling => 'Roeping…';

  @override
  String get inCallIncoming => 'Inkomend gesprek';

  @override
  String get inCallSelectSim => 'Selecteer SIM…';

  @override
  String get inCallSwitchingSim => 'Van simkaart wisselen...';

  @override
  String get inCallCallEnded => 'Gesprek beëindigd';

  @override
  String inCallCallingVia(String sim) {
    return 'Bellen via $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Bellen via <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Kies SIM voor dit gesprek';

  @override
  String get inCallDragAnswerDecline =>
      'Sleep naar rechts om te antwoorden · Sleep naar links om te weigeren';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobiel $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (Huidig)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Bel via <b>$sim</b> vanaf';
  }

  @override
  String get inCallCallFrom => 'Bel van';

  @override
  String get inCallUnknown => 'Onbekend';

  @override
  String get selectContactRingtone => 'Selecteer contactbeltoon';

  @override
  String get speakToSearchPrompt => 'Spreek om te zoeken';

  @override
  String get phonePermissionRequired => 'Telefoontoestemming vereist';

  @override
  String callFailed(String error) {
    return 'Oproep mislukt: $error';
  }

  @override
  String get callPermissionDenied => 'Oproeptoestemming geweigerd';

  @override
  String get alreadyDefaultDialer => 'Al ingesteld als standaardkiezer';

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
