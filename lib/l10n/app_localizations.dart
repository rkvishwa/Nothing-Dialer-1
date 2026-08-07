import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_as.dart';
import 'app_localizations_az.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_cy.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_my.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tl.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_uz.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';
import 'app_localizations_zu.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('af'),
    Locale('am'),
    Locale('ar'),
    Locale('as'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('bn'),
    Locale('bs'),
    Locale('ca'),
    Locale('cs'),
    Locale('cy'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('en', 'AU'),
    Locale('en', 'CA'),
    Locale('en', 'GB'),
    Locale('en', 'IN'),
    Locale('es'),
    Locale('es', '419'),
    Locale('es', 'MX'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('fr', 'CA'),
    Locale('gl'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('ka'),
    Locale('kk'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('ky'),
    Locale('lo'),
    Locale('lt'),
    Locale('lv'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('mr'),
    Locale('ms'),
    Locale('my'),
    Locale('nb'),
    Locale('ne'),
    Locale('nl'),
    Locale('or'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('pt', 'PT'),
    Locale('ro'),
    Locale('ru'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sq'),
    Locale('sr'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tl'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('uz'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'HK'),
    Locale('zh', 'TW'),
    Locale('zu'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Nothing Dialer'**
  String get appTitle;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @settingsSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search settings'**
  String get settingsSearchHint;

  /// No description provided for @settingsSearchNoResults.
  ///
  /// In en, this message translates to:
  /// **'No settings found'**
  String get settingsSearchNoResults;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @themeSystemDefault.
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get themeSystemDefault;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @themeFollowSystem.
  ///
  /// In en, this message translates to:
  /// **'Follow system settings'**
  String get themeFollowSystem;

  /// No description provided for @themeAlwaysLight.
  ///
  /// In en, this message translates to:
  /// **'Always use light theme'**
  String get themeAlwaysLight;

  /// No description provided for @themeAlwaysDark.
  ///
  /// In en, this message translates to:
  /// **'Always use dark theme'**
  String get themeAlwaysDark;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @languageDeviceDefault.
  ///
  /// In en, this message translates to:
  /// **'Device default'**
  String get languageDeviceDefault;

  /// No description provided for @languagePickerTitle.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languagePickerTitle;

  /// No description provided for @languageSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search languages'**
  String get languageSearchHint;

  /// No description provided for @font.
  ///
  /// In en, this message translates to:
  /// **'Font'**
  String get font;

  /// No description provided for @fontSystem.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get fontSystem;

  /// No description provided for @fontNdot.
  ///
  /// In en, this message translates to:
  /// **'Nothing (NDot)'**
  String get fontNdot;

  /// No description provided for @fontSerif.
  ///
  /// In en, this message translates to:
  /// **'Roboto Serif'**
  String get fontSerif;

  /// No description provided for @fontNoto.
  ///
  /// In en, this message translates to:
  /// **'Noto'**
  String get fontNoto;

  /// No description provided for @fontNotoInfo.
  ///
  /// In en, this message translates to:
  /// **'Some fonts don’t include every writing system. Download this pack so all languages display correctly.'**
  String get fontNotoInfo;

  /// No description provided for @fontNotoAlreadyDownloaded.
  ///
  /// In en, this message translates to:
  /// **'These fonts are already downloaded on this device.'**
  String get fontNotoAlreadyDownloaded;

  /// No description provided for @fontNotoDownload.
  ///
  /// In en, this message translates to:
  /// **'Multilingual fonts'**
  String get fontNotoDownload;

  /// No description provided for @fontNotoDownloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading…'**
  String get fontNotoDownloading;

  /// No description provided for @fontNotoReady.
  ///
  /// In en, this message translates to:
  /// **'Downloaded'**
  String get fontNotoReady;

  /// No description provided for @fontNotoDownloadFailed.
  ///
  /// In en, this message translates to:
  /// **'Font download failed. Check your connection and try again.'**
  String get fontNotoDownloadFailed;

  /// No description provided for @fontNotoUseAfterDownload.
  ///
  /// In en, this message translates to:
  /// **'Download multilingual fonts for full language support'**
  String get fontNotoUseAfterDownload;

  /// No description provided for @fontPickerTitle.
  ///
  /// In en, this message translates to:
  /// **'Font'**
  String get fontPickerTitle;

  /// No description provided for @fontPreviewSample.
  ///
  /// In en, this message translates to:
  /// **'Nothing Dialer'**
  String get fontPreviewSample;

  /// No description provided for @fontAppWide.
  ///
  /// In en, this message translates to:
  /// **'App font'**
  String get fontAppWide;

  /// No description provided for @fontApplyTo.
  ///
  /// In en, this message translates to:
  /// **'Apply to'**
  String get fontApplyTo;

  /// No description provided for @fontApplyEntireApp.
  ///
  /// In en, this message translates to:
  /// **'Entire app'**
  String get fontApplyEntireApp;

  /// No description provided for @fontApplyEntireAppSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Same font everywhere, including in-call'**
  String get fontApplyEntireAppSubtitle;

  /// No description provided for @fontApplyTitlesOnly.
  ///
  /// In en, this message translates to:
  /// **'Titles & headers'**
  String get fontApplyTitlesOnly;

  /// No description provided for @fontApplyTitlesOnlySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Large titles and section headers only'**
  String get fontApplyTitlesOnlySubtitle;

  /// No description provided for @fontApplyCustomize.
  ///
  /// In en, this message translates to:
  /// **'Customize'**
  String get fontApplyCustomize;

  /// No description provided for @fontApplyCustomizeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Pick font per screen and text type'**
  String get fontApplyCustomizeSubtitle;

  /// No description provided for @fontCustomizeSection.
  ///
  /// In en, this message translates to:
  /// **'Customize by screen'**
  String get fontCustomizeSection;

  /// No description provided for @fontCustomizeScreenHint.
  ///
  /// In en, this message translates to:
  /// **'Choose a font for each text style. Unchanged styles use the app font above.'**
  String get fontCustomizeScreenHint;

  /// No description provided for @fontResetScreen.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get fontResetScreen;

  /// No description provided for @fontUsesAppDefault.
  ///
  /// In en, this message translates to:
  /// **'Same as app font'**
  String get fontUsesAppDefault;

  /// No description provided for @fontCustomizeRolesCount.
  ///
  /// In en, this message translates to:
  /// **'{count} custom styles'**
  String fontCustomizeRolesCount(int count);

  /// No description provided for @fontCustomizeGroupCalls.
  ///
  /// In en, this message translates to:
  /// **'Calls & people'**
  String get fontCustomizeGroupCalls;

  /// No description provided for @fontCustomizeGroupDialer.
  ///
  /// In en, this message translates to:
  /// **'Dialer'**
  String get fontCustomizeGroupDialer;

  /// No description provided for @fontCustomizeGroupApp.
  ///
  /// In en, this message translates to:
  /// **'App & system'**
  String get fontCustomizeGroupApp;

  /// No description provided for @fontCustomizeEditScreens.
  ///
  /// In en, this message translates to:
  /// **'Edit per-screen fonts'**
  String get fontCustomizeEditScreens;

  /// No description provided for @fontCustomizeEditScreensSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap a screen, then adjust text styles'**
  String get fontCustomizeEditScreensSubtitle;

  /// No description provided for @fontCustomizeScreensCount.
  ///
  /// In en, this message translates to:
  /// **'{count} screens customized'**
  String fontCustomizeScreensCount(int count);

  /// No description provided for @fontRolePickerTitle.
  ///
  /// In en, this message translates to:
  /// **'Font for {role}'**
  String fontRolePickerTitle(String role);

  /// No description provided for @fontChipSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get fontChipSystem;

  /// No description provided for @fontChipNdot.
  ///
  /// In en, this message translates to:
  /// **'NDot'**
  String get fontChipNdot;

  /// No description provided for @fontChipSerif.
  ///
  /// In en, this message translates to:
  /// **'Serif'**
  String get fontChipSerif;

  /// No description provided for @fontChipNoto.
  ///
  /// In en, this message translates to:
  /// **'Noto'**
  String get fontChipNoto;

  /// No description provided for @fontRolePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Page title'**
  String get fontRolePageTitle;

  /// No description provided for @fontRoleSectionHeader.
  ///
  /// In en, this message translates to:
  /// **'Section header'**
  String get fontRoleSectionHeader;

  /// No description provided for @fontRolePrimary.
  ///
  /// In en, this message translates to:
  /// **'Primary text'**
  String get fontRolePrimary;

  /// No description provided for @fontRoleSecondary.
  ///
  /// In en, this message translates to:
  /// **'Secondary text'**
  String get fontRoleSecondary;

  /// No description provided for @fontRoleButton.
  ///
  /// In en, this message translates to:
  /// **'Buttons'**
  String get fontRoleButton;

  /// No description provided for @fontRoleDialKey.
  ///
  /// In en, this message translates to:
  /// **'Dialpad keys'**
  String get fontRoleDialKey;

  /// No description provided for @fontSurfaceRecents.
  ///
  /// In en, this message translates to:
  /// **'Recents'**
  String get fontSurfaceRecents;

  /// No description provided for @fontSurfaceContacts.
  ///
  /// In en, this message translates to:
  /// **'Contacts'**
  String get fontSurfaceContacts;

  /// No description provided for @fontSurfaceSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get fontSurfaceSettings;

  /// No description provided for @fontSurfaceDialpad.
  ///
  /// In en, this message translates to:
  /// **'Dialpad'**
  String get fontSurfaceDialpad;

  /// No description provided for @fontSurfaceShell.
  ///
  /// In en, this message translates to:
  /// **'Navigation'**
  String get fontSurfaceShell;

  /// No description provided for @fontSurfaceDefaultDialer.
  ///
  /// In en, this message translates to:
  /// **'Default dialer prompt'**
  String get fontSurfaceDefaultDialer;

  /// No description provided for @fontSurfaceFavourites.
  ///
  /// In en, this message translates to:
  /// **'Favourites'**
  String get fontSurfaceFavourites;

  /// No description provided for @fontSurfaceBlocked.
  ///
  /// In en, this message translates to:
  /// **'Blocked numbers'**
  String get fontSurfaceBlocked;

  /// No description provided for @fontSurfaceContactDetail.
  ///
  /// In en, this message translates to:
  /// **'Contact detail'**
  String get fontSurfaceContactDetail;

  /// No description provided for @fontSurfaceCallHistory.
  ///
  /// In en, this message translates to:
  /// **'Call history'**
  String get fontSurfaceCallHistory;

  /// No description provided for @fontSurfaceSheets.
  ///
  /// In en, this message translates to:
  /// **'Sheets & pickers'**
  String get fontSurfaceSheets;

  /// No description provided for @fontSurfaceInCall.
  ///
  /// In en, this message translates to:
  /// **'In-call screen'**
  String get fontSurfaceInCall;

  /// No description provided for @fontSubtitleEntireApp.
  ///
  /// In en, this message translates to:
  /// **'{font} — entire app'**
  String fontSubtitleEntireApp(String font);

  /// No description provided for @fontSubtitleTitlesOnly.
  ///
  /// In en, this message translates to:
  /// **'{font} — titles only'**
  String fontSubtitleTitlesOnly(String font);

  /// No description provided for @fontSubtitleCustomize.
  ///
  /// In en, this message translates to:
  /// **'Custom per screen'**
  String get fontSubtitleCustomize;

  /// No description provided for @background.
  ///
  /// In en, this message translates to:
  /// **'Background'**
  String get background;

  /// No description provided for @accent.
  ///
  /// In en, this message translates to:
  /// **'Accent'**
  String get accent;

  /// No description provided for @lightBackground.
  ///
  /// In en, this message translates to:
  /// **'Light background'**
  String get lightBackground;

  /// No description provided for @lightAccent.
  ///
  /// In en, this message translates to:
  /// **'Light accent'**
  String get lightAccent;

  /// No description provided for @darkBackground.
  ///
  /// In en, this message translates to:
  /// **'Dark background'**
  String get darkBackground;

  /// No description provided for @darkAccent.
  ///
  /// In en, this message translates to:
  /// **'Dark accent'**
  String get darkAccent;

  /// No description provided for @callBackground.
  ///
  /// In en, this message translates to:
  /// **'Call background'**
  String get callBackground;

  /// No description provided for @appIcon.
  ///
  /// In en, this message translates to:
  /// **'App icon'**
  String get appIcon;

  /// No description provided for @answerMethod.
  ///
  /// In en, this message translates to:
  /// **'Answer method'**
  String get answerMethod;

  /// No description provided for @answerSlide.
  ///
  /// In en, this message translates to:
  /// **'Slide to answer'**
  String get answerSlide;

  /// No description provided for @answerSlideSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Swipe left/right on the bar, like Google Phone'**
  String get answerSlideSubtitle;

  /// No description provided for @answerButton.
  ///
  /// In en, this message translates to:
  /// **'Button tap'**
  String get answerButton;

  /// No description provided for @answerButtonSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap answer or decline buttons'**
  String get answerButtonSubtitle;

  /// No description provided for @answerHuawei.
  ///
  /// In en, this message translates to:
  /// **'Huawei style'**
  String get answerHuawei;

  /// No description provided for @answerHuaweiSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Drag the circle to the green phone to answer'**
  String get answerHuaweiSubtitle;

  /// No description provided for @answerHuaweiTileSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Huawei — drag to green / red'**
  String get answerHuaweiTileSubtitle;

  /// No description provided for @calling.
  ///
  /// In en, this message translates to:
  /// **'Calling'**
  String get calling;

  /// No description provided for @defaultSim.
  ///
  /// In en, this message translates to:
  /// **'Default SIM'**
  String get defaultSim;

  /// No description provided for @simIconColor.
  ///
  /// In en, this message translates to:
  /// **'SIM icon colors'**
  String get simIconColor;

  /// No description provided for @simIconColorFor.
  ///
  /// In en, this message translates to:
  /// **'{label} icon color'**
  String simIconColorFor(String label);

  /// No description provided for @simIconColorSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Badge on call history'**
  String get simIconColorSubtitle;

  /// No description provided for @simIconColorDefault.
  ///
  /// In en, this message translates to:
  /// **'Theme default'**
  String get simIconColorDefault;

  /// No description provided for @simIconStyleOutline.
  ///
  /// In en, this message translates to:
  /// **'Outline'**
  String get simIconStyleOutline;

  /// No description provided for @simIconStyleFill.
  ///
  /// In en, this message translates to:
  /// **'Fill'**
  String get simIconStyleFill;

  /// No description provided for @simIconStyleSection.
  ///
  /// In en, this message translates to:
  /// **'Style'**
  String get simIconStyleSection;

  /// No description provided for @simIconBadgeColor.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get simIconBadgeColor;

  /// No description provided for @customSimIconColorPicker.
  ///
  /// In en, this message translates to:
  /// **'Custom SIM icon color'**
  String get customSimIconColorPicker;

  /// No description provided for @askEveryTime.
  ///
  /// In en, this message translates to:
  /// **'Ask every time'**
  String get askEveryTime;

  /// No description provided for @askEveryTimeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show SIM picker before each call'**
  String get askEveryTimeSubtitle;

  /// No description provided for @simSlot.
  ///
  /// In en, this message translates to:
  /// **'SIM {slot}'**
  String simSlot(int slot);

  /// No description provided for @noSimCardsFound.
  ///
  /// In en, this message translates to:
  /// **'No SIM cards found'**
  String get noSimCardsFound;

  /// No description provided for @couldNotLoadSims.
  ///
  /// In en, this message translates to:
  /// **'Could not load SIMs: {error}'**
  String couldNotLoadSims(String error);

  /// No description provided for @allFavourites.
  ///
  /// In en, this message translates to:
  /// **'All favourites'**
  String get allFavourites;

  /// No description provided for @allFavouritesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Reorder, remove, and add from contacts'**
  String get allFavouritesSubtitle;

  /// No description provided for @blockedNumbers.
  ///
  /// In en, this message translates to:
  /// **'Blocked numbers'**
  String get blockedNumbers;

  /// No description provided for @blockedNumbersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'View and unblock numbers'**
  String get blockedNumbersSubtitle;

  /// No description provided for @soundsAndVibration.
  ///
  /// In en, this message translates to:
  /// **'Sounds and vibration'**
  String get soundsAndVibration;

  /// No description provided for @soundsAndVibrationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Ringtone, vibration, dial pad tones'**
  String get soundsAndVibrationSubtitle;

  /// No description provided for @couldNotOpenSettings.
  ///
  /// In en, this message translates to:
  /// **'Could not open settings: {error}'**
  String couldNotOpenSettings(String error);

  /// No description provided for @frequentlyContacted.
  ///
  /// In en, this message translates to:
  /// **'Frequently Contacted'**
  String get frequentlyContacted;

  /// No description provided for @numberOfRecords.
  ///
  /// In en, this message translates to:
  /// **'Number of records'**
  String get numberOfRecords;

  /// No description provided for @timePeriod.
  ///
  /// In en, this message translates to:
  /// **'Time period'**
  String get timePeriod;

  /// No description provided for @periodLast24Hours.
  ///
  /// In en, this message translates to:
  /// **'Last 24 hours'**
  String get periodLast24Hours;

  /// No description provided for @periodLast24HoursSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Calls from the past day'**
  String get periodLast24HoursSubtitle;

  /// No description provided for @periodLast7Days.
  ///
  /// In en, this message translates to:
  /// **'Last 7 days'**
  String get periodLast7Days;

  /// No description provided for @periodLast7DaysSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Calls from the past week'**
  String get periodLast7DaysSubtitle;

  /// No description provided for @periodLast30Days.
  ///
  /// In en, this message translates to:
  /// **'Last 30 days'**
  String get periodLast30Days;

  /// No description provided for @periodLast30DaysSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Calls from the past month'**
  String get periodLast30DaysSubtitle;

  /// No description provided for @periodLast12Months.
  ///
  /// In en, this message translates to:
  /// **'Last 12 months'**
  String get periodLast12Months;

  /// No description provided for @periodLast12MonthsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Calls from the past year'**
  String get periodLast12MonthsSubtitle;

  /// No description provided for @periodAllTime.
  ///
  /// In en, this message translates to:
  /// **'All time'**
  String get periodAllTime;

  /// No description provided for @periodAllTimeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Entire call history'**
  String get periodAllTimeSubtitle;

  /// No description provided for @frequentMaxOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get frequentMaxOff;

  /// No description provided for @frequentMaxCount.
  ///
  /// In en, this message translates to:
  /// **'{count} contacts'**
  String frequentMaxCount(int count);

  /// No description provided for @torchBlink.
  ///
  /// In en, this message translates to:
  /// **'Torch Blink'**
  String get torchBlink;

  /// No description provided for @torchIncomingCall.
  ///
  /// In en, this message translates to:
  /// **'Incoming call torch'**
  String get torchIncomingCall;

  /// No description provided for @torchOutgoingCall.
  ///
  /// In en, this message translates to:
  /// **'Outgoing call torch'**
  String get torchOutgoingCall;

  /// No description provided for @torchOngoingCall.
  ///
  /// In en, this message translates to:
  /// **'Ongoing call torch'**
  String get torchOngoingCall;

  /// No description provided for @torchIncomingInterval.
  ///
  /// In en, this message translates to:
  /// **'Incoming blink interval'**
  String get torchIncomingInterval;

  /// No description provided for @torchOutgoingInterval.
  ///
  /// In en, this message translates to:
  /// **'Outgoing blink interval'**
  String get torchOutgoingInterval;

  /// No description provided for @torchOngoingInterval.
  ///
  /// In en, this message translates to:
  /// **'Ongoing blink interval'**
  String get torchOngoingInterval;

  /// No description provided for @torchOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get torchOff;

  /// No description provided for @torchOffIncomingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'No torch while ringing'**
  String get torchOffIncomingSubtitle;

  /// No description provided for @torchOffOutgoingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'No torch while dialing'**
  String get torchOffOutgoingSubtitle;

  /// No description provided for @torchOffOngoingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'No torch during active call'**
  String get torchOffOngoingSubtitle;

  /// No description provided for @torchFixedInterval.
  ///
  /// In en, this message translates to:
  /// **'Fixed interval'**
  String get torchFixedInterval;

  /// No description provided for @torchFixedIntervalSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Blink at a set speed'**
  String get torchFixedIntervalSubtitle;

  /// No description provided for @torchIntervalSeconds.
  ///
  /// In en, this message translates to:
  /// **'{seconds} s'**
  String torchIntervalSeconds(String seconds);

  /// No description provided for @torchIntervalBlink.
  ///
  /// In en, this message translates to:
  /// **'{seconds} blink'**
  String torchIntervalBlink(String seconds);

  /// No description provided for @flashlightUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Flashlight not available on this device'**
  String get flashlightUnavailable;

  /// No description provided for @glyphLights.
  ///
  /// In en, this message translates to:
  /// **'Glyph Lights'**
  String get glyphLights;

  /// No description provided for @glyphCallingAnimation.
  ///
  /// In en, this message translates to:
  /// **'Glyph calling animation'**
  String get glyphCallingAnimation;

  /// No description provided for @glyphOngoingAnimation.
  ///
  /// In en, this message translates to:
  /// **'Glyph ongoing call animation'**
  String get glyphOngoingAnimation;

  /// No description provided for @glyphNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get glyphNone;

  /// No description provided for @glyphNoneOutgoingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Disable Glyph lights for outgoing calls'**
  String get glyphNoneOutgoingSubtitle;

  /// No description provided for @glyphNoneInCallSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Disable Glyph lights while actively on call'**
  String get glyphNoneInCallSubtitle;

  /// No description provided for @glyphBreathProgress.
  ///
  /// In en, this message translates to:
  /// **'Breath & Progress'**
  String get glyphBreathProgress;

  /// No description provided for @glyphBreathProgressSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Lights breathe while line fills up over 65s'**
  String get glyphBreathProgressSubtitle;

  /// No description provided for @glyphAccumulate.
  ///
  /// In en, this message translates to:
  /// **'Accumulate'**
  String get glyphAccumulate;

  /// No description provided for @glyphAccumulateSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Accumulating animation on lights C1-C4'**
  String get glyphAccumulateSubtitle;

  /// No description provided for @glyphSingle.
  ///
  /// In en, this message translates to:
  /// **'Single'**
  String get glyphSingle;

  /// No description provided for @glyphSingleSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Single light moving across C1-C4'**
  String get glyphSingleSubtitle;

  /// No description provided for @glyphBreath.
  ///
  /// In en, this message translates to:
  /// **'Breath'**
  String get glyphBreath;

  /// No description provided for @glyphBreathSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Pick lights and speed'**
  String get glyphBreathSubtitle;

  /// No description provided for @glyphSteady.
  ///
  /// In en, this message translates to:
  /// **'Steady'**
  String get glyphSteady;

  /// No description provided for @glyphSteadySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Selected lights stay on'**
  String get glyphSteadySubtitle;

  /// No description provided for @breathSettings.
  ///
  /// In en, this message translates to:
  /// **'Breath Settings'**
  String get breathSettings;

  /// No description provided for @activeLights.
  ///
  /// In en, this message translates to:
  /// **'Active Lights'**
  String get activeLights;

  /// No description provided for @lightsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} lights'**
  String lightsCount(int count);

  /// No description provided for @speedSettings.
  ///
  /// In en, this message translates to:
  /// **'Speed Settings'**
  String get speedSettings;

  /// No description provided for @speedSettingsDelay.
  ///
  /// In en, this message translates to:
  /// **'{ms}ms delay'**
  String speedSettingsDelay(int ms);

  /// No description provided for @durationAndSpeed.
  ///
  /// In en, this message translates to:
  /// **'Duration & Speed'**
  String get durationAndSpeed;

  /// No description provided for @durationSpeedSummary.
  ///
  /// In en, this message translates to:
  /// **'{duration}s duration, {interval}ms interval'**
  String durationSpeedSummary(int duration, int interval);

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @block.
  ///
  /// In en, this message translates to:
  /// **'Block'**
  String get block;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @recents.
  ///
  /// In en, this message translates to:
  /// **'Recents'**
  String get recents;

  /// No description provided for @contacts.
  ///
  /// In en, this message translates to:
  /// **'Contacts'**
  String get contacts;

  /// No description provided for @hideFavouritesOnRecents.
  ///
  /// In en, this message translates to:
  /// **'Hide favourites on Recents'**
  String get hideFavouritesOnRecents;

  /// No description provided for @showFavouritesOnRecents.
  ///
  /// In en, this message translates to:
  /// **'Show favourites on Recents'**
  String get showFavouritesOnRecents;

  /// No description provided for @ongoingCall.
  ///
  /// In en, this message translates to:
  /// **'Ongoing call'**
  String get ongoingCall;

  /// No description provided for @setAsDefaultTitle.
  ///
  /// In en, this message translates to:
  /// **'SET AS\nDEFAULT'**
  String get setAsDefaultTitle;

  /// No description provided for @setAsDefaultBody.
  ///
  /// In en, this message translates to:
  /// **'To use Nothing Dialer, it must be set as your default phone app. This allows you to manage calls, view history, and use Glyph animations.'**
  String get setAsDefaultBody;

  /// No description provided for @setAsDefaultButton.
  ///
  /// In en, this message translates to:
  /// **'SET AS DEFAULT'**
  String get setAsDefaultButton;

  /// No description provided for @nothingDialerBrand.
  ///
  /// In en, this message translates to:
  /// **'NOTHING DIALER 1'**
  String get nothingDialerBrand;

  /// No description provided for @favourites.
  ///
  /// In en, this message translates to:
  /// **'Favourites'**
  String get favourites;

  /// No description provided for @addFavourite.
  ///
  /// In en, this message translates to:
  /// **'Add favourite'**
  String get addFavourite;

  /// No description provided for @favouritesDrawerHint.
  ///
  /// In en, this message translates to:
  /// **'Use the menu to add contacts. Tap outside the drawer or swipe it closed. Star a contact from their details, or long-press a call in Recents.'**
  String get favouritesDrawerHint;

  /// No description provided for @menu.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menu;

  /// No description provided for @noFavouritesYet.
  ///
  /// In en, this message translates to:
  /// **'No favourites yet.\nOpen the menu to add one, or star a contact.'**
  String get noFavouritesYet;

  /// No description provided for @contactsPermissionNeeded.
  ///
  /// In en, this message translates to:
  /// **'Contacts permission needed'**
  String get contactsPermissionNeeded;

  /// No description provided for @chooseContact.
  ///
  /// In en, this message translates to:
  /// **'Choose contact'**
  String get chooseContact;

  /// No description provided for @noPhone.
  ///
  /// In en, this message translates to:
  /// **'No phone'**
  String get noPhone;

  /// No description provided for @pickNumber.
  ///
  /// In en, this message translates to:
  /// **'Pick number'**
  String get pickNumber;

  /// No description provided for @contactHasNoPhone.
  ///
  /// In en, this message translates to:
  /// **'This contact has no phone number'**
  String get contactHasNoPhone;

  /// No description provided for @blockNumber.
  ///
  /// In en, this message translates to:
  /// **'Block number'**
  String get blockNumber;

  /// No description provided for @enterPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter phone number'**
  String get enterPhoneNumber;

  /// No description provided for @unblockedDisplay.
  ///
  /// In en, this message translates to:
  /// **'Unblocked {display}'**
  String unblockedDisplay(String display);

  /// No description provided for @couldNotUnblockNumber.
  ///
  /// In en, this message translates to:
  /// **'Could not unblock number'**
  String get couldNotUnblockNumber;

  /// No description provided for @blockedSummary.
  ///
  /// In en, this message translates to:
  /// **'{blocked} blocked • {matched} matched'**
  String blockedSummary(int blocked, int matched);

  /// No description provided for @contactsPermissionMissing.
  ///
  /// In en, this message translates to:
  /// **'Contacts permission missing. Tap to fix.'**
  String get contactsPermissionMissing;

  /// No description provided for @noBlockedNumbers.
  ///
  /// In en, this message translates to:
  /// **'No blocked numbers'**
  String get noBlockedNumbers;

  /// No description provided for @unknownContact.
  ///
  /// In en, this message translates to:
  /// **'Unknown contact'**
  String get unknownContact;

  /// No description provided for @unblock.
  ///
  /// In en, this message translates to:
  /// **'Unblock'**
  String get unblock;

  /// No description provided for @permissionNeeded.
  ///
  /// In en, this message translates to:
  /// **'Permission needed'**
  String get permissionNeeded;

  /// No description provided for @grantPhonePermission.
  ///
  /// In en, this message translates to:
  /// **'Grant phone permission to see your call history.'**
  String get grantPhonePermission;

  /// No description provided for @grantContactsPermission.
  ///
  /// In en, this message translates to:
  /// **'Grant contacts permission to see your address book.'**
  String get grantContactsPermission;

  /// No description provided for @openSettings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get openSettings;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgain;

  /// No description provided for @couldNotLoadContacts.
  ///
  /// In en, this message translates to:
  /// **'Could not load contacts'**
  String get couldNotLoadContacts;

  /// No description provided for @contactsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong reading your address book.'**
  String get contactsLoadError;

  /// No description provided for @noContactsFound.
  ///
  /// In en, this message translates to:
  /// **'No contacts found'**
  String get noContactsFound;

  /// No description provided for @contactsEmptySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Contacts from your device will appear here.'**
  String get contactsEmptySubtitle;

  /// No description provided for @searchContacts.
  ///
  /// In en, this message translates to:
  /// **'Search contacts…'**
  String get searchContacts;

  /// No description provided for @searchRecentCalls.
  ///
  /// In en, this message translates to:
  /// **'Search recent calls'**
  String get searchRecentCalls;

  /// No description provided for @fromContacts.
  ///
  /// In en, this message translates to:
  /// **'From contacts'**
  String get fromContacts;

  /// No description provided for @recentsSearchSection.
  ///
  /// In en, this message translates to:
  /// **'Recents search'**
  String get recentsSearchSection;

  /// No description provided for @recentsSearchShowContacts.
  ///
  /// In en, this message translates to:
  /// **'Show contacts in search'**
  String get recentsSearchShowContacts;

  /// No description provided for @recentsSearchShowContactsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'While searching Recents, also show matching people from your address book below call history results.'**
  String get recentsSearchShowContactsSubtitle;

  /// No description provided for @voiceSearch.
  ///
  /// In en, this message translates to:
  /// **'Voice search'**
  String get voiceSearch;

  /// No description provided for @createNewContact.
  ///
  /// In en, this message translates to:
  /// **'Create new contact'**
  String get createNewContact;

  /// No description provided for @callError.
  ///
  /// In en, this message translates to:
  /// **'Call error: {error}'**
  String callError(String error);

  /// No description provided for @noRecentCalls.
  ///
  /// In en, this message translates to:
  /// **'No recent calls'**
  String get noRecentCalls;

  /// No description provided for @callHistoryEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your call history will appear here.'**
  String get callHistoryEmpty;

  /// No description provided for @loadMore.
  ///
  /// In en, this message translates to:
  /// **'Load more'**
  String get loadMore;

  /// No description provided for @frequentlyContactedHeader.
  ///
  /// In en, this message translates to:
  /// **'Frequently contacted'**
  String get frequentlyContactedHeader;

  /// No description provided for @recentHistory.
  ///
  /// In en, this message translates to:
  /// **'Recent history'**
  String get recentHistory;

  /// No description provided for @noFavouritesRecentsHint.
  ///
  /// In en, this message translates to:
  /// **'No favourites yet. Star a contact, long-press a call, or use the Favourites tab.'**
  String get noFavouritesRecentsHint;

  /// No description provided for @copyNumber.
  ///
  /// In en, this message translates to:
  /// **'Copy number'**
  String get copyNumber;

  /// No description provided for @editNumberBeforeCall.
  ///
  /// In en, this message translates to:
  /// **'Edit number before call'**
  String get editNumberBeforeCall;

  /// No description provided for @removeFromFavourites.
  ///
  /// In en, this message translates to:
  /// **'Remove from favourites'**
  String get removeFromFavourites;

  /// No description provided for @addToFavourites.
  ///
  /// In en, this message translates to:
  /// **'Add to favourites'**
  String get addToFavourites;

  /// No description provided for @blockNumberQuestion.
  ///
  /// In en, this message translates to:
  /// **'Block number?'**
  String get blockNumberQuestion;

  /// No description provided for @blockNumberConfirm.
  ///
  /// In en, this message translates to:
  /// **'You will no longer receive calls or texts from {number}.'**
  String blockNumberConfirm(String number);

  /// No description provided for @blocked.
  ///
  /// In en, this message translates to:
  /// **'Blocked'**
  String get blocked;

  /// No description provided for @couldNotBlock.
  ///
  /// In en, this message translates to:
  /// **'Could not block'**
  String get couldNotBlock;

  /// No description provided for @contactNotOnDevice.
  ///
  /// In en, this message translates to:
  /// **'Contact not saved on this device'**
  String get contactNotOnDevice;

  /// No description provided for @unblocked.
  ///
  /// In en, this message translates to:
  /// **'Unblocked'**
  String get unblocked;

  /// No description provided for @numberCopied.
  ///
  /// In en, this message translates to:
  /// **'Number copied'**
  String get numberCopied;

  /// No description provided for @showLess.
  ///
  /// In en, this message translates to:
  /// **'Show less'**
  String get showLess;

  /// No description provided for @showAllTimes.
  ///
  /// In en, this message translates to:
  /// **'Show all times'**
  String get showAllTimes;

  /// No description provided for @mostRecent.
  ///
  /// In en, this message translates to:
  /// **'Most recent · {time}'**
  String mostRecent(String time);

  /// No description provided for @videoCall.
  ///
  /// In en, this message translates to:
  /// **'Video call'**
  String get videoCall;

  /// No description provided for @couldNotPlaceVideoCall.
  ///
  /// In en, this message translates to:
  /// **'Could not place video call'**
  String get couldNotPlaceVideoCall;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @couldNotOpenMessaging.
  ///
  /// In en, this message translates to:
  /// **'Could not open messaging app'**
  String get couldNotOpenMessaging;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @viewContact.
  ///
  /// In en, this message translates to:
  /// **'View contact'**
  String get viewContact;

  /// No description provided for @addToContact.
  ///
  /// In en, this message translates to:
  /// **'Add to contact'**
  String get addToContact;

  /// No description provided for @callTypeMissed.
  ///
  /// In en, this message translates to:
  /// **'Missed'**
  String get callTypeMissed;

  /// No description provided for @callTypeRejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get callTypeRejected;

  /// No description provided for @callTypeIncoming.
  ///
  /// In en, this message translates to:
  /// **'Incoming'**
  String get callTypeIncoming;

  /// No description provided for @callTypeOutgoing.
  ///
  /// In en, this message translates to:
  /// **'Outgoing'**
  String get callTypeOutgoing;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @justNow.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get justNow;

  /// No description provided for @minutesAgo.
  ///
  /// In en, this message translates to:
  /// **'{count} min ago'**
  String minutesAgo(int count);

  /// No description provided for @hoursAgo.
  ///
  /// In en, this message translates to:
  /// **'{count} hr ago'**
  String hoursAgo(int count);

  /// No description provided for @filterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get filterAll;

  /// No description provided for @filterMissed.
  ///
  /// In en, this message translates to:
  /// **'Missed'**
  String get filterMissed;

  /// No description provided for @filterContacts.
  ///
  /// In en, this message translates to:
  /// **'Contacts'**
  String get filterContacts;

  /// No description provided for @filterNonContacts.
  ///
  /// In en, this message translates to:
  /// **'Non-contacts'**
  String get filterNonContacts;

  /// No description provided for @iconUpdated.
  ///
  /// In en, this message translates to:
  /// **'Icon updated. Your home screen may take a moment to refresh.'**
  String get iconUpdated;

  /// No description provided for @iconSavedRelease.
  ///
  /// In en, this message translates to:
  /// **'Choice saved. The home screen icon updates in release builds.'**
  String get iconSavedRelease;

  /// No description provided for @couldNotChangeIcon.
  ///
  /// In en, this message translates to:
  /// **'Could not change icon: {error}'**
  String couldNotChangeIcon(String error);

  /// No description provided for @launcherClassicBlack.
  ///
  /// In en, this message translates to:
  /// **'Classic (black)'**
  String get launcherClassicBlack;

  /// No description provided for @launcherLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get launcherLight;

  /// No description provided for @launcherNothingRed.
  ///
  /// In en, this message translates to:
  /// **'Nothing red'**
  String get launcherNothingRed;

  /// No description provided for @launcherDarkGrey.
  ///
  /// In en, this message translates to:
  /// **'Dark grey'**
  String get launcherDarkGrey;

  /// No description provided for @launcherCream.
  ///
  /// In en, this message translates to:
  /// **'Cream'**
  String get launcherCream;

  /// No description provided for @launcherRetroPhone.
  ///
  /// In en, this message translates to:
  /// **'Retro phone'**
  String get launcherRetroPhone;

  /// No description provided for @launcherRetroPhoneLight.
  ///
  /// In en, this message translates to:
  /// **'Retro phone (light)'**
  String get launcherRetroPhoneLight;

  /// No description provided for @voiceSearchUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Voice search is not available on this device.'**
  String get voiceSearchUnavailable;

  /// No description provided for @voiceSearchFailed.
  ///
  /// In en, this message translates to:
  /// **'Voice search failed: {error}'**
  String voiceSearchFailed(String error);

  /// No description provided for @customColor.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get customColor;

  /// No description provided for @selectColor.
  ///
  /// In en, this message translates to:
  /// **'Select color'**
  String get selectColor;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @simPickerTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose SIM'**
  String get simPickerTitle;

  /// No description provided for @simChooseForCall.
  ///
  /// In en, this message translates to:
  /// **'Choose SIM for this call'**
  String get simChooseForCall;

  /// No description provided for @defaultSimAsk.
  ///
  /// In en, this message translates to:
  /// **'Ask every time'**
  String get defaultSimAsk;

  /// No description provided for @defaultSimFixed.
  ///
  /// In en, this message translates to:
  /// **'SIM {slot}'**
  String defaultSimFixed(int slot);

  /// No description provided for @contactDetails.
  ///
  /// In en, this message translates to:
  /// **'Contact details'**
  String get contactDetails;

  /// No description provided for @call.
  ///
  /// In en, this message translates to:
  /// **'Call'**
  String get call;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @favourite.
  ///
  /// In en, this message translates to:
  /// **'Favourite'**
  String get favourite;

  /// No description provided for @unfavourite.
  ///
  /// In en, this message translates to:
  /// **'Unfavourite'**
  String get unfavourite;

  /// No description provided for @blockContact.
  ///
  /// In en, this message translates to:
  /// **'Block contact'**
  String get blockContact;

  /// No description provided for @unblockContact.
  ///
  /// In en, this message translates to:
  /// **'Unblock contact'**
  String get unblockContact;

  /// No description provided for @deleteContact.
  ///
  /// In en, this message translates to:
  /// **'Delete contact'**
  String get deleteContact;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @ringtone.
  ///
  /// In en, this message translates to:
  /// **'Ringtone'**
  String get ringtone;

  /// No description provided for @defaultRingtone.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultRingtone;

  /// No description provided for @simForContact.
  ///
  /// In en, this message translates to:
  /// **'SIM for this contact'**
  String get simForContact;

  /// No description provided for @callHistoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Call history'**
  String get callHistoryTitle;

  /// No description provided for @noCallsWithNumber.
  ///
  /// In en, this message translates to:
  /// **'No calls with this number'**
  String get noCallsWithNumber;

  /// No description provided for @durationMinutesSeconds.
  ///
  /// In en, this message translates to:
  /// **'{minutes}m {seconds}s'**
  String durationMinutesSeconds(int minutes, int seconds);

  /// No description provided for @durationSeconds.
  ///
  /// In en, this message translates to:
  /// **'{seconds}s'**
  String durationSeconds(int seconds);

  /// No description provided for @glyphAnimationStyle.
  ///
  /// In en, this message translates to:
  /// **'Glyph animation'**
  String get glyphAnimationStyle;

  /// No description provided for @inCallGlyphAnimationStyle.
  ///
  /// In en, this message translates to:
  /// **'In-call Glyph animation'**
  String get inCallGlyphAnimationStyle;

  /// No description provided for @recordsOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get recordsOff;

  /// No description provided for @recordsCount.
  ///
  /// In en, this message translates to:
  /// **'{count}'**
  String recordsCount(int count);

  /// No description provided for @pickDefaultSim.
  ///
  /// In en, this message translates to:
  /// **'Default SIM'**
  String get pickDefaultSim;

  /// No description provided for @nothingPhoneOnly.
  ///
  /// In en, this message translates to:
  /// **'Nothing Phone only'**
  String get nothingPhoneOnly;

  /// No description provided for @nothingPhoneOnlySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Glyph features require a Nothing Phone'**
  String get nothingPhoneOnlySubtitle;

  /// No description provided for @custom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get custom;

  /// No description provided for @presetColorHex.
  ///
  /// In en, this message translates to:
  /// **'Preset · {hex}'**
  String presetColorHex(String hex);

  /// No description provided for @customColorHex.
  ///
  /// In en, this message translates to:
  /// **'Custom · {hex}'**
  String customColorHex(String hex);

  /// No description provided for @oneContact.
  ///
  /// In en, this message translates to:
  /// **'1 contact'**
  String get oneContact;

  /// No description provided for @upToContacts.
  ///
  /// In en, this message translates to:
  /// **'Up to {count} contacts'**
  String upToContacts(int count);

  /// No description provided for @answerButtonTapSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Button tap to answer'**
  String get answerButtonTapSubtitle;

  /// No description provided for @filterCalls.
  ///
  /// In en, this message translates to:
  /// **'Filter calls'**
  String get filterCalls;

  /// No description provided for @filterTooltip.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filterTooltip;

  /// No description provided for @settingsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTooltip;

  /// No description provided for @filterAllSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Entire call log'**
  String get filterAllSubtitle;

  /// No description provided for @filterMissedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Missed and rejected'**
  String get filterMissedSubtitle;

  /// No description provided for @filterContactsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Calls matched to a saved contact'**
  String get filterContactsSubtitle;

  /// No description provided for @filterNonContactsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Numbers not in your address book'**
  String get filterNonContactsSubtitle;

  /// No description provided for @ongoingCallWithDetail.
  ///
  /// In en, this message translates to:
  /// **'Ongoing call: {detail}'**
  String ongoingCallWithDetail(String detail);

  /// No description provided for @defaultSimForCalls.
  ///
  /// In en, this message translates to:
  /// **'Default SIM for calls'**
  String get defaultSimForCalls;

  /// No description provided for @blinkInterval.
  ///
  /// In en, this message translates to:
  /// **'Blink interval'**
  String get blinkInterval;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @frequentlyContactedInfoBody.
  ///
  /// In en, this message translates to:
  /// **'Shows your most-called phone numbers at the top of the Recents tab, based on how many incoming, outgoing, missed, or rejected calls you had with each number in the time period you choose.\n\nNumber of records: set to 0 to turn this off. Use 1–20 to show that many top contacts.\n\nTime period applies only when at least one contact is shown.'**
  String get frequentlyContactedInfoBody;

  /// No description provided for @breathSettingsSpeedSummary.
  ///
  /// In en, this message translates to:
  /// **'{count} lights, {ms}ms speed'**
  String breathSettingsSpeedSummary(int count, int ms);

  /// No description provided for @deleteContactQuestion.
  ///
  /// In en, this message translates to:
  /// **'Delete contact?'**
  String get deleteContactQuestion;

  /// No description provided for @deleteContactBody.
  ///
  /// In en, this message translates to:
  /// **'This contact will be permanently deleted from your device.'**
  String get deleteContactBody;

  /// No description provided for @blockContactQuestion.
  ///
  /// In en, this message translates to:
  /// **'Block contact?'**
  String get blockContactQuestion;

  /// No description provided for @unblockContactQuestion.
  ///
  /// In en, this message translates to:
  /// **'Unblock contact?'**
  String get unblockContactQuestion;

  /// No description provided for @blockContactBody.
  ///
  /// In en, this message translates to:
  /// **'You will no longer receive calls or texts from this contact.'**
  String get blockContactBody;

  /// No description provided for @unblockContactBody.
  ///
  /// In en, this message translates to:
  /// **'You will start receiving calls and texts from this contact.'**
  String get unblockContactBody;

  /// No description provided for @contactBlocked.
  ///
  /// In en, this message translates to:
  /// **'Contact blocked'**
  String get contactBlocked;

  /// No description provided for @contactUnblocked.
  ///
  /// In en, this message translates to:
  /// **'Contact unblocked'**
  String get contactUnblocked;

  /// No description provided for @noPhoneNumbersToBlock.
  ///
  /// In en, this message translates to:
  /// **'No phone numbers to block'**
  String get noPhoneNumbersToBlock;

  /// No description provided for @simSameAsSystem.
  ///
  /// In en, this message translates to:
  /// **'Same as system'**
  String get simSameAsSystem;

  /// No description provided for @simSameAsSystemSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Follows Default SIM in Settings'**
  String get simSameAsSystemSubtitle;

  /// No description provided for @simAskEveryTimeForContact.
  ///
  /// In en, this message translates to:
  /// **'Always show SIM picker for this contact'**
  String get simAskEveryTimeForContact;

  /// No description provided for @ringtoneSetForContact.
  ///
  /// In en, this message translates to:
  /// **'Ringtone set for this contact'**
  String get ringtoneSetForContact;

  /// No description provided for @ringtoneClearedForContact.
  ///
  /// In en, this message translates to:
  /// **'Contact ringtone reset to default'**
  String get ringtoneClearedForContact;

  /// No description provided for @ringtoneSilent.
  ///
  /// In en, this message translates to:
  /// **'Silent'**
  String get ringtoneSilent;

  /// No description provided for @failedPickRingtone.
  ///
  /// In en, this message translates to:
  /// **'Failed to pick ringtone: {error}'**
  String failedPickRingtone(String error);

  /// No description provided for @failedSetRingtone.
  ///
  /// In en, this message translates to:
  /// **'Failed to set ringtone: {error}'**
  String failedSetRingtone(String error);

  /// No description provided for @genericError.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String genericError(String error);

  /// No description provided for @noCallHistoryFound.
  ///
  /// In en, this message translates to:
  /// **'No call history found'**
  String get noCallHistoryFound;

  /// No description provided for @speedDialVoicemail.
  ///
  /// In en, this message translates to:
  /// **'Speed dial: Voicemail'**
  String get speedDialVoicemail;

  /// No description provided for @shareContactSubject.
  ///
  /// In en, this message translates to:
  /// **'Contact: {name}'**
  String shareContactSubject(String name);

  /// No description provided for @contactInfo.
  ///
  /// In en, this message translates to:
  /// **'Contact info'**
  String get contactInfo;

  /// No description provided for @dontAskAgainSim.
  ///
  /// In en, this message translates to:
  /// **'Don\'t ask again'**
  String get dontAskAgainSim;

  /// No description provided for @simDontAskAgainSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Use this SIM as default (change in Settings)'**
  String get simDontAskAgainSubtitle;

  /// No description provided for @addContact.
  ///
  /// In en, this message translates to:
  /// **'Add contact'**
  String get addContact;

  /// No description provided for @createContact.
  ///
  /// In en, this message translates to:
  /// **'Create contact'**
  String get createContact;

  /// No description provided for @paste.
  ///
  /// In en, this message translates to:
  /// **'Paste'**
  String get paste;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @returnToCall.
  ///
  /// In en, this message translates to:
  /// **'Return to call'**
  String get returnToCall;

  /// No description provided for @numberOfRecordsTitle.
  ///
  /// In en, this message translates to:
  /// **'Number of records'**
  String get numberOfRecordsTitle;

  /// No description provided for @recordsPickerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'How many frequently contacted entries to show (0 = off)'**
  String get recordsPickerSubtitle;

  /// No description provided for @torchInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'Torch blink'**
  String get torchInfoTitle;

  /// No description provided for @torchInfoBody.
  ///
  /// In en, this message translates to:
  /// **'Blinks the camera flash during incoming, outgoing, or ongoing calls. Independent of Glyph lights.'**
  String get torchInfoBody;

  /// No description provided for @glyphMapTitle.
  ///
  /// In en, this message translates to:
  /// **'Glyph layout'**
  String get glyphMapTitle;

  /// No description provided for @glyphMapBody.
  ///
  /// In en, this message translates to:
  /// **'Nothing Phone 1 Glyph LED zones. Outgoing and in-call animations use these channels.'**
  String get glyphMapBody;

  /// No description provided for @answerMethodTitle.
  ///
  /// In en, this message translates to:
  /// **'Answer method'**
  String get answerMethodTitle;

  /// No description provided for @glyphOutgoingCallStyleTitle.
  ///
  /// In en, this message translates to:
  /// **'Outgoing call style'**
  String get glyphOutgoingCallStyleTitle;

  /// No description provided for @glyphInCallAnimationTitle.
  ///
  /// In en, this message translates to:
  /// **'Glyph in-call animation'**
  String get glyphInCallAnimationTitle;

  /// No description provided for @themePickerTitle.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get themePickerTitle;

  /// No description provided for @torchIncomingTitle.
  ///
  /// In en, this message translates to:
  /// **'Incoming call torch'**
  String get torchIncomingTitle;

  /// No description provided for @torchOutgoingTitle.
  ///
  /// In en, this message translates to:
  /// **'Outgoing call torch'**
  String get torchOutgoingTitle;

  /// No description provided for @torchOngoingTitle.
  ///
  /// In en, this message translates to:
  /// **'Ongoing call torch'**
  String get torchOngoingTitle;

  /// No description provided for @timePeriodTitle.
  ///
  /// In en, this message translates to:
  /// **'Time period'**
  String get timePeriodTitle;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @confirmDeleteCall.
  ///
  /// In en, this message translates to:
  /// **'Delete this call from history?'**
  String get confirmDeleteCall;

  /// No description provided for @confirmDeleteAllCalls.
  ///
  /// In en, this message translates to:
  /// **'Delete all calls with this number?'**
  String get confirmDeleteAllCalls;

  /// No description provided for @whatsapp.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp;

  /// No description provided for @sendMessage.
  ///
  /// In en, this message translates to:
  /// **'Send a message'**
  String get sendMessage;

  /// No description provided for @addToExistingContactAction.
  ///
  /// In en, this message translates to:
  /// **'Add to a contact'**
  String get addToExistingContactAction;

  /// No description provided for @mobileLabel.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get mobileLabel;

  /// No description provided for @callingSimForContactTitle.
  ///
  /// In en, this message translates to:
  /// **'Calling SIM for this contact'**
  String get callingSimForContactTitle;

  /// No description provided for @contactSettings.
  ///
  /// In en, this message translates to:
  /// **'Contact settings'**
  String get contactSettings;

  /// No description provided for @setCallingSim.
  ///
  /// In en, this message translates to:
  /// **'Set calling SIM'**
  String get setCallingSim;

  /// No description provided for @contactRingtone.
  ///
  /// In en, this message translates to:
  /// **'Contact ringtone'**
  String get contactRingtone;

  /// No description provided for @shareContact.
  ///
  /// In en, this message translates to:
  /// **'Share contact'**
  String get shareContact;

  /// No description provided for @blockNumbers.
  ///
  /// In en, this message translates to:
  /// **'Block numbers'**
  String get blockNumbers;

  /// No description provided for @unblockNumbers.
  ///
  /// In en, this message translates to:
  /// **'Unblock numbers'**
  String get unblockNumbers;

  /// No description provided for @connectedApps.
  ///
  /// In en, this message translates to:
  /// **'Connected apps'**
  String get connectedApps;

  /// No description provided for @simNotSet.
  ///
  /// In en, this message translates to:
  /// **'Not set'**
  String get simNotSet;

  /// No description provided for @ringtoneDefault.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get ringtoneDefault;

  /// No description provided for @customRingtone.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get customRingtone;

  /// No description provided for @aboutSection.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutSection;

  /// No description provided for @aboutFeedbackSection.
  ///
  /// In en, this message translates to:
  /// **'About & feedback'**
  String get aboutFeedbackSection;

  /// No description provided for @aboutDescription.
  ///
  /// In en, this message translates to:
  /// **'Nothing Dialer is open source. If you are a developer, you are welcome to explore the code and contribute.'**
  String get aboutDescription;

  /// No description provided for @aboutViewSource.
  ///
  /// In en, this message translates to:
  /// **'View on GitHub'**
  String get aboutViewSource;

  /// No description provided for @aboutRepositoryHost.
  ///
  /// In en, this message translates to:
  /// **'github.com/rkvishwa/Nothing-Dialer-1'**
  String get aboutRepositoryHost;

  /// No description provided for @aboutCouldNotOpenLink.
  ///
  /// In en, this message translates to:
  /// **'Could not open link'**
  String get aboutCouldNotOpenLink;

  /// No description provided for @reviewSection.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get reviewSection;

  /// No description provided for @reviewDescription.
  ///
  /// In en, this message translates to:
  /// **'Enjoying Nothing Dialer? Your rating on Google Play helps others find the app.'**
  String get reviewDescription;

  /// No description provided for @reviewRateOnPlay.
  ///
  /// In en, this message translates to:
  /// **'Rate on Google Play'**
  String get reviewRateOnPlay;

  /// No description provided for @reviewRateOnPlaySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Leave a rating without leaving the app'**
  String get reviewRateOnPlaySubtitle;

  /// No description provided for @reviewCouldNotOpen.
  ///
  /// In en, this message translates to:
  /// **'Could not open Google Play'**
  String get reviewCouldNotOpen;

  /// No description provided for @breathSpeed.
  ///
  /// In en, this message translates to:
  /// **'Breath Speed'**
  String get breathSpeed;

  /// No description provided for @breathSpeedBlinkHint.
  ///
  /// In en, this message translates to:
  /// **'Lower = Blink, Higher = Slow Breath'**
  String get breathSpeedBlinkHint;

  /// No description provided for @speedSliderHint.
  ///
  /// In en, this message translates to:
  /// **'Lower = Faster, Higher = Slower'**
  String get speedSliderHint;

  /// No description provided for @swatchDefault.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get swatchDefault;

  /// No description provided for @customAccentColorPicker.
  ///
  /// In en, this message translates to:
  /// **'Custom accent color'**
  String get customAccentColorPicker;

  /// No description provided for @customLightBackgroundPicker.
  ///
  /// In en, this message translates to:
  /// **'Custom light background'**
  String get customLightBackgroundPicker;

  /// No description provided for @customDarkBackgroundPicker.
  ///
  /// In en, this message translates to:
  /// **'Custom dark background'**
  String get customDarkBackgroundPicker;

  /// No description provided for @customCallBackgroundPicker.
  ///
  /// In en, this message translates to:
  /// **'Custom call background'**
  String get customCallBackgroundPicker;

  /// No description provided for @ongoingCallStyleTitle.
  ///
  /// In en, this message translates to:
  /// **'Ongoing call style'**
  String get ongoingCallStyleTitle;

  /// No description provided for @glyphMapUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Glyph map unavailable'**
  String get glyphMapUnavailable;

  /// No description provided for @animationDelayRange.
  ///
  /// In en, this message translates to:
  /// **'Animation Delay (1s - 10s)'**
  String get animationDelayRange;

  /// No description provided for @animationDelayRangeSingle.
  ///
  /// In en, this message translates to:
  /// **'Animation Delay (0.1s - 10s)'**
  String get animationDelayRangeSingle;

  /// No description provided for @inCallMute.
  ///
  /// In en, this message translates to:
  /// **'Mute'**
  String get inCallMute;

  /// No description provided for @inCallKeypad.
  ///
  /// In en, this message translates to:
  /// **'Keypad'**
  String get inCallKeypad;

  /// No description provided for @inCallSpeaker.
  ///
  /// In en, this message translates to:
  /// **'Speaker'**
  String get inCallSpeaker;

  /// No description provided for @inCallMore.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get inCallMore;

  /// No description provided for @inCallBluetooth.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth'**
  String get inCallBluetooth;

  /// No description provided for @inCallPhone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get inCallPhone;

  /// No description provided for @inCallAddCall.
  ///
  /// In en, this message translates to:
  /// **'Add call'**
  String get inCallAddCall;

  /// No description provided for @inCallChangeSim.
  ///
  /// In en, this message translates to:
  /// **'Change SIM'**
  String get inCallChangeSim;

  /// No description provided for @inCallDecline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get inCallDecline;

  /// No description provided for @inCallAnswer.
  ///
  /// In en, this message translates to:
  /// **'Answer'**
  String get inCallAnswer;

  /// No description provided for @inCallMessage.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get inCallMessage;

  /// No description provided for @inCallCalling.
  ///
  /// In en, this message translates to:
  /// **'Calling…'**
  String get inCallCalling;

  /// No description provided for @inCallIncoming.
  ///
  /// In en, this message translates to:
  /// **'Incoming call'**
  String get inCallIncoming;

  /// No description provided for @inCallSelectSim.
  ///
  /// In en, this message translates to:
  /// **'Select SIM…'**
  String get inCallSelectSim;

  /// No description provided for @inCallSwitchingSim.
  ///
  /// In en, this message translates to:
  /// **'Switching SIM…'**
  String get inCallSwitchingSim;

  /// No description provided for @inCallCallEnded.
  ///
  /// In en, this message translates to:
  /// **'Call ended'**
  String get inCallCallEnded;

  /// No description provided for @inCallCallingVia.
  ///
  /// In en, this message translates to:
  /// **'Calling via {sim}'**
  String inCallCallingVia(String sim);

  /// No description provided for @inCallCallingViaHtml.
  ///
  /// In en, this message translates to:
  /// **'Calling via <b>{sim}</b>'**
  String inCallCallingViaHtml(String sim);

  /// No description provided for @inCallChooseSim.
  ///
  /// In en, this message translates to:
  /// **'Choose SIM for this call'**
  String get inCallChooseSim;

  /// No description provided for @inCallDragAnswerDecline.
  ///
  /// In en, this message translates to:
  /// **'Drag right to answer · Drag left to decline'**
  String get inCallDragAnswerDecline;

  /// No description provided for @inCallMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile {number}'**
  String inCallMobileNumber(String number);

  /// No description provided for @inCallAudioRouteCurrent.
  ///
  /// In en, this message translates to:
  /// **'{label}  (Current)'**
  String inCallAudioRouteCurrent(String label);

  /// No description provided for @inCallCallViaFrom.
  ///
  /// In en, this message translates to:
  /// **'Call via <b>{sim}</b> from'**
  String inCallCallViaFrom(String sim);

  /// No description provided for @inCallCallFrom.
  ///
  /// In en, this message translates to:
  /// **'Call from'**
  String get inCallCallFrom;

  /// No description provided for @inCallUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get inCallUnknown;

  /// No description provided for @selectContactRingtone.
  ///
  /// In en, this message translates to:
  /// **'Select contact ringtone'**
  String get selectContactRingtone;

  /// No description provided for @speakToSearchPrompt.
  ///
  /// In en, this message translates to:
  /// **'Speak to search'**
  String get speakToSearchPrompt;

  /// No description provided for @phonePermissionRequired.
  ///
  /// In en, this message translates to:
  /// **'Phone permission required'**
  String get phonePermissionRequired;

  /// No description provided for @callFailed.
  ///
  /// In en, this message translates to:
  /// **'Call failed: {error}'**
  String callFailed(String error);

  /// No description provided for @callPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Call permission denied'**
  String get callPermissionDenied;

  /// No description provided for @alreadyDefaultDialer.
  ///
  /// In en, this message translates to:
  /// **'Already set as default dialer'**
  String get alreadyDefaultDialer;

  /// No description provided for @resetCustomization.
  ///
  /// In en, this message translates to:
  /// **'Reset customization'**
  String get resetCustomization;

  /// No description provided for @resetCustomizationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Restore selected settings to defaults'**
  String get resetCustomizationSubtitle;

  /// No description provided for @resetCustomizationInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'What gets reset'**
  String get resetCustomizationInfoTitle;

  /// No description provided for @resetCustomizationInfoBody.
  ///
  /// In en, this message translates to:
  /// **'These return to their defaults:\n\n• Language (device default)\n• Theme, background, accent, and call background colors\n• Fonts and app icon\n• SIM badge colors and styles\n• Answer method\n• Torch blink during calls\n• Glyph calling and in-call animations\n• Frequently contacted (count and time period)\n\nNot changed: default SIM, blocked numbers, recents search, and favourites.'**
  String get resetCustomizationInfoBody;

  /// No description provided for @resetCustomizationConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset customization?'**
  String get resetCustomizationConfirmTitle;

  /// No description provided for @resetCustomizationConfirmBody.
  ///
  /// In en, this message translates to:
  /// **'Selected settings will return to their defaults. Default SIM, blocked numbers, recents, and favourites stay as they are.'**
  String get resetCustomizationConfirmBody;

  /// No description provided for @resetCustomizationDone.
  ///
  /// In en, this message translates to:
  /// **'Settings reset to defaults'**
  String get resetCustomizationDone;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'af',
    'am',
    'ar',
    'as',
    'az',
    'be',
    'bg',
    'bn',
    'bs',
    'ca',
    'cs',
    'cy',
    'da',
    'de',
    'el',
    'en',
    'es',
    'et',
    'eu',
    'fa',
    'fi',
    'fil',
    'fr',
    'gl',
    'gu',
    'he',
    'hi',
    'hr',
    'hu',
    'hy',
    'id',
    'is',
    'it',
    'ja',
    'ka',
    'kk',
    'km',
    'kn',
    'ko',
    'ky',
    'lo',
    'lt',
    'lv',
    'mk',
    'ml',
    'mn',
    'mr',
    'ms',
    'my',
    'nb',
    'ne',
    'nl',
    'or',
    'pa',
    'pl',
    'pt',
    'ro',
    'ru',
    'si',
    'sk',
    'sl',
    'sq',
    'sr',
    'sv',
    'sw',
    'ta',
    'te',
    'th',
    'tl',
    'tr',
    'uk',
    'ur',
    'uz',
    'vi',
    'zh',
    'zu',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'en':
      {
        switch (locale.countryCode) {
          case 'AU':
            return AppLocalizationsEnAu();
          case 'CA':
            return AppLocalizationsEnCa();
          case 'GB':
            return AppLocalizationsEnGb();
          case 'IN':
            return AppLocalizationsEnIn();
        }
        break;
      }
    case 'es':
      {
        switch (locale.countryCode) {
          case '419':
            return AppLocalizationsEs419();
          case 'MX':
            return AppLocalizationsEsMx();
        }
        break;
      }
    case 'fr':
      {
        switch (locale.countryCode) {
          case 'CA':
            return AppLocalizationsFrCa();
        }
        break;
      }
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
          case 'PT':
            return AppLocalizationsPtPt();
        }
        break;
      }
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'HK':
            return AppLocalizationsZhHk();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return AppLocalizationsAf();
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'as':
      return AppLocalizationsAs();
    case 'az':
      return AppLocalizationsAz();
    case 'be':
      return AppLocalizationsBe();
    case 'bg':
      return AppLocalizationsBg();
    case 'bn':
      return AppLocalizationsBn();
    case 'bs':
      return AppLocalizationsBs();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'cy':
      return AppLocalizationsCy();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'eu':
      return AppLocalizationsEu();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'gl':
      return AppLocalizationsGl();
    case 'gu':
      return AppLocalizationsGu();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ka':
      return AppLocalizationsKa();
    case 'kk':
      return AppLocalizationsKk();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ky':
      return AppLocalizationsKy();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lv':
      return AppLocalizationsLv();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'my':
      return AppLocalizationsMy();
    case 'nb':
      return AppLocalizationsNb();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'or':
      return AppLocalizationsOr();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tl':
      return AppLocalizationsTl();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'uz':
      return AppLocalizationsUz();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
    case 'zu':
      return AppLocalizationsZu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
