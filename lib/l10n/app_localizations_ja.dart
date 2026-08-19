// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => '何もないダイヤラ';

  @override
  String get settings => '設定';

  @override
  String get settingsSearchHint => '検索設定';

  @override
  String get settingsSearchNoResults => '設定が見つかりません';

  @override
  String get general => '一般';

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
  String get theme => 'テーマ';

  @override
  String get themeSystemDefault => 'システムのデフォルト';

  @override
  String get themeLight => 'ライト';

  @override
  String get themeDark => '暗い';

  @override
  String get themeFollowSystem => 'システム設定に従ってください';

  @override
  String get themeAlwaysLight => '常に明るいテーマを使用する';

  @override
  String get themeAlwaysDark => '常にダークテーマを使用する';

  @override
  String get language => '言語';

  @override
  String get languageDeviceDefault => '端末のデフォルト';

  @override
  String get languagePickerTitle => '言語';

  @override
  String get languageSearchHint => '検索言語';

  @override
  String get font => 'フォント';

  @override
  String get fontSystem => 'システムのデフォルト';

  @override
  String get fontNdot => '何もありません (NDot)';

  @override
  String get fontSerif => 'ロボットセリフ';

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
      'フォントのダウンロードに失敗しました。接続を確認して、もう一度試してください。';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => 'フォント';

  @override
  String get fontPreviewSample => '何もないダイヤラ';

  @override
  String get fontAppWide => 'アプリのフォント';

  @override
  String get fontApplyTo => '申請先';

  @override
  String get fontApplyEntireApp => 'アプリ全体';

  @override
  String get fontApplyEntireAppSubtitle => '通話中も含め、どこでも同じフォント';

  @override
  String get fontApplyTitlesOnly => 'タイトルとヘッダー';

  @override
  String get fontApplyTitlesOnlySubtitle => '大きなタイトルとセクションヘッダーのみ';

  @override
  String get fontApplyCustomize => 'カスタマイズ';

  @override
  String get fontApplyCustomizeSubtitle => '画面ごとにフォントとテキストの種類を選択します';

  @override
  String get fontCustomizeSection => '画面ごとにカスタマイズ';

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
  String get fontRolePageTitle => 'ページタイトル';

  @override
  String get fontRoleSectionHeader => 'セクションヘッダー';

  @override
  String get fontRolePrimary => '一次テキスト';

  @override
  String get fontRoleSecondary => '二次テキスト';

  @override
  String get fontRoleButton => 'ボタン';

  @override
  String get fontRoleDialKey => 'ダイヤルパッドのキー';

  @override
  String get fontSurfaceRecents => '最近';

  @override
  String get fontSurfaceContacts => '連絡先';

  @override
  String get fontSurfaceSettings => '設定';

  @override
  String get fontSurfaceDialpad => 'ダイヤルパッド';

  @override
  String get fontSurfaceShell => 'ナビゲーション';

  @override
  String get fontSurfaceDefaultDialer => 'デフォルトのダイヤラプロンプト';

  @override
  String get fontSurfaceFavourites => 'お気に入り';

  @override
  String get fontSurfaceBlocked => 'ブロックされた番号';

  @override
  String get fontSurfaceContactDetail => '連絡先詳細';

  @override
  String get fontSurfaceCallHistory => '通話履歴';

  @override
  String get fontSurfaceSheets => 'シートとピッカー';

  @override
  String get fontSurfaceInCall => '通話中画面';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — アプリ全体';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — タイトルのみ';
  }

  @override
  String get fontSubtitleCustomize => '画面ごとのカスタム';

  @override
  String get background => '背景';

  @override
  String get accent => 'アクセント';

  @override
  String get lightBackground => '明るい背景';

  @override
  String get lightAccent => '軽いアクセント';

  @override
  String get darkBackground => '暗い背景';

  @override
  String get darkAccent => 'ダークアクセント';

  @override
  String get callBackground => '通話の背景';

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
  String get appIcon => 'アプリアイコン';

  @override
  String get answerMethod => '回答方法';

  @override
  String get answerSlide => 'スライドして答えてください';

  @override
  String get answerSlideSubtitle => 'Google Phone のようにバーを左右にスワイプします';

  @override
  String get answerButton => 'ボタンタップ';

  @override
  String get answerButtonSubtitle => '応答または拒否ボタンをタップします';

  @override
  String get answerHuawei => 'ファーウェイスタイル';

  @override
  String get answerHuaweiSubtitle => '応答するには、円を緑色の電話にドラッグします。';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — 緑/赤にドラッグします';

  @override
  String get calling => '電話をかける';

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
  String get defaultSim => 'デフォルトSIM';

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
  String get askEveryTime => '毎回尋ねる';

  @override
  String get askEveryTimeSubtitle => '各通話の前に SIM ピッカーを表示する';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'SIM カードが見つかりません';

  @override
  String couldNotLoadSims(String error) {
    return 'SIM をロードできませんでした: $error';
  }

  @override
  String get allFavourites => 'すべてのお気に入り';

  @override
  String get allFavouritesSubtitle => '連絡先の並べ替え、削除、追加';

  @override
  String get blockedNumbers => 'ブロックされた番号';

  @override
  String get blockedNumbersSubtitle => '番号の表示とブロック解除';

  @override
  String get soundsAndVibration => '音と振動';

  @override
  String get soundsAndVibrationSubtitle => '着信音、バイブレーション、ダイヤルパッド音';

  @override
  String couldNotOpenSettings(String error) {
    return '設定を開けませんでした: $error';
  }

  @override
  String get frequentlyContacted => 'よく連絡する';

  @override
  String get numberOfRecords => 'レコード数';

  @override
  String get timePeriod => '期間';

  @override
  String get periodLast24Hours => '過去 24 時間';

  @override
  String get periodLast24HoursSubtitle => '過去 1 日からの電話';

  @override
  String get periodLast7Days => '過去 7 日間';

  @override
  String get periodLast7DaysSubtitle => '過去 1 週間の電話';

  @override
  String get periodLast30Days => '過去 30 日間';

  @override
  String get periodLast30DaysSubtitle => '先月からの電話';

  @override
  String get periodLast12Months => '過去 12 か月';

  @override
  String get periodLast12MonthsSubtitle => '過去 1 年間の電話';

  @override
  String get periodAllTime => 'ずっと';

  @override
  String get periodAllTimeSubtitle => '通話履歴全体';

  @override
  String get frequentMaxOff => 'オフ';

  @override
  String frequentMaxCount(int count) {
    return '$count 連絡先';
  }

  @override
  String get torchBlink => 'トーチブリンク';

  @override
  String get torchIncomingCall => '着信ランプ';

  @override
  String get torchOutgoingCall => '発信通話トーチ';

  @override
  String get torchOngoingCall => '継続通話トーチ';

  @override
  String get torchIncomingInterval => '着信まばたき間隔';

  @override
  String get torchOutgoingInterval => '発信点滅間隔';

  @override
  String get torchOngoingInterval => '継続的な点滅間隔';

  @override
  String get torchOff => 'オフ';

  @override
  String get torchOffIncomingSubtitle => '呼び出し音が鳴っている間は懐中電灯が点灯しません';

  @override
  String get torchOffOutgoingSubtitle => 'ダイヤル中に懐中電灯が点灯しない';

  @override
  String get torchOffOngoingSubtitle => '通話中はトーチがありません';

  @override
  String get torchFixedInterval => '一定間隔';

  @override
  String get torchFixedIntervalSubtitle => '設定した速度で点滅する';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds秒';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds 点滅';
  }

  @override
  String get flashlightUnavailable => 'このデバイスでは懐中電灯は利用できません';

  @override
  String get glyphLights => 'グリフライト';

  @override
  String get glyphCallingAnimation => 'グリフ呼び出しアニメーション';

  @override
  String get glyphOngoingAnimation => 'グリフ通話中のアニメーション';

  @override
  String get glyphNone => 'なし';

  @override
  String get glyphNoneOutgoingSubtitle => '発信通話のグリフ ライトを無効にする';

  @override
  String get glyphNoneInCallSubtitle => '通話中は Glyph ライトを無効にする';

  @override
  String get glyphBreathProgress => '呼吸と進歩';

  @override
  String get glyphBreathProgressSubtitle => 'ラインが 65 秒以上満たされる間、ライトは呼吸します';

  @override
  String get glyphAccumulate => '蓄積する';

  @override
  String get glyphAccumulateSubtitle => 'ライト C1 ～ C4 のアニメーションを蓄積する';

  @override
  String get glyphSingle => 'シングル';

  @override
  String get glyphSingleSubtitle => 'C1-C4 を移動する単一のライト';

  @override
  String get glyphBreath => '呼吸';

  @override
  String get glyphBreathSubtitle => 'ライトと速度を選択してください';

  @override
  String get glyphSteady => '安定した';

  @override
  String get glyphSteadySubtitle => '選択したライトは点灯したままになります';

  @override
  String get breathSettings => 'ブレス設定';

  @override
  String get activeLights => 'アクティブライト';

  @override
  String lightsCount(int count) {
    return '$count ライト';
  }

  @override
  String get speedSettings => '速度設定';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms遅延';
  }

  @override
  String get durationAndSpeed => '持続時間と速度';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '$duration秒の持続時間、$intervalミリ秒の間隔';
  }

  @override
  String get cancel => 'キャンセル';

  @override
  String get done => '終わり';

  @override
  String get save => '保存';

  @override
  String get block => 'ブロック';

  @override
  String get delete => '消去';

  @override
  String get recents => '履歴';

  @override
  String get contacts => '連絡先';

  @override
  String get hideFavouritesOnRecents => '最近のお気に入りを非表示にする';

  @override
  String get showFavouritesOnRecents => '最近でお気に入りを表示';

  @override
  String get ongoingCall => '通話中';

  @override
  String get setAsDefaultTitle => 'として設定\nデフォルト';

  @override
  String get setAsDefaultBody =>
      'Nothing Dialer を使用するには、Nothing Dialer をデフォルトの電話アプリとして設定する必要があります。これにより、通話の管理、履歴の表示、グリフ アニメーションの使用が可能になります。';

  @override
  String get setAsDefaultButton => 'デフォルトとして設定';

  @override
  String get nothingDialerBrand => '何もありません ダイヤラー 1';

  @override
  String get favourites => 'お気に入り';

  @override
  String get addFavourite => 'お気に入りを追加';

  @override
  String get favouritesDrawerHint =>
      'メニューを使用して連絡先を追加します。引き出しの外側をタップするか、スワイプして閉じます。詳細から連絡先にスターを付けるか、[最近] で通話を長押しします。';

  @override
  String get menu => 'メニュー';

  @override
  String get noFavouritesYet =>
      'まだお気に入りはありません。\nメニューを開いて連絡先を追加するか、連絡先にスターを付けます。';

  @override
  String get contactsPermissionNeeded => '連絡先の許可が必要です';

  @override
  String get chooseContact => '連絡先を選択してください';

  @override
  String get noPhone => '電話なし';

  @override
  String get pickNumber => 'ピック番号';

  @override
  String get contactHasNoPhone => 'この連絡先には電話番号がありません';

  @override
  String get blockNumber => 'ブロック番号';

  @override
  String get enterPhoneNumber => '電話番号を入力してください';

  @override
  String unblockedDisplay(String display) {
    return 'ブロック解除されました $display';
  }

  @override
  String get couldNotUnblockNumber => '番号のブロックを解除できませんでした';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked ブロックされました • $matched が一致しました';
  }

  @override
  String get contactsPermissionMissing => '連絡先の権限がありません。タップして修正します。';

  @override
  String get noBlockedNumbers => 'ブロックされた番号はありません';

  @override
  String get unknownContact => '不明な連絡先';

  @override
  String get unblock => 'ブロックを解除する';

  @override
  String get permissionNeeded => '許可が必要です';

  @override
  String get grantPhonePermission => '通話履歴を表示する権限を電話に付与します。';

  @override
  String get grantContactsPermission => '連絡先にアドレス帳を表示する許可を与えます。';

  @override
  String get openSettings => '設定を開く';

  @override
  String get tryAgain => 'もう一度やり直してください';

  @override
  String get couldNotLoadContacts => '連絡先をロードできませんでした';

  @override
  String get contactsLoadError => 'アドレス帳の読み取り中に問題が発生しました。';

  @override
  String get noContactsFound => '連絡先が見つかりませんでした';

  @override
  String get contactsEmptySubtitle => 'デバイスの連絡先がここに表示されます。';

  @override
  String get searchContacts => '連絡先を検索…';

  @override
  String get searchRecentCalls => '最近の通話を検索する';

  @override
  String get fromContacts => '連絡先から';

  @override
  String get recentsSearchSection => '最近の検索';

  @override
  String get recentsSearchShowContacts => '検索で連絡先を表示する';

  @override
  String get recentsSearchShowContactsSubtitle =>
      '[最近] を検索しているときに、通話履歴の結果の下にアドレス帳にある一致するユーザーも表示されます。';

  @override
  String get voiceSearch => '音声検索';

  @override
  String get createNewContact => '新しい連絡先を作成する';

  @override
  String callError(String error) {
    return '通話エラー: $error';
  }

  @override
  String get noRecentCalls => '最近の通話はありません';

  @override
  String get callHistoryEmpty => 'ここに通話履歴が表示されます。';

  @override
  String get loadMore => 'さらにロードする';

  @override
  String get frequentlyContactedHeader => 'よく連絡する';

  @override
  String get recentHistory => '最近の履歴';

  @override
  String get noFavouritesRecentsHint =>
      'まだお気に入りはありません。連絡先にスターを付けるか、通話を長押しするか、[お気に入り] タブを使用します。';

  @override
  String get copyNumber => 'コピー番号';

  @override
  String get editNumberBeforeCall => '電話をかける前に番号を編集する';

  @override
  String get removeFromFavourites => 'お気に入りから削除';

  @override
  String get addToFavourites => 'お気に入りに追加';

  @override
  String get blockNumberQuestion => 'ブロック番号?';

  @override
  String blockNumberConfirm(String number) {
    return '$number からの電話やテキストメッセージは受信できなくなります。';
  }

  @override
  String get blocked => 'ブロックされました';

  @override
  String get couldNotBlock => 'ブロックできませんでした';

  @override
  String get contactNotOnDevice => '連絡先がこのデバイスに保存されていません';

  @override
  String get unblocked => 'ブロック解除されました';

  @override
  String get numberCopied => 'コピーされた番号';

  @override
  String get showLess => '表示を少なくする';

  @override
  String get showAllTimes => 'すべての時間を表示';

  @override
  String mostRecent(String time) {
    return '最新 · $time';
  }

  @override
  String get videoCall => 'ビデオ通話';

  @override
  String get couldNotPlaceVideoCall => 'ビデオ通話を発信できませんでした';

  @override
  String get message => 'メッセージ';

  @override
  String get couldNotOpenMessaging => 'メッセージアプリを開けませんでした';

  @override
  String get history => '歴史';

  @override
  String get viewContact => '連絡先を表示';

  @override
  String get addToContact => '連絡先に追加';

  @override
  String get callTypeMissed => '逃した';

  @override
  String get callTypeRejected => '拒否されました';

  @override
  String get callTypeIncoming => '着信';

  @override
  String get callTypeOutgoing => '発信';

  @override
  String get today => '今日';

  @override
  String get yesterday => '昨日';

  @override
  String get justNow => 'たった今';

  @override
  String minutesAgo(int count) {
    return '$count 分前';
  }

  @override
  String hoursAgo(int count) {
    return '$count 時間前';
  }

  @override
  String get filterAll => '全て';

  @override
  String get filterMissed => '逃した';

  @override
  String get filterContacts => '連絡先';

  @override
  String get filterNonContacts => '非接触型';

  @override
  String get iconUpdated => 'アイコンが更新されました。ホーム画面が更新されるまでに少し時間がかかる場合があります。';

  @override
  String get iconSavedRelease => '選択が保存されました。ホーム画面のアイコンはリリース ビルドで更新されます。';

  @override
  String couldNotChangeIcon(String error) {
    return 'アイコンを変更できませんでした: $error';
  }

  @override
  String get launcherClassicBlack => 'クラシック（ブラック）';

  @override
  String get launcherLight => 'ライト';

  @override
  String get launcherNothingRed => '何も赤くない';

  @override
  String get launcherDarkGrey => 'ダークグレー';

  @override
  String get launcherCream => 'クリーム';

  @override
  String get launcherRetroPhone => 'レトロな電話';

  @override
  String get launcherRetroPhoneLight => 'レトロ電話（ライト）';

  @override
  String get voiceSearchUnavailable => 'このデバイスでは音声検索は利用できません。';

  @override
  String voiceSearchFailed(String error) {
    return '音声検索に失敗しました: $error';
  }

  @override
  String get customColor => 'カスタム';

  @override
  String get selectColor => '色を選択してください';

  @override
  String get reset => 'リセット';

  @override
  String get simPickerTitle => 'SIMを選ぶ';

  @override
  String get simChooseForCall => 'この通話用の SIM を選択してください';

  @override
  String get defaultSimAsk => '毎回尋ねる';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => '連絡先詳細';

  @override
  String get call => '電話';

  @override
  String get share => '共有';

  @override
  String get favourite => 'お気に入り';

  @override
  String get unfavourite => '気に入らない';

  @override
  String get blockContact => '連絡先をブロックする';

  @override
  String get unblockContact => '連絡先のブロックを解除する';

  @override
  String get deleteContact => '連絡先を削除する';

  @override
  String get phone => '電話';

  @override
  String get email => '電子メール';

  @override
  String get ringtone => '着信音';

  @override
  String get defaultRingtone => 'デフォルト';

  @override
  String get simForContact => 'この連絡先の SIM';

  @override
  String get callHistoryTitle => '通話履歴';

  @override
  String get noCallsWithNumber => 'この番号では通話できません';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String durationSeconds(int seconds) {
    return '${seconds}s';
  }

  @override
  String get glyphAnimationStyle => 'グリフアニメーション';

  @override
  String get inCallGlyphAnimationStyle => '通話中のグリフ アニメーション';

  @override
  String get recordsOff => 'オフ';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => 'デフォルトSIM';

  @override
  String get nothingPhoneOnly => 'なし 電話のみ';

  @override
  String get nothingPhoneOnlySubtitle => 'Glyph 機能には Nothing Phone が必要です';

  @override
  String get custom => 'カスタム';

  @override
  String presetColorHex(String hex) {
    return 'プリセット · $hex';
  }

  @override
  String customColorHex(String hex) {
    return 'カスタム · $hex';
  }

  @override
  String get oneContact => '1 連絡先';

  @override
  String upToContacts(int count) {
    return '最大 $count の連絡先';
  }

  @override
  String get answerButtonTapSubtitle => 'ボタンをタップして応答します';

  @override
  String get filterCalls => '通話のフィルタリング';

  @override
  String get filterTooltip => 'フィルター';

  @override
  String get settingsTooltip => '設定';

  @override
  String get filterAllSubtitle => '通話履歴全体';

  @override
  String get filterMissedSubtitle => '見逃して拒否されました';

  @override
  String get filterContactsSubtitle => '保存された連絡先に一致する通話';

  @override
  String get filterNonContactsSubtitle => 'アドレス帳にない番号';

  @override
  String ongoingCallWithDetail(String detail) {
    return '通話中: $detail';
  }

  @override
  String get defaultSimForCalls => '通話用のデフォルトSIM';

  @override
  String get blinkInterval => '点滅間隔';

  @override
  String get close => '近い';

  @override
  String get frequentlyContactedInfoBody =>
      '選択した期間内に各番号で着信、発信、不在着信、または拒否された通話の数に基づいて、最もよく通話した電話番号が [最近] タブの上部に表示されます。\n\nレコード数: これをオフにするには、0 に設定します。その数の上位連絡先を表示するには、1 ～ 20 を使用します。\n\n期間は、少なくとも 1 つの連絡先が表示されている場合にのみ適用されます。';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count ライト、$ms ミリ秒の速度';
  }

  @override
  String get deleteContactQuestion => '連絡先を削除しますか?';

  @override
  String get deleteContactBody => 'この連絡先はデバイスから完全に削除されます。';

  @override
  String get blockContactQuestion => '連絡先をブロックしますか？';

  @override
  String get unblockContactQuestion => '連絡先のブロックを解除しますか?';

  @override
  String get blockContactBody => 'この連絡先からの電話やテキストメッセージは受信されなくなります。';

  @override
  String get unblockContactBody => 'この連絡先からの電話やテキストメッセージの受信が開始されます。';

  @override
  String get contactBlocked => '連絡先がブロックされました';

  @override
  String get contactUnblocked => '連絡先のブロックが解除されました';

  @override
  String get noPhoneNumbersToBlock => 'ブロックする電話番号はありません';

  @override
  String get simSameAsSystem => 'システムと同じ';

  @override
  String get simSameAsSystemSubtitle => '設定でデフォルトの SIM に従います';

  @override
  String get simAskEveryTimeForContact => 'この連絡先に対して SIM ピッカーを常に表示する';

  @override
  String get ringtoneSetForContact => 'この連絡先にグローバルに設定された着信音';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return '着信音の選択に失敗しました: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return 'エラー: $error';
  }

  @override
  String get noCallHistoryFound => '通話履歴が見つかりません';

  @override
  String get speedDialVoicemail => '短縮ダイヤル: ボイスメール';

  @override
  String shareContactSubject(String name) {
    return '連絡先: $name';
  }

  @override
  String get contactInfo => '連絡先情報';

  @override
  String get dontAskAgainSim => '二度と聞かないでください';

  @override
  String get simDontAskAgainSubtitle => 'この SIM をデフォルトとして使用します (設定で変更)';

  @override
  String get addContact => '連絡先を追加';

  @override
  String get createContact => '連絡先の作成';

  @override
  String get paste => 'ペースト';

  @override
  String get clear => 'クリア';

  @override
  String get returnToCall => '通話に戻る';

  @override
  String get numberOfRecordsTitle => 'レコード数';

  @override
  String get recordsPickerSubtitle => '表示する頻繁に連絡されるエントリの数 (0 = オフ)';

  @override
  String get torchInfoTitle => 'トーチブリンク';

  @override
  String get torchInfoBody => '着信中、発信中、通話中にカメラのフラッシュを点滅させます。グリフ ライトから独立しています。';

  @override
  String get glyphMapTitle => 'グリフのレイアウト';

  @override
  String get glyphMapBody =>
      '電話機 1 のグリフ LED ゾーンは何もありません。発信および通話中のアニメーションはこれらのチャネルを使用します。';

  @override
  String get answerMethodTitle => '回答方法';

  @override
  String get glyphOutgoingCallStyleTitle => '発信通話スタイル';

  @override
  String get glyphInCallAnimationTitle => 'グリフ通話中のアニメーション';

  @override
  String get themePickerTitle => 'テーマ';

  @override
  String get torchIncomingTitle => '着信ランプ';

  @override
  String get torchOutgoingTitle => '発信通話トーチ';

  @override
  String get torchOngoingTitle => '継続通話トーチ';

  @override
  String get timePeriodTitle => '期間';

  @override
  String get ok => 'わかりました ・';

  @override
  String get confirmDeleteCall => 'この通話を履歴から削除しますか?';

  @override
  String get confirmDeleteAllCalls => 'この番号との通話をすべて削除しますか?';

  @override
  String get whatsapp => 'ワッツアップ';

  @override
  String get sendMessage => 'メッセージを送信する';

  @override
  String get addToExistingContactAction => '連絡先に追加';

  @override
  String get mobileLabel => '携帯';

  @override
  String get callingSimForContactTitle => 'この連絡先の通話 SIM';

  @override
  String get contactSettings => '連絡先設定';

  @override
  String get setCallingSim => '通話SIMを設定する';

  @override
  String get contactRingtone => '連絡先の着信音';

  @override
  String get shareContact => '連絡先を共有する';

  @override
  String get blockNumbers => 'ブロック番号';

  @override
  String get unblockNumbers => '番号のブロックを解除する';

  @override
  String get connectedApps => '接続されたアプリ';

  @override
  String get simNotSet => '未設定';

  @override
  String get ringtoneDefault => 'デフォルト';

  @override
  String get customRingtone => 'カスタム';

  @override
  String get aboutSection => 'このアプリについて';

  @override
  String get aboutFeedbackSection => '概要とフィードバック';

  @override
  String get aboutDescription =>
      'Nothing Dialer はオープンソースです。開発者の方はコードを確認し、貢献していただけます。';

  @override
  String get aboutViewSource => 'GitHub で見る';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => 'リンクを開けませんでした';

  @override
  String get reviewSection => 'レビュー';

  @override
  String get reviewDescription =>
      'Nothing Dialer を気に入っていただけましたか？Google Play の評価は他のユーザーの参考になります。';

  @override
  String get reviewRateOnPlay => 'Google Play で評価';

  @override
  String get reviewRateOnPlaySubtitle => 'Google Play のストアページを開く';

  @override
  String get reviewCouldNotOpen => 'Google Play を開けませんでした';

  @override
  String get breathSpeed => '呼吸速度';

  @override
  String get breathSpeedBlinkHint => '低い = まばたき、高い = ゆっくりとした呼吸';

  @override
  String get speedSliderHint => '低い = 速く、高い = 遅い';

  @override
  String get swatchDefault => 'デフォルト';

  @override
  String get customAccentColorPicker => 'カスタムアクセントカラー';

  @override
  String get customLightBackgroundPicker => 'カスタムの明るい背景';

  @override
  String get customDarkBackgroundPicker => 'カスタムの暗い背景';

  @override
  String get customCallBackgroundPicker => 'カスタム通話背景';

  @override
  String get ongoingCallStyleTitle => '継続的な通話スタイル';

  @override
  String get glyphMapUnavailable => 'グリフマップは使用できません';

  @override
  String get animationDelayRange => 'アニメーションの遅延 (1 秒 - 10 秒)';

  @override
  String get animationDelayRangeSingle => 'アニメーション遅延 (0.1 秒 - 10 秒)';

  @override
  String get inCallMute => 'ミュート';

  @override
  String get inCallKeypad => 'キーパッド';

  @override
  String get inCallSpeaker => 'スピーカー';

  @override
  String get inCallMore => 'その他';

  @override
  String get inCallBluetooth => 'Bluetooth';

  @override
  String get inCallPhone => '電話';

  @override
  String get inCallAddCall => '通話を追加';

  @override
  String get inCallChangeSim => 'SIMを変更';

  @override
  String get inCallDecline => '拒否';

  @override
  String get inCallAnswer => '応答';

  @override
  String get inCallMessage => 'メッセージ';

  @override
  String get inCallCalling => '発信中…';

  @override
  String get inCallIncoming => '着信';

  @override
  String get inCallSelectSim => 'SIMを選択…';

  @override
  String get inCallSwitchingSim => 'SIMを切り替え中…';

  @override
  String get inCallCallEnded => '通話終了';

  @override
  String inCallCallingVia(String sim) {
    return '$simで発信中';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '<b>$sim</b>で発信中';
  }

  @override
  String get inCallChooseSim => 'この通話のSIMを選択';

  @override
  String get inCallDragAnswerDecline => '右にスワイプで応答 · 左で拒否';

  @override
  String inCallMobileNumber(String number) {
    return 'モバイル $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label（使用中）';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return '<b>$sim</b>からの通話';
  }

  @override
  String get inCallCallFrom => '発信者';

  @override
  String get inCallUnknown => '不明';

  @override
  String get selectContactRingtone => '連絡先の着信音を選択';

  @override
  String get speakToSearchPrompt => '話して検索';

  @override
  String get phonePermissionRequired => '電話の権限が必要です';

  @override
  String callFailed(String error) {
    return '通話に失敗しました: $error';
  }

  @override
  String get callPermissionDenied => '通話の権限が拒否されました';

  @override
  String get alreadyDefaultDialer => 'すでにデフォルトの電話アプリです';

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
