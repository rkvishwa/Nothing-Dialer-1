// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appTitle => 'Ei midagi Helistaja';

  @override
  String get settings => 'Seaded';

  @override
  String get settingsSearchHint => 'Otsinguseaded';

  @override
  String get settingsSearchNoResults => 'Seadeid ei leitud';

  @override
  String get general => 'Kindral';

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
  String get theme => 'Teema';

  @override
  String get themeSystemDefault => 'Süsteemi vaikeseade';

  @override
  String get themeLight => 'Valgus';

  @override
  String get themeDark => 'Tume';

  @override
  String get themeFollowSystem => 'Järgige süsteemi sätteid';

  @override
  String get themeAlwaysLight => 'Kasutage alati heledat teemat';

  @override
  String get themeAlwaysDark => 'Kasutage alati tumedat teemat';

  @override
  String get language => 'Keel';

  @override
  String get languageDeviceDefault => 'Seadme vaikeseade';

  @override
  String get languagePickerTitle => 'Keel';

  @override
  String get languageSearchHint => 'Otsi keeli';

  @override
  String get font => 'Font';

  @override
  String get fontSystem => 'Süsteemi vaikeseade';

  @override
  String get fontNdot => 'Mitte midagi (NDot)';

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
      'Fondi allalaadimine ebaõnnestus. Kontrollige ühendust ja proovige uuesti.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Font';

  @override
  String get fontPreviewSample => 'Ei midagi Helistaja';

  @override
  String get fontAppWide => 'Rakenduse font';

  @override
  String get fontApplyTo => 'Rakenda';

  @override
  String get fontApplyEntireApp => 'Terve rakendus';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Sama font kõikjal, sealhulgas kõne ajal';

  @override
  String get fontApplyTitlesOnly => 'Pealkirjad ja päised';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Ainult suured pealkirjad ja jaotiste päised';

  @override
  String get fontApplyCustomize => 'Kohanda';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Valige font vastavalt ekraanile ja tekstitüübile';

  @override
  String get fontCustomizeSection => 'Kohanda ekraani järgi';

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
  String get fontRolePageTitle => 'Lehekülje pealkiri';

  @override
  String get fontRoleSectionHeader => 'Jao päis';

  @override
  String get fontRolePrimary => 'Esmane tekst';

  @override
  String get fontRoleSecondary => 'Teisene tekst';

  @override
  String get fontRoleButton => 'Nupud';

  @override
  String get fontRoleDialKey => 'Valimisklahvistiku klahvid';

  @override
  String get fontSurfaceRecents => 'Viimased';

  @override
  String get fontSurfaceContacts => 'Kontaktid';

  @override
  String get fontSurfaceSettings => 'Seaded';

  @override
  String get fontSurfaceDialpad => 'Valimisklahvistik';

  @override
  String get fontSurfaceShell => 'Navigeerimine';

  @override
  String get fontSurfaceDefaultDialer => 'Helistaja vaikeviip';

  @override
  String get fontSurfaceFavourites => 'Lemmikud';

  @override
  String get fontSurfaceBlocked => 'Blokeeritud numbrid';

  @override
  String get fontSurfaceContactDetail => 'Kontaktandmed';

  @override
  String get fontSurfaceCallHistory => 'Kõneajalugu';

  @override
  String get fontSurfaceSheets => 'Lehed ja korjajad';

  @override
  String get fontSurfaceInCall => 'Kõne ajal ekraan';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font – kogu rakendus';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font – ainult pealkirjad';
  }

  @override
  String get fontSubtitleCustomize => 'Kohandatud ekraani kohta';

  @override
  String get background => 'Taust';

  @override
  String get accent => 'Aktsent';

  @override
  String get lightBackground => 'Hele taust';

  @override
  String get lightAccent => 'Kerge aktsent';

  @override
  String get darkBackground => 'Tume taust';

  @override
  String get darkAccent => 'Tume aktsent';

  @override
  String get callBackground => 'Kõne taust';

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
  String get appIcon => 'Rakenduse ikoon';

  @override
  String get answerMethod => 'Vastuse meetod';

  @override
  String get answerSlide => 'Vastamiseks libistage';

  @override
  String get answerSlideSubtitle =>
      'Pühkige ribal vasakule/paremale, nagu Google Phone';

  @override
  String get answerButton => 'Nupu puudutamine';

  @override
  String get answerButtonSubtitle => 'Puudutage vastamise või keeldumise nuppe';

  @override
  String get answerHuawei => 'Huawei stiil';

  @override
  String get answerHuaweiSubtitle =>
      'Vastamiseks lohistage ring rohelisele telefonile';

  @override
  String get answerHuaweiTileSubtitle =>
      'Huawei – lohistage roheliseks/punaseks';

  @override
  String get calling => 'Helistamine';

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
  String get defaultSim => 'Vaike-SIM';

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
  String get askEveryTime => 'Küsi iga kord';

  @override
  String get askEveryTimeSubtitle => 'Kuva SIM-kaardi valija enne iga kõnet';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'SIM-kaarte ei leitud';

  @override
  String couldNotLoadSims(String error) {
    return 'SIM-kaarte ei saanud laadida: $error';
  }

  @override
  String get allFavourites => 'Kõik lemmikud';

  @override
  String get allFavouritesSubtitle =>
      'Järjestage ümber, eemaldage ja lisage kontaktidest';

  @override
  String get blockedNumbers => 'Blokeeritud numbrid';

  @override
  String get blockedNumbersSubtitle =>
      'Numbrite vaatamine ja blokeeringu tühistamine';

  @override
  String get soundsAndVibration => 'Helid ja vibratsioon';

  @override
  String get soundsAndVibrationSubtitle =>
      'Helin, vibratsioon, valimisklahvistiku toonid';

  @override
  String couldNotOpenSettings(String error) {
    return 'Seadeid ei saanud avada: $error';
  }

  @override
  String get frequentlyContacted => 'Sageli ühendust võetud';

  @override
  String get numberOfRecords => 'Kirjete arv';

  @override
  String get timePeriod => 'Ajavahemik';

  @override
  String get periodLast24Hours => 'Viimased 24 tundi';

  @override
  String get periodLast24HoursSubtitle => 'Kõned eelmisest päevast';

  @override
  String get periodLast7Days => 'Viimased 7 päeva';

  @override
  String get periodLast7DaysSubtitle => 'Kõned eelmisest nädalast';

  @override
  String get periodLast30Days => 'Viimased 30 päeva';

  @override
  String get periodLast30DaysSubtitle => 'Kõned eelmisel kuul';

  @override
  String get periodLast12Months => 'Viimased 12 kuud';

  @override
  String get periodLast12MonthsSubtitle => 'Kõned möödunud aastast';

  @override
  String get periodAllTime => 'Kogu aeg';

  @override
  String get periodAllTimeSubtitle => 'Kogu kõneajalugu';

  @override
  String get frequentMaxOff => 'Väljas';

  @override
  String frequentMaxCount(int count) {
    return '$count kontaktid';
  }

  @override
  String get torchBlink => 'Taskulambi vilkumine';

  @override
  String get torchIncomingCall => 'Sissetuleva kõne taskulamp';

  @override
  String get torchOutgoingCall => 'Väljuva kõne taskulamp';

  @override
  String get torchOngoingCall => 'Käimasolev kõne taskulamp';

  @override
  String get torchIncomingInterval => 'Sissetulev vilkumise intervall';

  @override
  String get torchOutgoingInterval => 'Väljuva vilkumise intervall';

  @override
  String get torchOngoingInterval => 'Pidev vilkumise intervall';

  @override
  String get torchOff => 'Väljas';

  @override
  String get torchOffIncomingSubtitle => 'Helina ajal tõrvikut pole';

  @override
  String get torchOffOutgoingSubtitle => 'Valimise ajal pole taskulampi';

  @override
  String get torchOffOngoingSubtitle => 'Aktiivse kõne ajal pole taskulampi';

  @override
  String get torchFixedInterval => 'Fikseeritud intervall';

  @override
  String get torchFixedIntervalSubtitle => 'Vilgub määratud kiirusega';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds vilkuma';
  }

  @override
  String get flashlightUnavailable => 'Taskulamp pole selles seadmes saadaval';

  @override
  String get glyphLights => 'Glüüfi tuled';

  @override
  String get glyphCallingAnimation => 'Glüüfi kutsumise animatsioon';

  @override
  String get glyphOngoingAnimation => 'Glyph käimasoleva kõne animatsioon';

  @override
  String get glyphNone => 'Mitte ühtegi';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Keelake väljaminevate kõnede jaoks Glyph-tuled';

  @override
  String get glyphNoneInCallSubtitle =>
      'Keelake Glyph tuled aktiivse kõne ajal';

  @override
  String get glyphBreathProgress => 'Hingamine ja edenemine';

  @override
  String get glyphBreathProgressSubtitle =>
      'Tuled hingavad, kui liin täitub üle 65 sekundi';

  @override
  String get glyphAccumulate => 'Koguneda';

  @override
  String get glyphAccumulateSubtitle => 'Kogunev animatsioon tuledel C1-C4';

  @override
  String get glyphSingle => 'Vallaline';

  @override
  String get glyphSingleSubtitle => 'Üksik tuli liigub üle C1-C4';

  @override
  String get glyphBreath => 'Hingamine';

  @override
  String get glyphBreathSubtitle => 'Valige tuled ja kiirus';

  @override
  String get glyphSteady => 'Püsiv';

  @override
  String get glyphSteadySubtitle => 'Valitud tuled jäävad põlema';

  @override
  String get breathSettings => 'Hingamisseaded';

  @override
  String get activeLights => 'Aktiivsed tuled';

  @override
  String lightsCount(int count) {
    return '$count tuled';
  }

  @override
  String get speedSettings => 'Kiiruse sätted';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms viivitus';
  }

  @override
  String get durationAndSpeed => 'Kestus ja kiirus';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s kestus, ${interval}ms intervall';
  }

  @override
  String get cancel => 'Tühista';

  @override
  String get done => 'Valmis';

  @override
  String get save => 'Salvesta';

  @override
  String get block => 'Blokeeri';

  @override
  String get delete => 'Kustuta';

  @override
  String get recents => 'Viimased';

  @override
  String get contacts => 'Kontaktid';

  @override
  String get hideFavouritesOnRecents => 'Peida lemmikud jaotises Hiljutised';

  @override
  String get showFavouritesOnRecents => 'Kuva lemmikud saidil Hiljutised';

  @override
  String get ongoingCall => 'Käimasolev kõne';

  @override
  String get setAsDefaultTitle => 'SET AS\nVAIKEISI';

  @override
  String get setAsDefaultBody =>
      'Nothing Dialeri kasutamiseks tuleb see määrata telefoni vaikerakenduseks. See võimaldab teil hallata kõnesid, vaadata ajalugu ja kasutada Glyph animatsioone.';

  @override
  String get setAsDefaultButton => 'MÄÄRA VAKESEKS';

  @override
  String get nothingDialerBrand => 'EI MIDAGI VALIJA 1';

  @override
  String get favourites => 'Lemmikud';

  @override
  String get addFavourite => 'Lisa lemmik';

  @override
  String get favouritesDrawerHint =>
      'Kontaktide lisamiseks kasutage menüüd. Puudutage sahtlist väljapoole või pühkige see kinni. Kontakti andmete hulgast tärniga tähistage või vajutage pikalt kõnet jaotises Hiljutised.';

  @override
  String get menu => 'Menüü';

  @override
  String get noFavouritesYet =>
      'Lemmikuid veel pole.\nKontakti lisamiseks avage menüü või kontakti tärniga.';

  @override
  String get contactsPermissionNeeded => 'Vajalik kontaktide luba';

  @override
  String get chooseContact => 'Valige kontakt';

  @override
  String get noPhone => 'Telefoni pole';

  @override
  String get pickNumber => 'Vali number';

  @override
  String get contactHasNoPhone => 'Sellel kontaktil pole telefoninumbrit';

  @override
  String get blockNumber => 'Blokeeri number';

  @override
  String get enterPhoneNumber => 'Sisestage telefoninumber';

  @override
  String unblockedDisplay(String display) {
    return 'Deblokeeritud $display';
  }

  @override
  String get couldNotUnblockNumber => 'Numbri blokeeringut ei saanud tühistada';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blokeeritud • $matched sobitatud';
  }

  @override
  String get contactsPermissionMissing =>
      'Kontaktide luba puudub. Puudutage parandamiseks.';

  @override
  String get noBlockedNumbers => 'Blokeeritud numbreid pole';

  @override
  String get unknownContact => 'Tundmatu kontakt';

  @override
  String get unblock => 'Deblokeerige';

  @override
  String get permissionNeeded => 'Vajalik luba';

  @override
  String get grantPhonePermission =>
      'Andke telefonile luba oma kõneajaloo vaatamiseks.';

  @override
  String get grantContactsPermission =>
      'Andke kontaktidele luba oma aadressiraamatu nägemiseks.';

  @override
  String get openSettings => 'Avage Seaded';

  @override
  String get tryAgain => 'Proovi uuesti';

  @override
  String get couldNotLoadContacts => 'Kontakte ei saanud laadida';

  @override
  String get contactsLoadError =>
      'Teie aadressiraamatu lugemisel läks midagi valesti.';

  @override
  String get noContactsFound => 'Kontakte ei leitud';

  @override
  String get contactsEmptySubtitle => 'Siin kuvatakse teie seadme kontaktid.';

  @override
  String get searchContacts => 'Otsi kontakte…';

  @override
  String get searchRecentCalls => 'Otsige hiljutisi kõnesid';

  @override
  String get fromContacts => 'Kontaktidest';

  @override
  String get recentsSearchSection => 'Viimased otsingud';

  @override
  String get recentsSearchShowContacts => 'Kuva kontaktid otsingus';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Hiljutiste otsimise ajal kuvage kõneajaloo tulemuste all ka vastavad inimesed oma aadressiraamatust.';

  @override
  String get voiceSearch => 'Häälotsing';

  @override
  String get createNewContact => 'Loo uus kontakt';

  @override
  String callError(String error) {
    return 'Kõne viga: $error';
  }

  @override
  String get noRecentCalls => 'Hiljutised kõned puuduvad';

  @override
  String get callHistoryEmpty => 'Siin kuvatakse teie kõneajalugu.';

  @override
  String get loadMore => 'Laadige rohkem';

  @override
  String get frequentlyContactedHeader => 'Sageli ühendust võetud';

  @override
  String get recentHistory => 'Lähiajalugu';

  @override
  String get noFavouritesRecentsHint =>
      'Lemmikuid veel pole. Kontakti tärniga, vajutage pikalt kõnet või kasutage vahekaarti Lemmikud.';

  @override
  String get copyNumber => 'Kopeeri number';

  @override
  String get editNumberBeforeCall => 'Muutke numbrit enne helistamist';

  @override
  String get removeFromFavourites => 'Eemalda lemmikutest';

  @override
  String get addToFavourites => 'Lisa lemmikute hulka';

  @override
  String get blockNumberQuestion => 'Kas blokeerida number?';

  @override
  String blockNumberConfirm(String number) {
    return 'Te ei saa enam numbrilt $number kõnesid ega tekstsõnumeid.';
  }

  @override
  String get blocked => 'Blokeeritud';

  @override
  String get couldNotBlock => 'Ei saanud blokeerida';

  @override
  String get contactNotOnDevice =>
      'Kontakti pole sellesse seadmesse salvestatud';

  @override
  String get unblocked => 'Blokeering tühistatud';

  @override
  String get numberCopied => 'Number kopeeritud';

  @override
  String get showLess => 'Näita vähem';

  @override
  String get showAllTimes => 'Näita kõiki aegu';

  @override
  String mostRecent(String time) {
    return 'Viimased · $time';
  }

  @override
  String get videoCall => 'Videokõne';

  @override
  String get couldNotPlaceVideoCall => 'Videokõnet ei saanud teha';

  @override
  String get message => 'Sõnum';

  @override
  String get couldNotOpenMessaging => 'Sõnumside rakendust ei saanud avada';

  @override
  String get history => 'Ajalugu';

  @override
  String get viewContact => 'Vaata kontakti';

  @override
  String get addToContact => 'Lisa kontaktile';

  @override
  String get callTypeMissed => 'Jäi vahele';

  @override
  String get callTypeRejected => 'Tagasi lükatud';

  @override
  String get callTypeIncoming => 'Sissetulevad';

  @override
  String get callTypeOutgoing => 'Väljuv';

  @override
  String get today => 'Täna';

  @override
  String get yesterday => 'eile';

  @override
  String get justNow => 'Just praegu';

  @override
  String minutesAgo(int count) {
    return '$count min tagasi';
  }

  @override
  String hoursAgo(int count) {
    return '$count tundi tagasi';
  }

  @override
  String get filterAll => 'Kõik';

  @override
  String get filterMissed => 'Jäi vahele';

  @override
  String get filterContacts => 'Kontaktid';

  @override
  String get filterNonContacts => 'Mittekontaktsed';

  @override
  String get iconUpdated =>
      'Ikoon uuendatud. Teie avakuva värskendamine võib veidi aega võtta.';

  @override
  String get iconSavedRelease =>
      'Valik salvestatud. Avakuva ikooni värskendatakse väljalaske järgudes.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Ikooni ei saanud muuta: $error';
  }

  @override
  String get launcherClassicBlack => 'Klassikaline (must)';

  @override
  String get launcherLight => 'Valgus';

  @override
  String get launcherNothingRed => 'Ei midagi punast';

  @override
  String get launcherDarkGrey => 'Tumehall';

  @override
  String get launcherCream => 'Kreem';

  @override
  String get launcherRetroPhone => 'Retro telefon';

  @override
  String get launcherRetroPhoneLight => 'Retro telefon (valgus)';

  @override
  String get voiceSearchUnavailable =>
      'Häälotsing pole selles seadmes saadaval.';

  @override
  String voiceSearchFailed(String error) {
    return 'Häälotsing ebaõnnestus: $error';
  }

  @override
  String get customColor => 'Kohandatud';

  @override
  String get selectColor => 'Valige värv';

  @override
  String get reset => 'Lähtesta';

  @override
  String get simPickerTitle => 'Valige SIM';

  @override
  String get simChooseForCall => 'Valige selle kõne jaoks SIM-kaart';

  @override
  String get defaultSimAsk => 'Küsi iga kord';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Kontaktandmed';

  @override
  String get call => 'Helista';

  @override
  String get share => 'Jaga';

  @override
  String get favourite => 'Lemmik';

  @override
  String get unfavourite => 'Ebasoovitav';

  @override
  String get blockContact => 'Blokeeri kontakt';

  @override
  String get unblockContact => 'Deblokeeri kontakt';

  @override
  String get deleteContact => 'Kustuta kontakt';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'Meil';

  @override
  String get ringtone => 'Helin';

  @override
  String get defaultRingtone => 'Vaikimisi';

  @override
  String get simForContact => 'Selle kontakti SIM-kaart';

  @override
  String get callHistoryTitle => 'Kõneajalugu';

  @override
  String get noCallsWithNumber => 'Selle numbriga ei helistata';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glüüfi animatsioon';

  @override
  String get inCallGlyphAnimationStyle => 'Kõne ajal Glyph animatsioon';

  @override
  String get recordsOff => 'Väljas';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Vaike-SIM';

  @override
  String get nothingPhoneOnly => 'Mitte midagi Ainult telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glüüfi funktsioonid nõuavad Nothing Phone\'i';

  @override
  String get custom => 'Kohandatud';

  @override
  String presetColorHex(String hex) {
    return 'Eelseadistatud · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Kohandatud · $hex';
  }

  @override
  String get oneContact => '1 kontakt';

  @override
  String upToContacts(int count) {
    return 'Kuni $count kontakti';
  }

  @override
  String get answerButtonTapSubtitle => 'Vastamiseks puudutage nuppu';

  @override
  String get filterCalls => 'Filtreeri kõnesid';

  @override
  String get filterTooltip => 'Filter';

  @override
  String get settingsTooltip => 'Seaded';

  @override
  String get filterAllSubtitle => 'Kogu kõnelogi';

  @override
  String get filterMissedSubtitle => 'Jäi vahele ja lükati tagasi';

  @override
  String get filterContactsSubtitle => 'Kõned sobitati salvestatud kontaktiga';

  @override
  String get filterNonContactsSubtitle => 'Numbrid pole teie aadressiraamatus';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Käimasolev kõne: $detail';
  }

  @override
  String get defaultSimForCalls => 'Vaike-SIM kõnede jaoks';

  @override
  String get blinkInterval => 'Pilgutamise intervall';

  @override
  String get close => 'Sule';

  @override
  String get frequentlyContactedInfoBody =>
      'Kuvab vahekaardi Hiljutised ülaosas teie enim helistatud telefoninumbreid, lähtudes sellest, kui palju sissetulevaid, väljuvaid, vastamata või tagasilükatud kõnesid teil valitud ajavahemiku jooksul iga numbriga oli.\n\nKirjete arv: selle väljalülitamiseks määrake väärtusele 0. Kasutage nuppe 1–20, et näidata, kui palju populaarsemaid kontakte.\n\nAjavahemik kehtib ainult siis, kui kuvatakse vähemalt üks kontakt.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count tuled, ${ms}ms kiirus';
  }

  @override
  String get deleteContactQuestion => 'Kas kustutada kontakt?';

  @override
  String get deleteContactBody =>
      'See kontakt kustutatakse teie seadmest jäädavalt.';

  @override
  String get blockContactQuestion => 'Kas blokeerida kontakt?';

  @override
  String get unblockContactQuestion => 'Kas deblokeerida kontakt?';

  @override
  String get blockContactBody =>
      'Te ei saa enam sellelt kontaktilt kõnesid ega tekstsõnumeid.';

  @override
  String get unblockContactBody =>
      'Hakkate sellelt kontaktilt kõnesid ja tekstsõnumeid vastu võtma.';

  @override
  String get contactBlocked => 'Kontakt blokeeritud';

  @override
  String get contactUnblocked => 'Kontakt on deblokeeritud';

  @override
  String get noPhoneNumbersToBlock => 'Blokeeritavaid telefoninumbreid pole';

  @override
  String get simSameAsSystem => 'Sama mis süsteem';

  @override
  String get simSameAsSystemSubtitle => 'Järgib seadetes vaike-SIM-i';

  @override
  String get simAskEveryTimeForContact =>
      'Kuva alati selle kontakti SIM-kaardi valija';

  @override
  String get ringtoneSetForContact =>
      'Selle kontakti jaoks on globaalselt määratud helin';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Helina valimine ebaõnnestus: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Viga: $error';
  }

  @override
  String get noCallHistoryFound => 'Kõneajalugu ei leitud';

  @override
  String get speedDialVoicemail => 'Kiirvalimine: kõnepost';

  @override
  String shareContactSubject(String name) {
    return 'Kontakt: $name';
  }

  @override
  String get contactInfo => 'Kontaktandmed';

  @override
  String get dontAskAgainSim => 'Ära enam küsi';

  @override
  String get simDontAskAgainSubtitle =>
      'Kasutage seda SIM-kaarti vaikimisi (muutke seadetes)';

  @override
  String get addContact => 'Lisa kontakt';

  @override
  String get createContact => 'Loo kontakt';

  @override
  String get paste => 'Kleebi';

  @override
  String get clear => 'Selge';

  @override
  String get returnToCall => 'Helista tagasi';

  @override
  String get numberOfRecordsTitle => 'Kirjete arv';

  @override
  String get recordsPickerSubtitle =>
      'Kui palju kirjeid, millega sageli ühendust võetud, näidata (0 = väljas)';

  @override
  String get torchInfoTitle => 'Taskulambi vilkumine';

  @override
  String get torchInfoBody =>
      'Vilgub sissetulevate, väljuvate või pooleliolevate kõnede ajal kaamera välku. Sõltumatu Glyph tuledest.';

  @override
  String get glyphMapTitle => 'Glüüfi paigutus';

  @override
  String get glyphMapBody =>
      'Mitte midagi Telefon 1 Glyph LED tsoonid. Neid kanaleid kasutavad väljaminevad ja kõnesisesed animatsioonid.';

  @override
  String get answerMethodTitle => 'Vastuse meetod';

  @override
  String get glyphOutgoingCallStyleTitle => 'Väljuva kõne stiil';

  @override
  String get glyphInCallAnimationTitle => 'Glüfi kõneanimatsioon';

  @override
  String get themePickerTitle => 'Teema';

  @override
  String get torchIncomingTitle => 'Sissetuleva kõne taskulamp';

  @override
  String get torchOutgoingTitle => 'Väljuva kõne taskulamp';

  @override
  String get torchOngoingTitle => 'Käimasolev kõne taskulamp';

  @override
  String get timePeriodTitle => 'Ajavahemik';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Kas kustutada see kõne ajaloost?';

  @override
  String get confirmDeleteAllCalls =>
      'Kas kustutada kõik selle numbriga tehtud kõned?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Saada sõnum';

  @override
  String get addToExistingContactAction => 'Lisa kontaktile';

  @override
  String get mobileLabel => 'Mobiilne';

  @override
  String get callingSimForContactTitle =>
      'Selle kontakti SIM-kaardile helistamine';

  @override
  String get contactSettings => 'Kontakti seaded';

  @override
  String get setCallingSim => 'Määra helistamis-SIM';

  @override
  String get contactRingtone => 'Kontakti helin';

  @override
  String get shareContact => 'Jaga kontakti';

  @override
  String get blockNumbers => 'Blokeeri numbrid';

  @override
  String get unblockNumbers => 'Deblokeerige numbrid';

  @override
  String get connectedApps => 'Ühendatud rakendused';

  @override
  String get simNotSet => 'Pole määratud';

  @override
  String get ringtoneDefault => 'Vaikimisi';

  @override
  String get customRingtone => 'Kohandatud';

  @override
  String get aboutSection => 'Umbes';

  @override
  String get aboutFeedbackSection => 'Teave ja tagasiside';

  @override
  String get aboutDescription =>
      'Nothing Dialer on avatud lähtekoodiga. Kui olete arendaja, olete oodatud koodiga tutvuma ja panustama.';

  @override
  String get aboutViewSource => 'Vaadake GitHubis';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Linki ei saanud avada';

  @override
  String get reviewSection => 'Ülevaade';

  @override
  String get reviewDescription =>
      'Kas teile meeldib Nothing Dialer? Teie hinnang teenuses Google Play aitab teistel rakendust leida.';

  @override
  String get reviewRateOnPlay => 'Hinda Google Plays';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Google Play ei saanud avada';

  @override
  String get breathSpeed => 'Hingamiskiirus';

  @override
  String get breathSpeedBlinkHint =>
      'Madalam = vilkumine, kõrgem = aeglane hingamine';

  @override
  String get speedSliderHint => 'Madalam = kiirem, kõrgem = aeglasem';

  @override
  String get swatchDefault => 'Vaikimisi';

  @override
  String get customAccentColorPicker => 'Kohandatud aktsentvärv';

  @override
  String get customLightBackgroundPicker => 'Kohandatud hele taust';

  @override
  String get customDarkBackgroundPicker => 'Kohandatud tume taust';

  @override
  String get customCallBackgroundPicker => 'Kohandatud kõne taust';

  @override
  String get ongoingCallStyleTitle => 'Käimasoleva kõne stiil';

  @override
  String get glyphMapUnavailable => 'Glüüfikaart pole saadaval';

  @override
  String get animationDelayRange => 'Animatsiooni viivitus (1 s–10 s)';

  @override
  String get animationDelayRangeSingle => 'Animatsiooni viivitus (0,1 s–10 s)';

  @override
  String get inCallMute => 'Vaigista';

  @override
  String get inCallKeypad => 'Klaviatuur';

  @override
  String get inCallSpeaker => 'Kõlar';

  @override
  String get inCallMore => 'Rohkem';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefon';

  @override
  String get inCallAddCall => 'Lisa kõne';

  @override
  String get inCallChangeSim => 'Vahetage SIM-kaart';

  @override
  String get inCallDecline => 'Keeldumine';

  @override
  String get inCallAnswer => 'Vastus';

  @override
  String get inCallMessage => 'Sõnum';

  @override
  String get inCallCalling => 'Helistamine…';

  @override
  String get inCallIncoming => 'Sissetulev kõne';

  @override
  String get inCallSelectSim => 'Valige SIM…';

  @override
  String get inCallSwitchingSim => 'SIM-kaardi vahetamine…';

  @override
  String get inCallCallEnded => 'Kõne lõppes';

  @override
  String inCallCallingVia(String sim) {
    return 'Helistamine numbri $sim kaudu';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Helistamine numbri <b>$sim</b> kaudu';
  }

  @override
  String get inCallChooseSim => 'Valige selle kõne jaoks SIM-kaart';

  @override
  String get inCallDragAnswerDecline =>
      'Vastamiseks lohistage paremale · Keeldumiseks lohistage vasakule';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobiil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (praegune)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Helistage numbril <b>$sim</b> alates';
  }

  @override
  String get inCallCallFrom => 'Helista numbrilt';

  @override
  String get inCallUnknown => 'Tundmatu';

  @override
  String get selectContactRingtone => 'Valige kontakti helin';

  @override
  String get speakToSearchPrompt => 'Otsimiseks rääkige';

  @override
  String get phonePermissionRequired => 'Vajalik telefoni luba';

  @override
  String callFailed(String error) {
    return 'Kõne ebaõnnestus: $error';
  }

  @override
  String get callPermissionDenied => 'Helistamisluba on keelatud';

  @override
  String get alreadyDefaultDialer => 'Juba määratud vaikevalijaks';

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
