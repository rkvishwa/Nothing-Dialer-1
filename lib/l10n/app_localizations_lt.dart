// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'Nieko Dialer';

  @override
  String get settings => 'Nustatymai';

  @override
  String get settingsSearchHint => 'Paieškos nustatymai';

  @override
  String get settingsSearchNoResults => 'Nustatymų nerasta';

  @override
  String get general => 'Generolas';

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
  String get theme => 'tema';

  @override
  String get themeSystemDefault => 'Numatytoji sistema';

  @override
  String get themeLight => 'Šviesa';

  @override
  String get themeDark => 'Tamsus';

  @override
  String get themeFollowSystem => 'Sekite sistemos nustatymus';

  @override
  String get themeAlwaysLight => 'Visada naudokite šviesią temą';

  @override
  String get themeAlwaysDark => 'Visada naudokite tamsią temą';

  @override
  String get language => 'Kalba';

  @override
  String get languageDeviceDefault => 'Numatytasis įrenginys';

  @override
  String get languagePickerTitle => 'Kalba';

  @override
  String get languageSearchHint => 'Ieškoti kalbų';

  @override
  String get font => 'Šriftas';

  @override
  String get fontSystem => 'Numatytasis sistemos';

  @override
  String get fontNdot => 'Nieko (NDot)';

  @override
  String get fontSerif => 'Roboto Serifas';

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
      'Nepavyko atsisiųsti šrifto. Patikrinkite ryšį ir bandykite dar kartą.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'Šriftas';

  @override
  String get fontPreviewSample => 'Nieko Dialer';

  @override
  String get fontAppWide => 'Programėlės šriftas';

  @override
  String get fontApplyTo => 'Taikyti į';

  @override
  String get fontApplyEntireApp => 'Visa programėlė';

  @override
  String get fontApplyEntireAppSubtitle =>
      'Visur tas pats šriftas, įskaitant skambutį';

  @override
  String get fontApplyTitlesOnly => 'Pavadinimai ir antraštės';

  @override
  String get fontApplyTitlesOnlySubtitle =>
      'Tik dideli pavadinimai ir skyrių antraštės';

  @override
  String get fontApplyCustomize => 'Tinkinti';

  @override
  String get fontApplyCustomizeSubtitle =>
      'Pasirinkite šriftą pagal ekraną ir teksto tipą';

  @override
  String get fontCustomizeSection => 'Tinkinti pagal ekraną';

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
  String get fontRolePageTitle => 'Puslapio pavadinimas';

  @override
  String get fontRoleSectionHeader => 'Skyriaus antraštė';

  @override
  String get fontRolePrimary => 'Pirminis tekstas';

  @override
  String get fontRoleSecondary => 'Antrinis tekstas';

  @override
  String get fontRoleButton => 'Mygtukai';

  @override
  String get fontRoleDialKey => 'Skambinimo skydelio klavišai';

  @override
  String get fontSurfaceRecents => 'Neseniai';

  @override
  String get fontSurfaceContacts => 'Kontaktai';

  @override
  String get fontSurfaceSettings => 'Nustatymai';

  @override
  String get fontSurfaceDialpad => 'Skambinimo skydelis';

  @override
  String get fontSurfaceShell => 'Navigacija';

  @override
  String get fontSurfaceDefaultDialer => 'Numatytasis rinkiklio raginimas';

  @override
  String get fontSurfaceFavourites => 'Mėgstamiausi';

  @override
  String get fontSurfaceBlocked => 'Užblokuoti numeriai';

  @override
  String get fontSurfaceContactDetail => 'Kontaktinė informacija';

  @override
  String get fontSurfaceCallHistory => 'Skambučių istorija';

  @override
  String get fontSurfaceSheets => 'Lakštai ir rinktuvai';

  @override
  String get fontSurfaceInCall => 'Skambučio ekranas';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font – visa programa';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font – tik pavadinimai';
  }

  @override
  String get fontSubtitleCustomize => 'Pritaikyta kiekvienam ekranui';

  @override
  String get background => 'Fonas';

  @override
  String get accent => 'Akcentas';

  @override
  String get lightBackground => 'Šviesus fonas';

  @override
  String get lightAccent => 'Lengvas akcentas';

  @override
  String get darkBackground => 'Tamsus fonas';

  @override
  String get darkAccent => 'Tamsus akcentas';

  @override
  String get callBackground => 'Skambučio fonas';

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
  String get appIcon => 'Programėlės piktograma';

  @override
  String get answerMethod => 'Atsakymo būdas';

  @override
  String get answerSlide => 'Slyskite, kad atsakytumėte';

  @override
  String get answerSlideSubtitle =>
      'Braukite juostoje kairėn / dešinėn, pvz., „Google Phone“.';

  @override
  String get answerButton => 'Mygtuko bakstelėjimas';

  @override
  String get answerButtonSubtitle =>
      'Palieskite atsakymo arba atmetimo mygtukus';

  @override
  String get answerHuawei => 'Huawei stiliaus';

  @override
  String get answerHuaweiSubtitle =>
      'Norėdami atsakyti, vilkite apskritimą į žalią telefoną';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei – vilkite į žalią / raudoną';

  @override
  String get calling => 'Skambina';

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
  String get defaultSim => 'Numatytoji SIM kortelė';

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
  String get askEveryTime => 'Klauskite kiekvieną kartą';

  @override
  String get askEveryTimeSubtitle =>
      'Rodyti SIM rinkiklį prieš kiekvieną skambutį';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'Nerasta SIM kortelių';

  @override
  String couldNotLoadSims(String error) {
    return 'Nepavyko įkelti SIM kortelių: $error';
  }

  @override
  String get allFavourites => 'Visi mėgstamiausi';

  @override
  String get allFavouritesSubtitle =>
      'Pertvarkykite, pašalinkite ir įtraukite į kontaktus';

  @override
  String get blockedNumbers => 'Užblokuoti numeriai';

  @override
  String get blockedNumbersSubtitle => 'Peržiūrėkite ir atblokuokite numerius';

  @override
  String get soundsAndVibration => 'Garsai ir vibracija';

  @override
  String get soundsAndVibrationSubtitle =>
      'Skambėjimo tonas, vibracija, rinkimo klaviatūros tonai';

  @override
  String couldNotOpenSettings(String error) {
    return 'Nepavyko atidaryti nustatymų: $error';
  }

  @override
  String get frequentlyContacted => 'Dažnai susisiekiama';

  @override
  String get numberOfRecords => 'Įrašų skaičius';

  @override
  String get timePeriod => 'Laikotarpis';

  @override
  String get periodLast24Hours => 'Paskutines 24 valandas';

  @override
  String get periodLast24HoursSubtitle => 'Skambučiai iš praėjusios dienos';

  @override
  String get periodLast7Days => 'Paskutines 7 dienas';

  @override
  String get periodLast7DaysSubtitle => 'Skambučiai iš praėjusios savaitės';

  @override
  String get periodLast30Days => 'Paskutines 30 dienų';

  @override
  String get periodLast30DaysSubtitle => 'Skambučiai iš praėjusio mėnesio';

  @override
  String get periodLast12Months => 'Paskutiniai 12 mėnesių';

  @override
  String get periodLast12MonthsSubtitle => 'Skambučiai iš praėjusių metų';

  @override
  String get periodAllTime => 'Visą laiką';

  @override
  String get periodAllTimeSubtitle => 'Visa skambučių istorija';

  @override
  String get frequentMaxOff => 'Išjungta';

  @override
  String frequentMaxCount(int count) {
    return '$count kontaktai';
  }

  @override
  String get torchBlink => 'Degiklio mirksėjimas';

  @override
  String get torchIncomingCall => 'Įeinančio skambučio žibintuvėlis';

  @override
  String get torchOutgoingCall => 'Išeinančio skambučio žibintuvėlis';

  @override
  String get torchOngoingCall => 'Vykdomo skambučio žibintuvėlis';

  @override
  String get torchIncomingInterval => 'Įeinančio mirksėjimo intervalas';

  @override
  String get torchOutgoingInterval => 'Išeinančio mirksėjimo intervalas';

  @override
  String get torchOngoingInterval => 'Nuolatinis mirksėjimo intervalas';

  @override
  String get torchOff => 'Išjungta';

  @override
  String get torchOffIncomingSubtitle => 'Skambant be fakelo';

  @override
  String get torchOffOutgoingSubtitle => 'Rinkimo metu nėra žibintuvėlio';

  @override
  String get torchOffOngoingSubtitle =>
      'Aktyvaus skambučio metu nėra žibintuvėlio';

  @override
  String get torchFixedInterval => 'Fiksuotas intervalas';

  @override
  String get torchFixedIntervalSubtitle => 'Mirksi nustatytu greičiu';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds mirksėjimas';
  }

  @override
  String get flashlightUnavailable =>
      'Žibintuvėlis nepasiekiamas šiame įrenginyje';

  @override
  String get glyphLights => 'Glyph Lights';

  @override
  String get glyphCallingAnimation => 'Glifų skambinimo animacija';

  @override
  String get glyphOngoingAnimation => 'Glyph vykstančio skambučio animacija';

  @override
  String get glyphNone => 'Nėra';

  @override
  String get glyphNoneOutgoingSubtitle =>
      'Išjungti išeinančių skambučių Glyph lemputes';

  @override
  String get glyphNoneInCallSubtitle =>
      'Išjunkite Glyph lemputes aktyviai skambinant';

  @override
  String get glyphBreathProgress => 'Kvėpavimas ir pažanga';

  @override
  String get glyphBreathProgressSubtitle =>
      'Šviesos kvėpuoja, o eilutė prisipildo daugiau nei 65 s';

  @override
  String get glyphAccumulate => 'Kaupti';

  @override
  String get glyphAccumulateSubtitle => 'Animacija kaupiama ant žibintų C1-C4';

  @override
  String get glyphSingle => 'Vienišas';

  @override
  String get glyphSingleSubtitle => 'Viena lemputė juda per C1-C4';

  @override
  String get glyphBreath => 'Kvėpuoti';

  @override
  String get glyphBreathSubtitle => 'Pasirinkite šviesas ir greitį';

  @override
  String get glyphSteady => 'Pastovus';

  @override
  String get glyphSteadySubtitle => 'Pasirinktos lemputės lieka įjungtos';

  @override
  String get breathSettings => 'Kvėpavimo nustatymai';

  @override
  String get activeLights => 'Aktyvios lemputės';

  @override
  String lightsCount(int count) {
    return '$count lemputės';
  }

  @override
  String get speedSettings => 'Greičio nustatymai';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms vėlavimas';
  }

  @override
  String get durationAndSpeed => 'Trukmė ir greitis';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '${duration}s trukmė, ${interval}ms intervalas';
  }

  @override
  String get cancel => 'Atšaukti';

  @override
  String get done => 'Atlikta';

  @override
  String get save => 'Išsaugoti';

  @override
  String get block => 'Blokuoti';

  @override
  String get delete => 'Ištrinti';

  @override
  String get recents => 'Neseniai';

  @override
  String get contacts => 'Kontaktai';

  @override
  String get hideFavouritesOnRecents =>
      'Slėpti mėgstamiausius paskyroje Naujausi';

  @override
  String get showFavouritesOnRecents =>
      'Rodyti mėgstamiausius skiltyje Naujausi';

  @override
  String get ongoingCall => 'Vykdomas skambutis';

  @override
  String get setAsDefaultTitle => 'NUSTATYTI KAIP\nNUMATYTOJI';

  @override
  String get setAsDefaultBody =>
      'Norėdami naudoti Nothing Dialer, jis turi būti nustatytas kaip numatytoji telefono programa. Tai leidžia valdyti skambučius, peržiūrėti istoriją ir naudoti Glyph animaciją.';

  @override
  String get setAsDefaultButton => 'NUSTATYTI KAIP NUMATYTOJI';

  @override
  String get nothingDialerBrand => 'NIEKO RINKINTAS 1';

  @override
  String get favourites => 'Mėgstamiausi';

  @override
  String get addFavourite => 'Pridėti mėgstamiausią';

  @override
  String get favouritesDrawerHint =>
      'Norėdami pridėti kontaktų, naudokite meniu. Bakstelėkite už stalčiaus ribų arba braukite jį uždarytą. Žvaigždute pažymėkite kontaktą iš jo išsamios informacijos arba ilgai paspauskite skambutį skiltyje „Naujausi“.';

  @override
  String get menu => 'Meniu';

  @override
  String get noFavouritesYet =>
      'Mėgstamiausių dar nėra.\nNorėdami pridėti kontaktą, atidarykite meniu arba pažymėkite adresatą žvaigždute.';

  @override
  String get contactsPermissionNeeded => 'Reikalingas kontaktų leidimas';

  @override
  String get chooseContact => 'Pasirinkite kontaktą';

  @override
  String get noPhone => 'Nėra telefono';

  @override
  String get pickNumber => 'Pasirinkite numerį';

  @override
  String get contactHasNoPhone => 'Šis kontaktas neturi telefono numerio';

  @override
  String get blockNumber => 'Blokuoti numerį';

  @override
  String get enterPhoneNumber => 'Įveskite telefono numerį';

  @override
  String unblockedDisplay(String display) {
    return 'Atblokuota $display';
  }

  @override
  String get couldNotUnblockNumber => 'Nepavyko atblokuoti numerio';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked užblokuota • $matched atitiko';
  }

  @override
  String get contactsPermissionMissing =>
      'Trūksta kontaktų leidimo. Palieskite, kad pataisytumėte.';

  @override
  String get noBlockedNumbers => 'Nėra užblokuotų numerių';

  @override
  String get unknownContact => 'Nežinomas kontaktas';

  @override
  String get unblock => 'Atblokuoti';

  @override
  String get permissionNeeded => 'Reikalingas leidimas';

  @override
  String get grantPhonePermission =>
      'Suteikite telefono leidimą peržiūrėti skambučių istoriją.';

  @override
  String get grantContactsPermission =>
      'Suteikite kontaktams leidimą matyti jūsų adresų knygą.';

  @override
  String get openSettings => 'Atidarykite Nustatymai';

  @override
  String get tryAgain => 'Bandykite dar kartą';

  @override
  String get couldNotLoadContacts => 'Nepavyko įkelti kontaktų';

  @override
  String get contactsLoadError => 'Skaitant jūsų adresų knygą įvyko klaida.';

  @override
  String get noContactsFound => 'Nerasta jokių kontaktų';

  @override
  String get contactsEmptySubtitle =>
      'Čia bus rodomi jūsų įrenginio kontaktai.';

  @override
  String get searchContacts => 'Ieškoti kontaktų…';

  @override
  String get searchRecentCalls => 'Ieškoti paskutinių skambučių';

  @override
  String get fromContacts => 'Iš kontaktų';

  @override
  String get recentsSearchSection => 'Naujausia paieška';

  @override
  String get recentsSearchShowContacts => 'Rodyti kontaktus paieškoje';

  @override
  String get recentsSearchShowContactsSubtitle =>
      'Ieškodami Naujausi, po skambučių istorijos rezultatais taip pat rodykite atitinkančius žmones iš savo adresų knygos.';

  @override
  String get voiceSearch => 'Balso paieška';

  @override
  String get createNewContact => 'Sukurti naują kontaktą';

  @override
  String callError(String error) {
    return 'Skambinimo klaida: $error';
  }

  @override
  String get noRecentCalls => 'Nėra paskutinių skambučių';

  @override
  String get callHistoryEmpty => 'Čia bus rodoma jūsų skambučių istorija.';

  @override
  String get loadMore => 'Įkelti daugiau';

  @override
  String get frequentlyContactedHeader => 'Dažnai susisiekiama';

  @override
  String get recentHistory => 'Naujausia istorija';

  @override
  String get noFavouritesRecentsHint =>
      'Mėgstamiausių dar nėra. Kontaktą pažymėkite žvaigždute, ilgai paspauskite skambutį arba naudokite skirtuką Parankiniai.';

  @override
  String get copyNumber => 'Nukopijuokite numerį';

  @override
  String get editNumberBeforeCall => 'Redaguoti numerį prieš skambinant';

  @override
  String get removeFromFavourites => 'Pašalinti iš mėgstamiausių';

  @override
  String get addToFavourites => 'Pridėti prie mėgstamiausių';

  @override
  String get blockNumberQuestion => 'Blokuoti numerį?';

  @override
  String blockNumberConfirm(String number) {
    return 'Nebegausite skambučių ar žinučių iš $number.';
  }

  @override
  String get blocked => 'Užblokuota';

  @override
  String get couldNotBlock => 'Nepavyko užblokuoti';

  @override
  String get contactNotOnDevice => 'Kontaktas neišsaugotas šiame įrenginyje';

  @override
  String get unblocked => 'Atblokuotas';

  @override
  String get numberCopied => 'Nukopijuotas numeris';

  @override
  String get showLess => 'Rodyti mažiau';

  @override
  String get showAllTimes => 'Rodyti visą laiką';

  @override
  String mostRecent(String time) {
    return 'Naujausias · $time';
  }

  @override
  String get videoCall => 'Vaizdo skambutis';

  @override
  String get couldNotPlaceVideoCall => 'Nepavyko užmegzti vaizdo skambučio';

  @override
  String get message => 'Pranešimas';

  @override
  String get couldNotOpenMessaging => 'Nepavyko atidaryti pranešimų programos';

  @override
  String get history => 'Istorija';

  @override
  String get viewContact => 'Peržiūrėti kontaktą';

  @override
  String get addToContact => 'Pridėti prie kontakto';

  @override
  String get callTypeMissed => 'Praleistas';

  @override
  String get callTypeRejected => 'Atmesta';

  @override
  String get callTypeIncoming => 'Įeinantys';

  @override
  String get callTypeOutgoing => 'Išeinantis';

  @override
  String get today => 'Šiandien';

  @override
  String get yesterday => 'vakar';

  @override
  String get justNow => 'Tik dabar';

  @override
  String minutesAgo(int count) {
    return 'Prieš $count min';
  }

  @override
  String hoursAgo(int count) {
    return 'Prieš $count val';
  }

  @override
  String get filterAll => 'Visi';

  @override
  String get filterMissed => 'Praleistas';

  @override
  String get filterContacts => 'Kontaktai';

  @override
  String get filterNonContacts => 'Nekontaktiniai';

  @override
  String get iconUpdated =>
      'Piktograma atnaujinta. Gali šiek tiek užtrukti, kol jūsų pagrindinis ekranas bus atnaujintas.';

  @override
  String get iconSavedRelease =>
      'Pasirinkimas išsaugotas. Pradinio ekrano piktograma atnaujinama leidimo versijose.';

  @override
  String couldNotChangeIcon(String error) {
    return 'Nepavyko pakeisti piktogramos: $error';
  }

  @override
  String get launcherClassicBlack => 'Klasikinis (juodas)';

  @override
  String get launcherLight => 'Šviesa';

  @override
  String get launcherNothingRed => 'Nieko raudono';

  @override
  String get launcherDarkGrey => 'Tamsiai pilka';

  @override
  String get launcherCream => 'Kremas';

  @override
  String get launcherRetroPhone => 'Retro telefonas';

  @override
  String get launcherRetroPhoneLight => 'Retro telefonas (šviesus)';

  @override
  String get voiceSearchUnavailable =>
      'Balso paieška šiame įrenginyje nepasiekiama.';

  @override
  String voiceSearchFailed(String error) {
    return 'Paieška balsu nepavyko: $error';
  }

  @override
  String get customColor => 'Pasirinktinis';

  @override
  String get selectColor => 'Pasirinkite spalvą';

  @override
  String get reset => 'Nustatyti iš naujo';

  @override
  String get simPickerTitle => 'Pasirinkite SIM';

  @override
  String get simChooseForCall => 'Šiam skambučiui pasirinkite SIM kortelę';

  @override
  String get defaultSimAsk => 'Klauskite kiekvieną kartą';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => 'Kontaktiniai duomenys';

  @override
  String get call => 'Skambinti';

  @override
  String get share => 'Dalintis';

  @override
  String get favourite => 'Mėgstamiausias';

  @override
  String get unfavourite => 'Nemėgstamas';

  @override
  String get blockContact => 'Blokuoti kontaktą';

  @override
  String get unblockContact => 'Atblokuoti kontaktą';

  @override
  String get deleteContact => 'Ištrinti kontaktą';

  @override
  String get phone => 'Telefonas';

  @override
  String get email => 'El. paštas';

  @override
  String get ringtone => 'Skambėjimo tonas';

  @override
  String get defaultRingtone => 'Numatytoji';

  @override
  String get simForContact => 'Šio kontakto SIM kortelė';

  @override
  String get callHistoryTitle => 'Skambučių istorija';

  @override
  String get noCallsWithNumber => 'Šiuo numeriu neskambinama';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'Glifų animacija';

  @override
  String get inCallGlyphAnimationStyle => 'Glyph animacija skambučio metu';

  @override
  String get recordsOff => 'Išjungta';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'Numatytoji SIM kortelė';

  @override
  String get nothingPhoneOnly => 'Nieko Telefonas';

  @override
  String get nothingPhoneOnlySubtitle =>
      'Glyph funkcijos reikalauja nieko telefono';

  @override
  String get custom => 'Pasirinktinis';

  @override
  String presetColorHex(String hex) {
    return 'Iš anksto nustatytas · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'Pasirinktinis · $hex';
  }

  @override
  String get oneContact => '1 kontaktas';

  @override
  String upToContacts(int count) {
    return 'Iki $count kontaktų';
  }

  @override
  String get answerButtonTapSubtitle =>
      'Norėdami atsakyti, bakstelėkite mygtuką';

  @override
  String get filterCalls => 'Filtruoti skambučius';

  @override
  String get filterTooltip => 'Filtruoti';

  @override
  String get settingsTooltip => 'Nustatymai';

  @override
  String get filterAllSubtitle => 'Visas skambučių žurnalas';

  @override
  String get filterMissedSubtitle => 'Praleistas ir atmestas';

  @override
  String get filterContactsSubtitle =>
      'Skambučiai suderinti su išsaugotu kontaktu';

  @override
  String get filterNonContactsSubtitle => 'Skaičiai nėra jūsų adresų knygelėje';

  @override
  String ongoingCallWithDetail(String detail) {
    return 'Vykdomas skambutis: $detail';
  }

  @override
  String get defaultSimForCalls => 'Numatytoji SIM kortelė skambučiams';

  @override
  String get blinkInterval => 'Mirksėjimo intervalas';

  @override
  String get close => 'Uždaryti';

  @override
  String get frequentlyContactedInfoBody =>
      'Rodomi dažniausiai skambinami telefonų numeriai skirtuko „Naujausi“ viršuje, atsižvelgiant į tai, kiek įeinančių, išeinančių, praleistų ar atmestų skambučių buvo su kiekvienu numeriu per pasirinktą laikotarpį.\n\nĮrašų skaičius: nustatykite 0, kad išjungtumėte. Naudokite 1–20, kad parodytumėte tiek geriausių kontaktų.\n\nLaikotarpis taikomas tik tada, kai rodomas bent vienas kontaktas.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count šviesos, ${ms}ms greitis';
  }

  @override
  String get deleteContactQuestion => 'Ištrinti kontaktą?';

  @override
  String get deleteContactBody =>
      'Šis kontaktas bus visam laikui ištrintas iš jūsų įrenginio.';

  @override
  String get blockContactQuestion => 'Blokuoti kontaktą?';

  @override
  String get unblockContactQuestion => 'Atblokuoti kontaktą?';

  @override
  String get blockContactBody =>
      'Daugiau nebegausite skambučių ar žinučių iš šio kontakto.';

  @override
  String get unblockContactBody =>
      'Iš šio kontakto pradėsite gauti skambučius ir žinutes.';

  @override
  String get contactBlocked => 'Kontaktas užblokuotas';

  @override
  String get contactUnblocked => 'Kontaktas atblokuotas';

  @override
  String get noPhoneNumbersToBlock =>
      'Nėra telefono numerių, kuriuos būtų galima blokuoti';

  @override
  String get simSameAsSystem => 'Tas pats kaip sistema';

  @override
  String get simSameAsSystemSubtitle =>
      'Nustatymuose atitinka numatytąją SIM kortelę';

  @override
  String get simAskEveryTimeForContact =>
      'Visada rodyti šio kontakto SIM parinkiklį';

  @override
  String get ringtoneSetForContact =>
      'Šio kontakto skambėjimo tonas nustatytas visame pasaulyje';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return 'Nepavyko pasirinkti skambėjimo tono: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'Klaida: $error';
  }

  @override
  String get noCallHistoryFound => 'Nerasta skambučių istorijos';

  @override
  String get speedDialVoicemail => 'Greitasis rinkimas: balso paštas';

  @override
  String shareContactSubject(String name) {
    return 'Susisiekite: $name';
  }

  @override
  String get contactInfo => 'Kontaktinė informacija';

  @override
  String get dontAskAgainSim => 'Daugiau neklausk';

  @override
  String get simDontAskAgainSubtitle =>
      'Naudoti šią SIM kaip numatytąją (pakeiskite nustatymuose)';

  @override
  String get addContact => 'Pridėti kontaktą';

  @override
  String get createContact => 'Sukurti kontaktą';

  @override
  String get paste => 'Įklijuoti';

  @override
  String get clear => 'Aišku';

  @override
  String get returnToCall => 'Grįžti į skambutį';

  @override
  String get numberOfRecordsTitle => 'Įrašų skaičius';

  @override
  String get recordsPickerSubtitle =>
      'Kiek įrašų, su kuriais dažnai susisiekiama, rodyti (0 = išjungta)';

  @override
  String get torchInfoTitle => 'Žybčioja žibintuvėlis';

  @override
  String get torchInfoBody =>
      'Mirksi fotoaparato blykstė įeinančių, išeinančių ar vykstančių skambučių metu. Nepriklausoma nuo Glyph lempučių.';

  @override
  String get glyphMapTitle => 'Glifų išdėstymas';

  @override
  String get glyphMapBody =>
      'Nieko Telefonas 1 Glyph LED zonos. Šiuos kanalus naudoja siunčiamų ir skambučių animacijos.';

  @override
  String get answerMethodTitle => 'Atsakymo būdas';

  @override
  String get glyphOutgoingCallStyleTitle => 'Išeinančio skambučio stilius';

  @override
  String get glyphInCallAnimationTitle => 'Glyph animacija skambučio metu';

  @override
  String get themePickerTitle => 'tema';

  @override
  String get torchIncomingTitle => 'Įeinančio skambučio žibintuvėlis';

  @override
  String get torchOutgoingTitle => 'Išeinančio skambučio žibintuvėlis';

  @override
  String get torchOngoingTitle => 'Vykdomo skambučio žibintuvėlis';

  @override
  String get timePeriodTitle => 'Laikotarpis';

  @override
  String get ok => 'gerai';

  @override
  String get confirmDeleteCall => 'Ištrinti šį skambutį iš istorijos?';

  @override
  String get confirmDeleteAllCalls => 'Ištrinti visus skambučius šiuo numeriu?';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get sendMessage => 'Siųsti žinutę';

  @override
  String get addToExistingContactAction => 'Pridėti prie kontakto';

  @override
  String get mobileLabel => 'Mobilusis';

  @override
  String get callingSimForContactTitle => 'Skambina SIM kortelė šiam kontaktui';

  @override
  String get contactSettings => 'Kontaktų nustatymai';

  @override
  String get setCallingSim => 'Nustatyti skambinimo SIM kortelę';

  @override
  String get contactRingtone => 'Kontaktinis skambėjimo tonas';

  @override
  String get shareContact => 'Bendrinkite kontaktą';

  @override
  String get blockNumbers => 'Blokuoti numerius';

  @override
  String get unblockNumbers => 'Atblokuoti numerius';

  @override
  String get connectedApps => 'Prijungtos programos';

  @override
  String get simNotSet => 'Nenustatyta';

  @override
  String get ringtoneDefault => 'Numatytoji';

  @override
  String get customRingtone => 'Pasirinktinis';

  @override
  String get aboutSection => 'Apie';

  @override
  String get aboutFeedbackSection => 'Apie ir atsiliepimai';

  @override
  String get aboutDescription =>
      'Nothing Dialer yra atvirojo kodo. Jei esate kūrėjas, kviečiame susipažinti su kodu ir prisidėti.';

  @override
  String get aboutViewSource => 'Žiūrėti GitHub';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'Nepavyko atidaryti nuorodos';

  @override
  String get reviewSection => 'Apžvalga';

  @override
  String get reviewDescription =>
      'Mėgaukitės Nothing Dialer? Jūsų įvertinimas sistemoje „Google Play“ padeda kitiems rasti programą.';

  @override
  String get reviewRateOnPlay => 'Įvertinkite „Google Play“.';

  @override
  String get reviewRateOnPlaySubtitle => 'Opens the Play Store listing';

  @override
  String get reviewCouldNotOpen => 'Nepavyko atidaryti „Google Play“.';

  @override
  String get breathSpeed => 'Kvėpavimo greitis';

  @override
  String get breathSpeedBlinkHint =>
      'Žemiau = mirksėti, aukščiau = lėtas kvėpavimas';

  @override
  String get speedSliderHint => 'Žemiau = greičiau, aukščiau = lėčiau';

  @override
  String get swatchDefault => 'Numatytoji';

  @override
  String get customAccentColorPicker => 'Individualizuota akcento spalva';

  @override
  String get customLightBackgroundPicker => 'Individualus šviesus fonas';

  @override
  String get customDarkBackgroundPicker => 'Individualus tamsus fonas';

  @override
  String get customCallBackgroundPicker => 'Pasirinktinis skambučio fonas';

  @override
  String get ongoingCallStyleTitle => 'Vykdomo skambučio stilius';

  @override
  String get glyphMapUnavailable => 'Glifų žemėlapis nepasiekiamas';

  @override
  String get animationDelayRange => 'Animacijos delsa (1 s–10 s)';

  @override
  String get animationDelayRangeSingle => 'Animacijos delsa (0,1 s–10 s)';

  @override
  String get inCallMute => 'Nutildyti';

  @override
  String get inCallKeypad => 'Klaviatūra';

  @override
  String get inCallSpeaker => 'Pranešėjas';

  @override
  String get inCallMore => 'Daugiau';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => 'Telefonas';

  @override
  String get inCallAddCall => 'Pridėti skambutį';

  @override
  String get inCallChangeSim => 'Pakeiskite SIM kortelę';

  @override
  String get inCallDecline => 'Atmesti';

  @override
  String get inCallAnswer => 'Atsakymas';

  @override
  String get inCallMessage => 'Pranešimas';

  @override
  String get inCallCalling => 'Skambina…';

  @override
  String get inCallIncoming => 'Įeinantis skambutis';

  @override
  String get inCallSelectSim => 'Pasirinkite SIM…';

  @override
  String get inCallSwitchingSim => 'Keičiama SIM…';

  @override
  String get inCallCallEnded => 'Skambutis baigtas';

  @override
  String inCallCallingVia(String sim) {
    return 'Skambinti per $sim';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return 'Skambinti per <b>$sim</b>';
  }

  @override
  String get inCallChooseSim => 'Šiam skambučiui pasirinkite SIM kortelę';

  @override
  String get inCallDragAnswerDecline =>
      'Vilkite dešinėn, kad atsakytumėte · Vilkite į kairę, kad atsisakytumėte';

  @override
  String inCallMobileNumber(String number) {
    return 'Mobilusis $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (dabartinis)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return 'Skambinkite numeriu <b>$sim</b> nuo';
  }

  @override
  String get inCallCallFrom => 'Skambinti iš';

  @override
  String get inCallUnknown => 'Nežinoma';

  @override
  String get selectContactRingtone => 'Pasirinkite kontakto skambėjimo toną';

  @override
  String get speakToSearchPrompt => 'Kalbėkite norėdami ieškoti';

  @override
  String get phonePermissionRequired => 'Reikalingas leidimas telefonu';

  @override
  String callFailed(String error) {
    return 'Skambinti nepavyko: $error';
  }

  @override
  String get callPermissionDenied => 'Skambinimo leidimas atmestas';

  @override
  String get alreadyDefaultDialer =>
      'Jau nustatytas kaip numatytasis rinkiklis';

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
