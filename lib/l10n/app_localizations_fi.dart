// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Ei mitään Dialer';

  @override
  String get settings => 'Asetukset';

  @override
  String get settingsSearchHint => 'Hakuasetukset';

  @override
  String get settingsSearchNoResults => 'Asetuksia ei löytynyt';

  @override
  String get general => 'Kenraali';

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
  String get themeSystemDefault => 'Järjestelmän oletusarvo';

  @override
  String get themeLight => 'Kevyt';

  @override
  String get themeDark => 'Tumma';

  @override
  String get themeFollowSystem => 'Seuraa järjestelmäasetuksia';

  @override
  String get themeAlwaysLight => 'Käytä aina vaaleaa teemaa';

  @override
  String get themeAlwaysDark => 'Käytä aina tummaa teemaa';

  @override
  String get language => 'Kieli';

  @override
  String get languageDeviceDefault => 'Laitteen oletusarvo';

  @override
  String get languagePickerTitle => 'Kieli';

  @override
  String get languageSearchHint => 'Hae kieliä';

  @override
  String get font => 'Fontti';

  @override
  String get fontSystem => 'Järjestelmän oletus';

  @override
  String get fontNdot => 'Ei mitään (NDot)';

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
      'Fontin lataus epäonnistui. Tarkista yhteys ja yritä uudelleen.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Fontti';

  @override
  String get fontPreviewSample => 'Ei mitään Dialer';

  @override
  String get fontAppWide => 'Sovelluksen fontti';

  @override
  String get fontApplyTo => 'Hae osoitteeseen';

  @override
  String get fontApplyEntireApp => 'Koko sovellus';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Sama fontti kaikkialla, myös puhelun aikana';

  @override
  String get fontApplyTitlesOnly => 'Otsikot ja otsikot';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Vain suuret otsikot ja osioiden otsikot';

  @override
  String get fontApplyCustomize => 'Mukauta';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Valitse fontti näytön ja tekstityypin mukaan';

  @override
  String get fontCustomizeSection => 'Mukauta näytön mukaan';

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
  String get fontRolePageTitle => 'Sivun otsikko';

  @override
  String get fontRoleSectionHeader => 'Osion otsikko';

  @override
  String get fontRolePrimary => 'Ensisijainen teksti';

  @override
  String get fontRoleSecondary => 'Toissijainen teksti';

  @override
  String get fontRoleButton => 'Painikkeet';

  @override
  String get fontRoleDialKey => 'Näppäimistön näppäimet';

  @override
  String get fontSurfaceRecents => 'Viimeaikaiset';

  @override
  String get fontSurfaceContacts => 'Yhteystiedot';

  @override
  String get fontSurfaceSettings => 'Asetukset';

  @override
  String get fontSurfaceDialpad => 'Näppäimistö';

  @override
  String get fontSurfaceShell => 'Navigointi';

  @override
  String get fontSurfaceDefaultDialer => 'Oletusvalintakehote';

  @override
  String get fontSurfaceFavourites => 'Suosikit';

  @override
  String get fontSurfaceBlocked => 'Estetyt numerot';

  @override
  String get fontSurfaceContactDetail => 'Yhteystiedot';

  @override
  String get fontSurfaceCallHistory => 'Puheluhistoria';

  @override
  String get fontSurfaceSheets => 'Arkit ja poimijat';

  @override
  String get fontSurfaceInCall => 'Puhelun näyttö';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — koko sovellus';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — vain otsikot';
  }

  @override
  String get fontSubtitleCustomize => 'Mukautettu näyttöä kohden';

  @override
  String get background => 'Tausta';

  @override
  String get accent => 'Aksentti';

  @override
  String get lightBackground => 'vaalea tausta';

  @override
  String get lightAccent => 'Kevyt aksentti';

  @override
  String get darkBackground => 'tumma tausta';

  @override
  String get darkAccent => 'Tumma aksentti';

  @override
  String get callBackground => 'Puhelun tausta';

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
  String get appIcon => 'Sovelluskuvake';

  @override
  String get answerMethod => 'Vastausmenetelmä';

  @override
  String get answerSlide => 'Vastaa liu\'uttamalla';

  @override
  String get answerSlideSubtitle =>
      'Pyyhkäise palkkia vasemmalle/oikealle, kuten Google Phone';

  @override
  String get answerButton => 'Painikkeen napautus';

  @override
  String get answerButtonSubtitle =>
      'Napauta vastaus- tai hylkäämispainikkeita';

  @override
  String get answerHuawei => 'Huawein tyyliin';

  @override
  String get answerHuaweiSubtitle =>
      'Vastaa vetämällä ympyrä vihreän puhelimen kohdalle';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei – vedä vihreään/punaiseen';

  @override
  String get calling => 'Soittaminen';

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
  String get defaultSim => 'Oletus-SIM';

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
  String get askEveryTime => 'Kysy joka kerta';

  @override
  String get askEveryTimeSubtitle =>
      'Näytä SIM-valitsin ennen jokaista puhelua';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'SIM-kortteja ei löytynyt';

  @override
  String couldNotLoadSims(String error) {
    return 'SIM-kortteja ei voitu ladata: $error';
  }

  @override
  String get allFavourites => 'Kaikki suosikit';

  @override
  String get allFavouritesSubtitle =>
      'Järjestä uudelleen, poista ja lisää yhteystiedoista';

  @override
  String get blockedNumbers => 'Estetyt numerot';

  @override
  String get blockedNumbersSubtitle => 'Tarkastele numeroita ja poista esto';

  @override
  String get soundsAndVibration => 'Äänet ja värinä';

  @override
  String get soundsAndVibrationSubtitle =>
      'Soittoääni, värinä, valintanäppäimen äänet';

  @override
  String couldNotOpenSettings(String error) {
    return 'Asetuksia ei voitu avata: $error';
  }

  @override
  String get frequentlyContacted => 'Usein oltu yhteydessä';

  @override
  String get numberOfRecords => 'Tietueiden määrä';

  @override
  String get timePeriod => 'Aikajakso';

  @override
  String get periodLast24Hours => 'Viimeiset 24 tuntia';

  @override
  String get periodLast24HoursSubtitle => 'Puhelut viime päivästä';

  @override
  String get periodLast7Days => 'Viimeiset 7 päivää';

  @override
  String get periodLast7DaysSubtitle => 'Puhelut viime viikolta';

  @override
  String get periodLast30Days => 'Viimeiset 30 päivää';

  @override
  String get periodLast30DaysSubtitle => 'Puhelut kuluneelta kuukaudelta';

  @override
  String get periodLast12Months => 'Viimeiset 12 kuukautta';

  @override
  String get periodLast12MonthsSubtitle => 'Puhelut kuluneelta vuodelta';

  @override
  String get periodAllTime => 'Koko ajan';

  @override
  String get periodAllTimeSubtitle => 'Koko puheluhistoria';

  @override
  String get frequentMaxOff => 'Pois';

  @override
  String frequentMaxCount(int count) {
    return '$count yhteystiedot';
  }

  @override
  String get torchBlink => 'Soihdun vilkku';

  @override
  String get torchIncomingCall => 'Saapuvan puhelun taskulamppu';

  @override
  String get torchOutgoingCall => 'Lähtevän puhelun taskulamppu';

  @override
  String get torchOngoingCall => 'Jatkuva puhelu taskulamppu';

  @override
  String get torchIncomingInterval => 'Tulevan vilkkumisen aikaväli';

  @override
  String get torchOutgoingInterval => 'Lähtevän vilkkumisen aikaväli';

  @override
  String get torchOngoingInterval => 'Jatkuva vilkkuminen';

  @override
  String get torchOff => 'Pois';

  @override
  String get torchOffIncomingSubtitle => 'Ei taskulamppua soitettaessa';

  @override
  String get torchOffOutgoingSubtitle => 'Ei taskulamppua valittaessa';

  @override
  String get torchOffOngoingSubtitle =>
      'Ei taskulamppua aktiivisen puhelun aikana';

  @override
  String get torchFixedInterval => 'Kiinteä intervalli';

  @override
  String get torchFixedIntervalSubtitle => 'Vilkkuu asetetulla nopeudella';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds vilkkuu';
  }

  @override
  String get flashlightUnavailable =>
      'Taskulamppu ei ole käytettävissä tällä laitteella';

  @override
  String get glyphLights => 'Glyph Lights';

  @override
  String get glyphCallingAnimation => 'Glyph kutsuvan animaatio';

  @override
  String get glyphOngoingAnimation =>
      'Glyph käynnissä olevan puhelun animaatio';

  @override
  String get glyphNone => 'Ei mitään';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Poista Glyph-valot käytöstä lähteville puheluille';

  @override
  String get glyphNoneInCallSubtitle =>
      'Poista Glyph-valot käytöstä puhelun aikana';

  @override
  String get glyphBreathProgress => 'Breath & Progress';

  @override
  String get glyphBreathProgressSubtitle =>
      'Valot hengittävät, kun jono täyttyy yli 65 sekunnissa';

  @override
  String get glyphAccumulate => 'Kerää';

  @override
  String get glyphAccumulateSubtitle => 'Keräävä animaatio valoissa C1-C4';

  @override
  String get glyphSingle => 'Sinkku';

  @override
  String get glyphSingleSubtitle => 'Yksittäinen valo liikkuu C1-C4 poikki';

  @override
  String get glyphBreath => 'Hengitä';

  @override
  String get glyphBreathSubtitle => 'Valitse valot ja nopeus';

  @override
  String get glyphSteady => 'Vakaa';

  @override
  String get glyphSteadySubtitle => 'Valitut valot jäävät päälle';

  @override
  String get breathSettings => 'Hengitysasetukset';

  @override
  String get activeLights => 'Aktiiviset valot';

  @override
  String lightsCount(int count) {
    return '$count valot';
  }

  @override
  String get speedSettings => 'Nopeusasetukset';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms viive';
  }

  @override
  String get durationAndSpeed => 'Kesto ja nopeus';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s kesto, ${interval}ms väli';
  }

  @override
  String get cancel => 'Peruuttaa';

  @override
  String get done => 'Tehty';

  @override
  String get save => 'Tallentaa';

  @override
  String get block => 'Lohko';

  @override
  String get delete => 'Poistaa';

  @override
  String get recents => 'Viimeaikaiset';

  @override
  String get contacts => 'Yhteystiedot';

  @override
  String get hideFavouritesOnRecents => 'Piilota suosikit äskettäin';

  @override
  String get showFavouritesOnRecents => 'Näytä suosikit äskettäin';

  @override
  String get ongoingCall => 'Meneillään oleva puhelu';

  @override
  String get setAsDefaultTitle => 'SET AS\nOLETUS';

  @override
  String get setAsDefaultBody =>
      'Jos haluat käyttää Nothing Dialeria, se on asetettava oletuspuhelinsovellukseksi. Tämän avulla voit hallita puheluita, tarkastella historiaa ja käyttää Glyph-animaatioita.';

  @override
  String get setAsDefaultButton => 'ASETETA OLETUKSEKSI';

  @override
  String get nothingDialerBrand => 'EI MITÄÄN DIALER 1';

  @override
  String get favourites => 'Suosikit';

  @override
  String get addFavourite => 'Lisää suosikki';

  @override
  String get favouritesDrawerHint =>
      'Käytä valikkoa yhteystietojen lisäämiseen. Napauta laatikon ulkopuolella tai pyyhkäise se kiinni. Tähdellä yhteystieto heidän tiedoistaan ​​tai paina pitkään puhelua Viimeisimmät-kohdassa.';

  @override
  String get menu => 'Valikko';

  @override
  String get noFavouritesYet =>
      'Ei vielä suosikkeja.\nAvaa valikko lisätäksesi yhteystieto tai tähdellä yhteystieto.';

  @override
  String get contactsPermissionNeeded => 'Yhteystiedot tarvitaan';

  @override
  String get chooseContact => 'Valitse yhteystieto';

  @override
  String get noPhone => 'Ei puhelinta';

  @override
  String get pickNumber => 'Valitse numero';

  @override
  String get contactHasNoPhone => 'Tällä kontaktilla ei ole puhelinnumeroa';

  @override
  String get blockNumber => 'Estä numero';

  @override
  String get enterPhoneNumber => 'Anna puhelinnumero';

  @override
  String unblockedDisplay(String display) {
    return 'Esto poistettu $display';
  }

  @override
  String get couldNotUnblockNumber => 'Numeron estoa ei voitu poistaa';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked estetty • $matched osunut';
  }

  @override
  String get contactsPermissionMissing =>
      'Yhteystiedot puuttuvat. Korjaa napauttamalla.';

  @override
  String get noBlockedNumbers => 'Ei estettyjä numeroita';

  @override
  String get unknownContact => 'Tuntematon yhteyshenkilö';

  @override
  String get unblock => 'Kumoa esto';

  @override
  String get permissionNeeded => 'Lupa tarvitaan';

  @override
  String get grantPhonePermission =>
      'Myönnä puhelimelle lupa nähdäksesi puheluhistoriasi.';

  @override
  String get grantContactsPermission =>
      'Myönnä yhteyshenkilöille lupa nähdä osoitekirjasi.';

  @override
  String get openSettings => 'Avaa Asetukset';

  @override
  String get tryAgain => 'Yritä uudelleen';

  @override
  String get couldNotLoadContacts => 'Yhteystietoja ei voitu ladata';

  @override
  String get contactsLoadError =>
      'Jotain meni pieleen osoitekirjaasi luettaessa.';

  @override
  String get noContactsFound => 'Yhteystietoja ei löytynyt';

  @override
  String get contactsEmptySubtitle => 'Laitteesi yhteystiedot näkyvät täällä.';

  @override
  String get searchContacts => 'Hae yhteystietoja…';

  @override
  String get searchRecentCalls => 'Hae viimeaikaisia ​​puheluita';

  @override
  String get fromContacts => 'Kontakteista';

  @override
  String get recentsSearchSection => 'Viimeaikainen haku';

  @override
  String get recentsSearchShowContacts => 'Näytä yhteystiedot haussa';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Kun haet Viimeisimmät, näytä myös vastaavat ihmiset osoitekirjastasi soittohistorian tulosten alla.';

  @override
  String get voiceSearch => 'Äänihaku';

  @override
  String get createNewContact => 'Luo uusi yhteystieto';

  @override
  String callError(String error) {
    return 'Puheluvirhe: $error';
  }

  @override
  String get noRecentCalls => 'Ei viimeaikaisia ​​puheluita';

  @override
  String get callHistoryEmpty => 'Puheluhistoriasi näkyy tässä.';

  @override
  String get loadMore => 'Lataa lisää';

  @override
  String get frequentlyContactedHeader => 'Usein oltu yhteydessä';

  @override
  String get recentHistory => 'Lähihistoria';

  @override
  String get noFavouritesRecentsHint =>
      'Ei vielä suosikkeja. Tähdellä yhteystieto, paina pitkään puhelua tai käytä Suosikit-välilehteä.';

  @override
  String get copyNumber => 'Kopioi numero';

  @override
  String get editNumberBeforeCall => 'Muokkaa numeroa ennen soittamista';

  @override
  String get removeFromFavourites => 'Poista suosikeista';

  @override
  String get addToFavourites => 'Lisää suosikkeihin';

  @override
  String get blockNumberQuestion => 'Estä numero?';

  @override
  String blockNumberConfirm(String number) {
    return 'Et enää saa puheluita tai tekstiviestejä numerosta $number.';
  }

  @override
  String get blocked => 'Estetty';

  @override
  String get couldNotBlock => 'Ei voitu estää';

  @override
  String get contactNotOnDevice =>
      'Yhteystietoa ei ole tallennettu tälle laitteelle';

  @override
  String get unblocked => 'Esto kumottu';

  @override
  String get numberCopied => 'Numero kopioitu';

  @override
  String get showLess => 'Näytä vähemmän';

  @override
  String get showAllTimes => 'Näytä kaikki ajat';

  @override
  String mostRecent(String time) {
    return 'Uusin · $time';
  }

  @override
  String get videoCall => 'Videopuhelu';

  @override
  String get couldNotPlaceVideoCall => 'Videopuhelua ei voitu soittaa';

  @override
  String get message => 'Viesti';

  @override
  String get couldNotOpenMessaging => 'Viestisovellusta ei voitu avata';

  @override
  String get history => 'Historia';

  @override
  String get viewContact => 'Näytä yhteystieto';

  @override
  String get addToContact => 'Lisää yhteystietoon';

  @override
  String get callTypeMissed => 'Jäi väliin';

  @override
  String get callTypeRejected => 'Hylätty';

  @override
  String get callTypeIncoming => 'Saapuva';

  @override
  String get callTypeOutgoing => 'Lähtevät';

  @override
  String get today => 'Tänään';

  @override
  String get yesterday => 'Eilen';

  @override
  String get justNow => 'Juuri nyt';

  @override
  String minutesAgo(int count) {
    return '$count min sitten';
  }

  @override
  String hoursAgo(int count) {
    return '$count tuntia sitten';
  }

  @override
  String get filterAll => 'Kaikki';

  @override
  String get filterMissed => 'Jäi väliin';

  @override
  String get filterContacts => 'Yhteystiedot';

  @override
  String get filterNonContacts => 'Ei kontakteja';

  @override
  String get iconUpdated =>
      'Ikoni päivitetty. Aloitusnäytön päivittäminen voi kestää hetken.';

  @override
  String get iconSavedRelease =>
      'Valinta tallennettu. Aloitusnäytön kuvake päivittyy julkaisuversioissa.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Kuvaketta ei voitu muuttaa: $error';
  }

  @override
  String get launcherClassicBlack => 'Klassinen (musta)';

  @override
  String get launcherLight => 'Kevyt';

  @override
  String get launcherNothingRed => 'Ei mitään punaista';

  @override
  String get launcherDarkGrey => 'Tumman harmaa';

  @override
  String get launcherCream => 'Kerma';

  @override
  String get launcherRetroPhone => 'Retro puhelin';

  @override
  String get launcherRetroPhoneLight => 'Retro puhelin (kevyt)';

  @override
  String get voiceSearchUnavailable =>
      'Puhehaku ei ole käytettävissä tällä laitteella.';

  @override
  String voiceSearchFailed(String error) {
    return 'Puhehaku epäonnistui: $error';
  }

  @override
  String get customColor => 'Mukautettu';

  @override
  String get selectColor => 'Valitse väri';

  @override
  String get reset => 'Nollaa';

  @override
  String get simPickerTitle => 'Valitse SIM';

  @override
  String get simChooseForCall => 'Valitse SIM tälle puhelulle';

  @override
  String get defaultSimAsk => 'Kysy joka kerta';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Yhteystiedot';

  @override
  String get call => 'Soittaa';

  @override
  String get share => 'Jakaa';

  @override
  String get favourite => 'Suosikki';

  @override
  String get unfavourite => 'Epäsuosikki';

  @override
  String get blockContact => 'Estä yhteystieto';

  @override
  String get unblockContact => 'Poista kontaktin esto';

  @override
  String get deleteContact => 'Poista yhteystieto';

  @override
  String get phone => 'Puhelin';

  @override
  String get email => 'Sähköposti';

  @override
  String get ringtone => 'Soittoääni';

  @override
  String get defaultRingtone => 'Oletus';

  @override
  String get simForContact => 'SIM tälle yhteyshenkilölle';

  @override
  String get callHistoryTitle => 'Puheluhistoria';

  @override
  String get noCallsWithNumber => 'Ei puheluita tällä numerolla';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glyfi animaatio';

  @override
  String get inCallGlyphAnimationStyle => 'Glyph-animaatio puhelun aikana';

  @override
  String get recordsOff => 'Pois';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Oletus-SIM';

  @override
  String get nothingPhoneOnly => 'Ei mitään Vain puhelin';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph-ominaisuudet vaativat Nothing Phonen';

  @override
  String get custom => 'Mukautettu';

  @override
  String presetColorHex(String hex) {
    return 'Esiasetus · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Mukautettu · $hex';
  }

  @override
  String get oneContact => '1 yhteystieto';

  @override
  String upToContacts(int count) {
    return 'Jopa $count yhteystietoa';
  }

  @override
  String get answerButtonTapSubtitle => 'Vastaa napauttamalla painiketta';

  @override
  String get filterCalls => 'Suodata puhelut';

  @override
  String get filterTooltip => 'Suodattaa';

  @override
  String get settingsTooltip => 'Asetukset';

  @override
  String get filterAllSubtitle => 'Koko puheluloki';

  @override
  String get filterMissedSubtitle => 'Kaipattu ja hylätty';

  @override
  String get filterContactsSubtitle =>
      'Puhelut yhdistettiin tallennettuun yhteystietoon';

  @override
  String get filterNonContactsSubtitle => 'Numerot eivät ole osoitekirjassasi';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Käynnissä oleva puhelu: $detail';
  }

  @override
  String get defaultSimForCalls => 'Oletus-SIM-kortti puheluille';

  @override
  String get blinkInterval => 'Räpytyksen aikaväli';

  @override
  String get close => 'Lähellä';

  @override
  String get frequentlyContactedInfoBody =>
      'Näyttää eniten soittamasi puhelinnumerot Viimeisimmät-välilehden yläosassa sen mukaan, kuinka monta saapuvaa, lähtevää, vastaamatonta tai hylättyä puhelua sinulla oli kullakin numerolla valitsemasi ajanjakson aikana.\n\nTietueiden määrä: aseta arvoksi 0, jos haluat poistaa tämän käytöstä. Käytä numeroita 1–20 näyttääksesi monta suosituinta yhteystietoa.\n\nAikajakso on voimassa vain, kun vähintään yksi yhteystieto on näkyvissä.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count valot, ${ms}ms nopeus';
  }

  @override
  String get deleteContactQuestion => 'Poistetaanko yhteystieto?';

  @override
  String get deleteContactBody =>
      'Tämä yhteystieto poistetaan pysyvästi laitteestasi.';

  @override
  String get blockContactQuestion => 'Estä kontakti?';

  @override
  String get unblockContactQuestion => 'Poistetaanko kontaktin esto?';

  @override
  String get blockContactBody =>
      'Et enää saa puheluita tai tekstiviestejä tältä yhteyshenkilöltä.';

  @override
  String get unblockContactBody =>
      'Alat vastaanottaa puheluita ja tekstiviestejä tältä yhteyshenkilöltä.';

  @override
  String get contactBlocked => 'Yhteyshenkilö estetty';

  @override
  String get contactUnblocked => 'Yhteyshenkilön esto kumottu';

  @override
  String get noPhoneNumbersToBlock => 'Ei estäviä puhelinnumeroita';

  @override
  String get simSameAsSystem => 'Sama kuin järjestelmä';

  @override
  String get simSameAsSystemSubtitle => 'Seuraa oletus-SIM-korttia asetuksissa';

  @override
  String get simAskEveryTimeForContact =>
      'Näytä aina tämän yhteystiedon SIM-valitsin';

  @override
  String get ringtoneSetForContact =>
      'Soittoääni asetettu maailmanlaajuisesti tälle yhteyshenkilölle';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Soittoäänen valinta epäonnistui: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Virhe: $error';
  }

  @override
  String get noCallHistoryFound => 'Puheluhistoriaa ei löytynyt';

  @override
  String get speedDialVoicemail => 'Pikavalinta: Vastaaja';

  @override
  String shareContactSubject(String name) {
    return 'Ota yhteyttä: $name';
  }

  @override
  String get contactInfo => 'Yhteystiedot';

  @override
  String get dontAskAgainSim => 'Älä kysy uudelleen';

  @override
  String get simDontAskAgainSubtitle =>
      'Käytä tätä SIM-korttia oletuksena (muuta asetuksissa)';

  @override
  String get addContact => 'Lisää yhteystieto';

  @override
  String get createContact => 'Luo yhteystieto';

  @override
  String get paste => 'Liitä';

  @override
  String get clear => 'Selkeä';

  @override
  String get returnToCall => 'Palaa puheluun';

  @override
  String get numberOfRecordsTitle => 'Tietueiden määrä';

  @override
  String get recordsPickerSubtitle =>
      'Kuinka monta näytettävää usein käytettyä merkintää (0 = pois)';

  @override
  String get torchInfoTitle => 'Taskulamppu vilkkuu';

  @override
  String get torchInfoBody =>
      'Vilkkuu kameran salamaa saapuvien, lähtevien tai meneillään olevien puhelujen aikana. Riippumaton Glyph-valoista.';

  @override
  String get glyphMapTitle => 'Glyfi-asettelu';

  @override
  String get glyphMapBody =>
      'Ei mitään Puhelin 1 Glyph LED -vyöhykkeet. Lähtevät ja puhelun aikana animaatiot käyttävät näitä kanavia.';

  @override
  String get answerMethodTitle => 'Vastausmenetelmä';

  @override
  String get glyphOutgoingCallStyleTitle => 'Lähtevän puhelun tyyli';

  @override
  String get glyphInCallAnimationTitle => 'Glyph puhelun animaatio';

  @override
  String get themePickerTitle => 'Teema';

  @override
  String get torchIncomingTitle => 'Saapuvan puhelun taskulamppu';

  @override
  String get torchOutgoingTitle => 'Lähtevän puhelun taskulamppu';

  @override
  String get torchOngoingTitle => 'Jatkuva puhelu taskulamppu';

  @override
  String get timePeriodTitle => 'Aikajakso';

  @override
  String get ok => 'OK';

  @override
  String get confirmDeleteCall => 'Poistetaanko tämä puhelu historiasta?';

  @override
  String get confirmDeleteAllCalls =>
      'Poistetaanko kaikki puhelut tällä numerolla?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Lähetä viesti';

  @override
  String get addToExistingContactAction => 'Lisää yhteystietoon';

  @override
  String get mobileLabel => 'mobiili';

  @override
  String get callingSimForContactTitle =>
      'Soitetaan tämän yhteystiedon SIM-kortille';

  @override
  String get contactSettings => 'Yhteystiedot';

  @override
  String get setCallingSim => 'Aseta soittava SIM';

  @override
  String get contactRingtone => 'Yhteyden soittoääni';

  @override
  String get shareContact => 'Jaa yhteystieto';

  @override
  String get blockNumbers => 'Estä numerot';

  @override
  String get unblockNumbers => 'Kumoa numeroiden esto';

  @override
  String get connectedApps => 'Yhdistetyt sovellukset';

  @override
  String get simNotSet => 'Ei asetettu';

  @override
  String get ringtoneDefault => 'Oletus';

  @override
  String get customRingtone => 'Mukautettu';

  @override
  String get aboutSection => 'Noin';

  @override
  String get aboutFeedbackSection => 'Tietoja & palaute';

  @override
  String get aboutDescription =>
      'Nothing Dialer on avoimen lähdekoodin. Jos olet kehittäjä, olet tervetullut tutustumaan koodiin ja osallistumaan.';

  @override
  String get aboutViewSource => 'Katso GitHubissa';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Linkkiä ei voitu avata';

  @override
  String get reviewSection => 'Arvostelu';

  @override
  String get reviewDescription =>
      'Nautitko Nothing Dialerista? Google Play -arviosi auttaa muita löytämään sovelluksen.';

  @override
  String get reviewRateOnPlay => 'Arvioi Google Playssa';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Google Playta ei voitu avata';

  @override
  String get breathSpeed => 'Hengityksen nopeus';

  @override
  String get breathSpeedBlinkHint =>
      'Alempi = vilkkua, korkeampi = hidas hengitys';

  @override
  String get speedSliderHint => 'Alempi = nopeampi, korkeampi = hitaampi';

  @override
  String get swatchDefault => 'Oletus';

  @override
  String get customAccentColorPicker => 'Mukautettu korostusväri';

  @override
  String get customLightBackgroundPicker => 'Mukautettu vaalea tausta';

  @override
  String get customDarkBackgroundPicker => 'Mukautettu tumma tausta';

  @override
  String get customCallBackgroundPicker => 'Mukautettu puhelun tausta';

  @override
  String get ongoingCallStyleTitle => 'Jatkuva puhelu tyyli';

  @override
  String get glyphMapUnavailable => 'Glyfikartta ei ole saatavilla';

  @override
  String get animationDelayRange => 'Animaation viive (1 s - 10 s)';

  @override
  String get animationDelayRangeSingle => 'Animaatioviive (0,1 s - 10 s)';

  @override
  String get inCallMute => 'Mykistä';

  @override
  String get inCallKeypad => 'Näppäimistö';

  @override
  String get inCallSpeaker => 'Kaiutin';

  @override
  String get inCallMore => 'Lisää';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Puhelin';

  @override
  String get inCallAddCall => 'Lisää puhelu';

  @override
  String get inCallChangeSim => 'Vaihda SIM';

  @override
  String get inCallDecline => 'Hylkää';

  @override
  String get inCallAnswer => 'Vastaus';

  @override
  String get inCallMessage => 'Viesti';

  @override
  String get inCallCalling => 'Soitetaan…';

  @override
  String get inCallIncoming => 'Saapuva puhelu';

  @override
  String get inCallSelectSim => 'Valitse SIM…';

  @override
  String get inCallSwitchingSim => 'Vaihdetaan SIM-korttia…';

  @override
  String get inCallCallEnded => 'Puhelu päättyi';

  @override
  String inCallCallingVia(String sim) {
    return 'Soita numerolla $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Soita numerolla <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Valitse SIM tälle puhelulle';

  @override
  String get inCallDragAnswerDecline =>
      'Vastaa vetämällä oikealle · Hylkää vetämällä vasemmalle';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobiili $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (nykyinen)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Soita numeroon <b>$sim</b> alkaen';
  }

  @override
  String get inCallCallFrom => 'Soita osoitteesta';

  @override
  String get inCallUnknown => 'Tuntematon';

  @override
  String get selectContactRingtone => 'Valitse yhteyshenkilön soittoääni';

  @override
  String get speakToSearchPrompt => 'Puhu etsiäksesi';

  @override
  String get phonePermissionRequired => 'Puhelinlupa vaaditaan';

  @override
  String callFailed(String error) {
    return 'Puhelu epäonnistui: $error';
  }

  @override
  String get callPermissionDenied => 'Puhelulupa evätty';

  @override
  String get alreadyDefaultDialer => 'Asetettu jo oletusvalitsijaksi';

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
