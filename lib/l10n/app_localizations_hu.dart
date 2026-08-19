// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'Semmi Tárcsázó';

  @override
  String get settings => 'Beállítások elemre';

  @override
  String get settingsSearchHint => 'Keresési beállítások';

  @override
  String get settingsSearchNoResults => 'Nem találhatók beállítások';

  @override
  String get general => 'Általános';

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
  String get theme => 'Téma';

  @override
  String get themeSystemDefault => 'Rendszer alapértelmezett';

  @override
  String get themeLight => 'Fény';

  @override
  String get themeDark => 'Sötét';

  @override
  String get themeFollowSystem => 'Kövesse a rendszerbeállításokat';

  @override
  String get themeAlwaysLight => 'Mindig használjon világos témát';

  @override
  String get themeAlwaysDark => 'Mindig használjon sötét témát';

  @override
  String get language => 'Nyelv';

  @override
  String get languageDeviceDefault => 'Eszköz alapértelmezett';

  @override
  String get languagePickerTitle => 'Nyelv';

  @override
  String get languageSearchHint => 'Nyelvek keresése';

  @override
  String get font => 'Betűtípus';

  @override
  String get fontSystem => 'Rendszer alapértelmezett';

  @override
  String get fontNdot => 'Semmi (NDot)';

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
      'A betűtípus letöltése nem sikerült. Ellenőrizze a kapcsolatot, és próbálja újra.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Betűtípus';

  @override
  String get fontPreviewSample => 'Semmi Tárcsázó';

  @override
  String get fontAppWide => 'Alkalmazás betűtípusa';

  @override
  String get fontApplyTo => 'Alkalmazni';

  @override
  String get fontApplyEntireApp => 'A teljes alkalmazás';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Ugyanaz a betűtípus mindenhol, a hívás közben is';

  @override
  String get fontApplyTitlesOnly => 'Címek és fejlécek';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Csak nagy címek és szakaszfejlécek';

  @override
  String get fontApplyCustomize => 'Testreszabás';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Válasszon betűtípust képernyőnként és szövegtípusonként';

  @override
  String get fontCustomizeSection => 'Testreszabás képernyő szerint';

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
  String get fontRolePageTitle => 'Oldal címe';

  @override
  String get fontRoleSectionHeader => 'Szakaszfejléc';

  @override
  String get fontRolePrimary => 'Elsődleges szöveg';

  @override
  String get fontRoleSecondary => 'Másodlagos szöveg';

  @override
  String get fontRoleButton => 'Gombok';

  @override
  String get fontRoleDialKey => 'Tárcsázó billentyűi';

  @override
  String get fontSurfaceRecents => 'Legutóbbiak';

  @override
  String get fontSurfaceContacts => 'Kapcsolatok';

  @override
  String get fontSurfaceSettings => 'Beállítások elemre';

  @override
  String get fontSurfaceDialpad => 'Tárcsázó';

  @override
  String get fontSurfaceShell => 'Navigáció';

  @override
  String get fontSurfaceDefaultDialer => 'Alapértelmezett tárcsázó prompt';

  @override
  String get fontSurfaceFavourites => 'Kedvencek';

  @override
  String get fontSurfaceBlocked => 'Blokkolt számok';

  @override
  String get fontSurfaceContactDetail => 'Elérhetőségi adatok';

  @override
  String get fontSurfaceCallHistory => 'Hívástörténet';

  @override
  String get fontSurfaceSheets => 'Lapok és komissiók';

  @override
  String get fontSurfaceInCall => 'Hívás közbeni képernyő';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font – a teljes alkalmazás';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font – csak címek';
  }

  @override
  String get fontSubtitleCustomize => 'Egyedi képernyőnként';

  @override
  String get background => 'Háttér';

  @override
  String get accent => 'Hangsúly';

  @override
  String get lightBackground => 'világos háttér';

  @override
  String get lightAccent => 'Könnyű akcentus';

  @override
  String get darkBackground => 'Sötét háttér';

  @override
  String get darkAccent => 'Sötét akcentus';

  @override
  String get callBackground => 'Hívás háttér';

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
  String get appIcon => 'App ikonra';

  @override
  String get answerMethod => 'Válasz módszer';

  @override
  String get answerSlide => 'Csúsztassa a választ';

  @override
  String get answerSlideSubtitle =>
      'Csúsztassa az ujját balra/jobbra a sávon, mint a Google Phone';

  @override
  String get answerButton => 'Gombérintése';

  @override
  String get answerButtonSubtitle =>
      'Koppintson a válasz vagy elutasítás gombra';

  @override
  String get answerHuawei => 'Huawei stílus';

  @override
  String get answerHuaweiSubtitle =>
      'Húzza a kört a zöld telefonra a fogadáshoz';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei – húzza zöldre/pirosra';

  @override
  String get calling => 'Hívás';

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
  String get defaultSim => 'Alapértelmezett SIM';

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
  String get askEveryTime => 'Kérdezd meg minden alkalommal';

  @override
  String get askEveryTimeSubtitle =>
      'A SIM-választó megjelenítése minden hívás előtt';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Nem található SIM-kártya';

  @override
  String couldNotLoadSims(String error) {
    return 'Nem sikerült betölteni a SIM-kártyákat: $error';
  }

  @override
  String get allFavourites => 'Minden kedvenc';

  @override
  String get allFavouritesSubtitle =>
      'A névjegyek átrendezése, eltávolítása és hozzáadása';

  @override
  String get blockedNumbers => 'Blokkolt számok';

  @override
  String get blockedNumbersSubtitle => 'Számok megtekintése és feloldása';

  @override
  String get soundsAndVibration => 'Hangok és rezgés';

  @override
  String get soundsAndVibrationSubtitle => 'Csengőhang, rezgés, tárcsahangok';

  @override
  String couldNotOpenSettings(String error) {
    return 'Nem sikerült megnyitni a beállításokat: $error';
  }

  @override
  String get frequentlyContacted => 'Gyakran felkeresett';

  @override
  String get numberOfRecords => 'Rekordok száma';

  @override
  String get timePeriod => 'Időszak';

  @override
  String get periodLast24Hours => 'Az elmúlt 24 óra';

  @override
  String get periodLast24HoursSubtitle => 'Hívások az elmúlt napból';

  @override
  String get periodLast7Days => 'Az elmúlt 7 nap';

  @override
  String get periodLast7DaysSubtitle => 'Hívások az elmúlt hétről';

  @override
  String get periodLast30Days => 'Az elmúlt 30 nap';

  @override
  String get periodLast30DaysSubtitle => 'Hívások az elmúlt hónapból';

  @override
  String get periodLast12Months => 'Az elmúlt 12 hónap';

  @override
  String get periodLast12MonthsSubtitle => 'Hívások az elmúlt évből';

  @override
  String get periodAllTime => 'Minden alkalommal';

  @override
  String get periodAllTimeSubtitle => 'Teljes hívástörténet';

  @override
  String get frequentMaxOff => 'Le';

  @override
  String frequentMaxCount(int count) {
    return '$count névjegyek';
  }

  @override
  String get torchBlink => 'Fáklya pislogás';

  @override
  String get torchIncomingCall => 'Bejövő hívás fáklya';

  @override
  String get torchOutgoingCall => 'Kimenő hívás fáklya';

  @override
  String get torchOngoingCall => 'Folyamatos hívás fáklya';

  @override
  String get torchIncomingInterval => 'Bejövő pislogási intervallum';

  @override
  String get torchOutgoingInterval => 'Kimenő pislogási intervallum';

  @override
  String get torchOngoingInterval => 'Folyamatos pislogási intervallum';

  @override
  String get torchOff => 'Le';

  @override
  String get torchOffIncomingSubtitle => 'Csengetés közben nincs fáklya';

  @override
  String get torchOffOutgoingSubtitle => 'Tárcsázás közben nincs zseblámpa';

  @override
  String get torchOffOngoingSubtitle => 'Nincs zseblámpa aktív hívás közben';

  @override
  String get torchFixedInterval => 'Fix intervallum';

  @override
  String get torchFixedIntervalSubtitle => 'Beállított sebességgel villog';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds villog';
  }

  @override
  String get flashlightUnavailable =>
      'A zseblámpa nem érhető el ezen az eszközön';

  @override
  String get glyphLights => 'Glyph Lights';

  @override
  String get glyphCallingAnimation => 'Glyph hívó animáció';

  @override
  String get glyphOngoingAnimation => 'Glyph folyamatban lévő hívás animáció';

  @override
  String get glyphNone => 'Egyik sem';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Kapcsolja ki a Glyph fényeket a kimenő hívásoknál';

  @override
  String get glyphNoneInCallSubtitle =>
      'Kapcsolja ki a Glyph fényeket aktív hívás közben';

  @override
  String get glyphBreathProgress => 'Breath & Haladás';

  @override
  String get glyphBreathProgressSubtitle =>
      'A fények lélegzik, miközben a vonal megtelik 65 másodperc felett';

  @override
  String get glyphAccumulate => 'Felhalmozódni';

  @override
  String get glyphAccumulateSubtitle => 'Animáció halmozódása a C1-C4 lámpákon';

  @override
  String get glyphSingle => 'Egyetlen';

  @override
  String get glyphSingleSubtitle => 'Egyetlen lámpa mozog a C1-C4 között';

  @override
  String get glyphBreath => 'Lehelet';

  @override
  String get glyphBreathSubtitle => 'Válasszon fényeket és sebességet';

  @override
  String get glyphSteady => 'Állandó';

  @override
  String get glyphSteadySubtitle => 'A kiválasztott lámpák égve maradnak';

  @override
  String get breathSettings => 'Légzési beállítások';

  @override
  String get activeLights => 'Aktív fények';

  @override
  String lightsCount(int count) {
    return '$count fények';
  }

  @override
  String get speedSettings => 'Sebesség beállítások';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms késleltetés';
  }

  @override
  String get durationAndSpeed => 'Időtartam és sebesség';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s időtartam, ${interval}ms intervallum';
  }

  @override
  String get cancel => 'Mégsem';

  @override
  String get done => 'Kész';

  @override
  String get save => 'Megtakarítás';

  @override
  String get block => 'Tömb';

  @override
  String get delete => 'Töröl';

  @override
  String get recents => 'Legutóbbiak';

  @override
  String get contacts => 'Kapcsolatok';

  @override
  String get hideFavouritesOnRecents =>
      'Kedvencek elrejtése a Legutóbbi oldalon';

  @override
  String get showFavouritesOnRecents =>
      'Kedvencek megjelenítése a Legutóbbi oldalon';

  @override
  String get ongoingCall => 'Folyamatos hívás';

  @override
  String get setAsDefaultTitle => 'BEÁLLÍTÁS MINT\nALAPÉRTELMEZETT';

  @override
  String get setAsDefaultBody =>
      'A Nothing Dialer használatához be kell állítani alapértelmezett telefonalkalmazásként. Ez lehetővé teszi a hívások kezelését, az előzmények megtekintését és a Glyph animációk használatát.';

  @override
  String get setAsDefaultButton => 'BEÁLLÍTÁS ALAPÉRTÉKÉRE';

  @override
  String get nothingDialerBrand => 'SEMMI tárcsázó 1';

  @override
  String get favourites => 'Kedvencek';

  @override
  String get addFavourite => 'Kedvenc hozzáadása';

  @override
  String get favouritesDrawerHint =>
      'Névjegyek hozzáadásához használja a menüt. Koppintson a fiókon kívülre, vagy húzza be a fiókot. Csillagozzon meg egy névjegyet az adatai közül, vagy nyomja meg hosszan a hívást a Legutóbbiak menüben.';

  @override
  String get menu => 'Menü';

  @override
  String get noFavouritesYet =>
      'Még nincs kedvenc.\nNyissa meg a menüt egy névjegy hozzáadásához, vagy csillagozza meg a névjegyet.';

  @override
  String get contactsPermissionNeeded =>
      'Kapcsolatfelvételi engedély szükséges';

  @override
  String get chooseContact => 'Válasszon névjegyet';

  @override
  String get noPhone => 'Nincs telefon';

  @override
  String get pickNumber => 'Válassz számot';

  @override
  String get contactHasNoPhone => 'Ennek a kapcsolatnak nincs telefonszáma';

  @override
  String get blockNumber => 'Blokkszám';

  @override
  String get enterPhoneNumber => 'Adja meg a telefonszámot';

  @override
  String unblockedDisplay(String display) {
    return 'Feloldva $display';
  }

  @override
  String get couldNotUnblockNumber =>
      'Nem sikerült feloldani a szám blokkolását';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked blokkolva • $matched egyezett';
  }

  @override
  String get contactsPermissionMissing =>
      'Hiányzik a kapcsolattartási engedély. Koppintson a javításhoz.';

  @override
  String get noBlockedNumbers => 'Nincsenek letiltott számok';

  @override
  String get unknownContact => 'Ismeretlen kapcsolattartó';

  @override
  String get unblock => 'Blokkolás feloldása';

  @override
  String get permissionNeeded => 'Engedély szükséges';

  @override
  String get grantPhonePermission =>
      'Adjon engedélyt a telefonnak a híváselőzmények megtekintéséhez.';

  @override
  String get grantContactsPermission =>
      'Adjon engedélyt a kapcsolatoknak a címjegyzék megtekintéséhez.';

  @override
  String get openSettings => 'Nyissa meg a Beállítások lehetőséget';

  @override
  String get tryAgain => 'Próbáld újra';

  @override
  String get couldNotLoadContacts => 'Nem sikerült betölteni a névjegyeket';

  @override
  String get contactsLoadError => 'Hiba történt a címjegyzéked olvasásakor.';

  @override
  String get noContactsFound => 'Nem találhatók névjegyek';

  @override
  String get contactsEmptySubtitle =>
      'Itt jelennek meg az eszközéről származó névjegyek.';

  @override
  String get searchContacts => 'Névjegyek keresése…';

  @override
  String get searchRecentCalls => 'A legutóbbi hívások keresése';

  @override
  String get fromContacts => 'A névjegyekből';

  @override
  String get recentsSearchSection => 'Legutóbbi keresés';

  @override
  String get recentsSearchShowContacts =>
      'Névjegyek megjelenítése a keresésben';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'A Legutóbbiak keresése közben a híváslista eredményei alatt is jelenítse meg a megfelelő személyeket a címjegyzékéből.';

  @override
  String get voiceSearch => 'Hangalapú keresés';

  @override
  String get createNewContact => 'Új kapcsolat létrehozása';

  @override
  String callError(String error) {
    return 'Hívási hiba: $error';
  }

  @override
  String get noRecentCalls => 'Nincsenek legutóbbi hívások';

  @override
  String get callHistoryEmpty => 'A híváslista itt fog megjelenni.';

  @override
  String get loadMore => 'Töltsön be többet';

  @override
  String get frequentlyContactedHeader => 'Gyakran felkeresett';

  @override
  String get recentHistory => 'Legújabb történelem';

  @override
  String get noFavouritesRecentsHint =>
      'Még nincs kedvenc. Csillagozza meg a névjegyet, tartsa lenyomva a hívást, vagy használja a Kedvencek lapot.';

  @override
  String get copyNumber => 'Szám másolata';

  @override
  String get editNumberBeforeCall => 'Hívás előtt módosítsa a számot';

  @override
  String get removeFromFavourites => 'Eltávolítás a kedvencek közül';

  @override
  String get addToFavourites => 'Hozzáadás a kedvencekhez';

  @override
  String get blockNumberQuestion => 'Szám letiltása?';

  @override
  String blockNumberConfirm(String number) {
    return 'A továbbiakban nem fog hívásokat vagy SMS-eket fogadni a következőtől: $number.';
  }

  @override
  String get blocked => 'Zárolt';

  @override
  String get couldNotBlock => 'Nem sikerült blokkolni';

  @override
  String get contactNotOnDevice => 'A névjegy nincs mentve ezen az eszközön';

  @override
  String get unblocked => 'Feloldva';

  @override
  String get numberCopied => 'Szám másolva';

  @override
  String get showLess => 'Mutass kevesebbet';

  @override
  String get showAllTimes => 'Minden időpont megjelenítése';

  @override
  String mostRecent(String time) {
    return 'Legutóbbi · $time';
  }

  @override
  String get videoCall => 'Videohívás';

  @override
  String get couldNotPlaceVideoCall => 'Nem sikerült videohívást kezdeményezni';

  @override
  String get message => 'Üzenet';

  @override
  String get couldNotOpenMessaging =>
      'Nem sikerült megnyitni az üzenetküldő alkalmazást';

  @override
  String get history => 'Történelem';

  @override
  String get viewContact => 'Névjegy megtekintése';

  @override
  String get addToContact => 'Hozzáadás a névjegyhez';

  @override
  String get callTypeMissed => 'Elmaradt';

  @override
  String get callTypeRejected => 'Elutasítva';

  @override
  String get callTypeIncoming => 'Bejövő';

  @override
  String get callTypeOutgoing => 'Kimenő';

  @override
  String get today => 'Ma';

  @override
  String get yesterday => 'Tegnap';

  @override
  String get justNow => 'Éppen most';

  @override
  String minutesAgo(int count) {
    return '$count perce';
  }

  @override
  String hoursAgo(int count) {
    return '$count órája';
  }

  @override
  String get filterAll => 'Minden';

  @override
  String get filterMissed => 'Elmaradt';

  @override
  String get filterContacts => 'Kapcsolatok';

  @override
  String get filterNonContacts => 'Nem érintkezés';

  @override
  String get iconUpdated =>
      'Ikon frissítve. A kezdőképernyő frissítése eltarthat egy ideig.';

  @override
  String get iconSavedRelease =>
      'Választás mentve. A kezdőképernyő ikonja a kiadás buildjei során frissül.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Nem sikerült megváltoztatni az ikont: $error';
  }

  @override
  String get launcherClassicBlack => 'Klasszikus (fekete)';

  @override
  String get launcherLight => 'Fény';

  @override
  String get launcherNothingRed => 'Semmi piros';

  @override
  String get launcherDarkGrey => 'Sötétszürke';

  @override
  String get launcherCream => 'Krém';

  @override
  String get launcherRetroPhone => 'Retro telefon';

  @override
  String get launcherRetroPhoneLight => 'Retro telefon (világos)';

  @override
  String get voiceSearchUnavailable =>
      'A hangalapú keresés nem érhető el ezen az eszközön.';

  @override
  String voiceSearchFailed(String error) {
    return 'A hangalapú keresés sikertelen: $error';
  }

  @override
  String get customColor => 'Szokás';

  @override
  String get selectColor => 'Válasszon színt';

  @override
  String get reset => 'Reset';

  @override
  String get simPickerTitle => 'Válassza a SIM lehetőséget';

  @override
  String get simChooseForCall => 'Válassza a SIM-kártyát ehhez a híváshoz';

  @override
  String get defaultSimAsk => 'Kérdezd meg minden alkalommal';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Elérhetőségek';

  @override
  String get call => 'Hívás';

  @override
  String get share => 'Részesedés';

  @override
  String get favourite => 'Kedvenc';

  @override
  String get unfavourite => 'Nem kedvenc';

  @override
  String get blockContact => 'Névjegy blokkolása';

  @override
  String get unblockContact => 'Kapcsolat feloldása';

  @override
  String get deleteContact => 'Névjegy törlése';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'Email';

  @override
  String get ringtone => 'Csengőhang';

  @override
  String get defaultRingtone => 'Alapértelmezett';

  @override
  String get simForContact => 'SIM-kártya ehhez a névjegyhez';

  @override
  String get callHistoryTitle => 'Hívástörténet';

  @override
  String get noCallsWithNumber => 'Nincs hívás ezen a számon';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyph animáció';

  @override
  String get inCallGlyphAnimationStyle => 'Hívás közbeni Glyph animáció';

  @override
  String get recordsOff => 'Le';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Alapértelmezett SIM';

  @override
  String get nothingPhoneOnly => 'Semmi Csak Telefon';

  @override
  String get nothingPhoneOnlySubtitle =>
      'A Glyph funkciókhoz semmi telefon szükséges';

  @override
  String get custom => 'Szokás';

  @override
  String presetColorHex(String hex) {
    return 'Előre beállított · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Egyéni · $hex';
  }

  @override
  String get oneContact => '1 kapcsolat';

  @override
  String upToContacts(int count) {
    return 'Akár $count névjegy';
  }

  @override
  String get answerButtonTapSubtitle => 'A válaszhoz érintse meg a gombot';

  @override
  String get filterCalls => 'Hívások szűrése';

  @override
  String get filterTooltip => 'Szűrő';

  @override
  String get settingsTooltip => 'Beállítások elemre';

  @override
  String get filterAllSubtitle => 'Teljes hívásnapló';

  @override
  String get filterMissedSubtitle => 'Kihagyott és elutasított';

  @override
  String get filterContactsSubtitle => 'Mentett névjegyhez tartozó hívások';

  @override
  String get filterNonContactsSubtitle => 'A számok nincsenek a címjegyzékében';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Folyamatban lévő hívás: $detail';
  }

  @override
  String get defaultSimForCalls => 'Alapértelmezett SIM a hívásokhoz';

  @override
  String get blinkInterval => 'Pislogás intervallum';

  @override
  String get close => 'Közeli';

  @override
  String get frequentlyContactedInfoBody =>
      'A Legutóbbiak lap tetején jeleníti meg a leggyakrabban hívott telefonszámokat annak alapján, hogy hány bejövő, kimenő, nem fogadott vagy elutasított hívás volt az egyes számokkal a választott időszakban.\n\nRekordok száma: állítsa 0-ra a kikapcsoláshoz. Használja az 1–20-at, hogy megmutassa, hány fő névjegy.\n\nAz időtartam csak akkor érvényes, ha legalább egy kapcsolat látható.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count fények, ${ms}ms sebesség';
  }

  @override
  String get deleteContactQuestion => 'Törli a névjegyet?';

  @override
  String get deleteContactBody =>
      'Ez a névjegy véglegesen törlődik az eszközéről.';

  @override
  String get blockContactQuestion => 'Letiltja a névjegyet?';

  @override
  String get unblockContactQuestion => 'Feloldja a névjegy tiltását?';

  @override
  String get blockContactBody =>
      'A továbbiakban nem fog hívásokat vagy SMS-eket fogadni ettől a névjegytől.';

  @override
  String get unblockContactBody =>
      'Hívásokat és SMS-eket fog kapni ettől a kapcsolattól.';

  @override
  String get contactBlocked => 'Névjegy blokkolva';

  @override
  String get contactUnblocked => 'Kapcsolat feloldva';

  @override
  String get noPhoneNumbersToBlock => 'Nincsenek letiltható telefonszámok';

  @override
  String get simSameAsSystem => 'Ugyanaz, mint a rendszer';

  @override
  String get simSameAsSystemSubtitle =>
      'Követi az alapértelmezett SIM-kártyát a Beállításokban';

  @override
  String get simAskEveryTimeForContact =>
      'Mindig jelenítse meg a SIM-választót ehhez a névjegyhez';

  @override
  String get ringtoneSetForContact =>
      'Csengőhang globálisan beállítva ehhez a névjegyhez';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Nem sikerült kiválasztani a csengőhangot: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Hiba: $error';
  }

  @override
  String get noCallHistoryFound => 'Nem található híváslista';

  @override
  String get speedDialVoicemail => 'Gyorstárcsázás: Hangposta';

  @override
  String shareContactSubject(String name) {
    return 'Elérhetőség: $name';
  }

  @override
  String get contactInfo => 'Elérhetőségi adatok';

  @override
  String get dontAskAgainSim => 'Ne kérdezz többet';

  @override
  String get simDontAskAgainSubtitle =>
      'Használja ezt a SIM-kártyát alapértelmezettként (módosítás a Beállításokban)';

  @override
  String get addContact => 'Névjegy hozzáadása';

  @override
  String get createContact => 'Kapcsolat létrehozása';

  @override
  String get paste => 'Paszta';

  @override
  String get clear => 'Világos';

  @override
  String get returnToCall => 'Vissza a híváshoz';

  @override
  String get numberOfRecordsTitle => 'Rekordok száma';

  @override
  String get recordsPickerSubtitle =>
      'Hány gyakran keresett bejegyzést kell megjeleníteni (0 = kikapcsolva)';

  @override
  String get torchInfoTitle => 'Fáklya pislog';

  @override
  String get torchInfoBody =>
      'Bejövő, kimenő vagy folyamatban lévő hívások közben villog a fényképezőgép vakuja. Független a Glyph fényektől.';

  @override
  String get glyphMapTitle => 'Karakter elrendezés';

  @override
  String get glyphMapBody =>
      'Semmi Telefon 1 Glyph LED zónák. A kimenő és a hívás közbeni animációk ezeket a csatornákat használják.';

  @override
  String get answerMethodTitle => 'Válasz módszer';

  @override
  String get glyphOutgoingCallStyleTitle => 'Kimenő hívás stílusa';

  @override
  String get glyphInCallAnimationTitle => 'Glyph hívás közbeni animáció';

  @override
  String get themePickerTitle => 'Téma';

  @override
  String get torchIncomingTitle => 'Bejövő hívás fáklya';

  @override
  String get torchOutgoingTitle => 'Kimenő hívás fáklya';

  @override
  String get torchOngoingTitle => 'Folyamatos hívás fáklya';

  @override
  String get timePeriodTitle => 'Időszak';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Törli ezt a hívást az előzményekből?';

  @override
  String get confirmDeleteAllCalls => 'Törli az összes hívást ezzel a számmal?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Üzenet küldése';

  @override
  String get addToExistingContactAction => 'Hozzáadás névjegyhez';

  @override
  String get mobileLabel => 'Mozgó';

  @override
  String get callingSimForContactTitle => 'SIM hívása ehhez a névjegyhez';

  @override
  String get contactSettings => 'Kapcsolati beállítások';

  @override
  String get setCallingSim => 'Hívó SIM beállítása';

  @override
  String get contactRingtone => 'Kapcsolati csengőhang';

  @override
  String get shareContact => 'Névjegy megosztása';

  @override
  String get blockNumbers => 'Számok blokkolása';

  @override
  String get unblockNumbers => 'Számok blokkolásának feloldása';

  @override
  String get connectedApps => 'Csatlakoztatott alkalmazások';

  @override
  String get simNotSet => 'Nincs beállítva';

  @override
  String get ringtoneDefault => 'Alapértelmezett';

  @override
  String get customRingtone => 'Szokás';

  @override
  String get aboutSection => 'Körülbelül';

  @override
  String get aboutFeedbackSection => 'Névjegy és visszajelzés';

  @override
  String get aboutDescription =>
      'A Nothing Dialer nyílt forráskódú. Ha Ön fejlesztő, szívesen fedezi fel a kódot, és járul hozzá.';

  @override
  String get aboutViewSource => 'Megtekintés a GitHubon';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Nem sikerült megnyitni a linket';

  @override
  String get reviewSection => 'Tekintse át';

  @override
  String get reviewDescription =>
      'Élvezed a Semmit Tárcsázót? A Google Playen adott értékelése segít másoknak megtalálni az alkalmazást.';

  @override
  String get reviewRateOnPlay => 'Értékeljen a Google Playen';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Nem sikerült megnyitni a Google Playt';

  @override
  String get breathSpeed => 'Légzési sebesség';

  @override
  String get breathSpeedBlinkHint => 'Alsó = pislogás, magasabb = lassú légzés';

  @override
  String get speedSliderHint => 'Alacsonyabb = gyorsabb, magasabb = lassabb';

  @override
  String get swatchDefault => 'Alapértelmezett';

  @override
  String get customAccentColorPicker => 'Egyedi kiemelő szín';

  @override
  String get customLightBackgroundPicker => 'Egyedi világos háttér';

  @override
  String get customDarkBackgroundPicker => 'Egyedi sötét háttér';

  @override
  String get customCallBackgroundPicker => 'Egyedi hívás háttér';

  @override
  String get ongoingCallStyleTitle => 'Folyamatos hívás stílusa';

  @override
  String get glyphMapUnavailable => 'Glyph térkép nem érhető el';

  @override
  String get animationDelayRange => 'Animáció késleltetése (1 mp - 10 mp)';

  @override
  String get animationDelayRangeSingle =>
      'Animáció késleltetése (0,1 mp - 10 mp)';

  @override
  String get inCallMute => 'Néma';

  @override
  String get inCallKeypad => 'Billentyűzet';

  @override
  String get inCallSpeaker => 'Hangszóró';

  @override
  String get inCallMore => 'Több';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefon';

  @override
  String get inCallAddCall => 'Hívás hozzáadása';

  @override
  String get inCallChangeSim => 'SIM csere';

  @override
  String get inCallDecline => 'Hanyatlás';

  @override
  String get inCallAnswer => 'Válasz';

  @override
  String get inCallMessage => 'Üzenet';

  @override
  String get inCallCalling => 'Hívás…';

  @override
  String get inCallIncoming => 'Bejövő hívás';

  @override
  String get inCallSelectSim => 'SIM-kártya kiválasztása…';

  @override
  String get inCallSwitchingSim => 'SIM váltás…';

  @override
  String get inCallCallEnded => 'A hívás véget ért';

  @override
  String inCallCallingVia(String sim) {
    return 'Hívás a $sim számon keresztül';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Hívás a következő számon: <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Válassza a SIM-kártyát ehhez a híváshoz';

  @override
  String get inCallDragAnswerDecline =>
      'Húzza jobbra a válaszhoz · Húzza balra az elutasításhoz';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobil $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (jelenlegi)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Hívjon a <b>$sim</b> számon innen';
  }

  @override
  String get inCallCallFrom => 'Hívás innen:';

  @override
  String get inCallUnknown => 'Ismeretlen';

  @override
  String get selectContactRingtone => 'Válassza ki a névjegy csengőhangját';

  @override
  String get speakToSearchPrompt => 'Beszéljen a kereséshez';

  @override
  String get phonePermissionRequired => 'Telefonos engedély szükséges';

  @override
  String callFailed(String error) {
    return 'Sikertelen hívás: $error';
  }

  @override
  String get callPermissionDenied => 'Hívási engedély megtagadva';

  @override
  String get alreadyDefaultDialer =>
      'Már be van állítva alapértelmezett tárcsázóként';

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
