// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '아무것도 걸지 않음';

  @override
  String get settings => '설정';

  @override
  String get settingsSearchHint => '검색 설정';

  @override
  String get settingsSearchNoResults => '설정을 찾을 수 없습니다.';

  @override
  String get general => '일반적인';

  @override
  String get theme => '주제';

  @override
  String get themeSystemDefault => '시스템 기본값';

  @override
  String get themeLight => '빛';

  @override
  String get themeDark => '어두운';

  @override
  String get themeFollowSystem => '시스템 설정을 따르세요';

  @override
  String get themeAlwaysLight => '항상 밝은 테마 사용';

  @override
  String get themeAlwaysDark => '항상 어두운 테마를 사용하세요';

  @override
  String get language => '언어';

  @override
  String get languageDeviceDefault => '장치 기본값';

  @override
  String get languagePickerTitle => '언어';

  @override
  String get languageSearchHint => '언어 검색';

  @override
  String get font => '세례반';

  @override
  String get fontSystem => '시스템 기본값';

  @override
  String get fontNdot => '아무것도 (NDot)';

  @override
  String get fontSerif => '로보토 세리프';

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
  String get fontNotoDownloadFailed => '글꼴 다운로드에 실패했습니다. 연결을 확인하고 다시 시도하세요.';

  @override
  String get fontNotoUseAfterDownload =>
      'Download multilingual fonts for full language support';

  @override
  String get fontPickerTitle => '세례반';

  @override
  String get fontPreviewSample => '아무것도 걸지 않음';

  @override
  String get fontAppWide => '앱 글꼴';

  @override
  String get fontApplyTo => '신청 대상';

  @override
  String get fontApplyEntireApp => '전체 앱';

  @override
  String get fontApplyEntireAppSubtitle => '통화 중을 포함하여 어디에서나 동일한 글꼴';

  @override
  String get fontApplyTitlesOnly => '제목 및 헤더';

  @override
  String get fontApplyTitlesOnlySubtitle => '큰 제목과 섹션 헤더만';

  @override
  String get fontApplyCustomize => '사용자 정의';

  @override
  String get fontApplyCustomizeSubtitle => '화면 및 텍스트 유형별로 글꼴 선택';

  @override
  String get fontCustomizeSection => '화면별로 맞춤설정';

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
  String get fontRolePageTitle => '페이지 제목';

  @override
  String get fontRoleSectionHeader => '섹션 헤더';

  @override
  String get fontRolePrimary => '기본 텍스트';

  @override
  String get fontRoleSecondary => '보조 텍스트';

  @override
  String get fontRoleButton => '버튼';

  @override
  String get fontRoleDialKey => '다이얼패드 키';

  @override
  String get fontSurfaceRecents => '최근';

  @override
  String get fontSurfaceContacts => '콘택트 렌즈';

  @override
  String get fontSurfaceSettings => '설정';

  @override
  String get fontSurfaceDialpad => '다이얼패드';

  @override
  String get fontSurfaceShell => '항해';

  @override
  String get fontSurfaceDefaultDialer => '기본 다이얼러 프롬프트';

  @override
  String get fontSurfaceFavourites => '즐겨찾기';

  @override
  String get fontSurfaceBlocked => '차단된 번호';

  @override
  String get fontSurfaceContactDetail => '연락처 정보';

  @override
  String get fontSurfaceCallHistory => '통화 기록';

  @override
  String get fontSurfaceSheets => '시트 및 선택기';

  @override
  String get fontSurfaceInCall => '통화 중 화면';

  @override
  String fontSubtitleEntireApp(String font) {
    return '$font — 전체 앱';
  }

  @override
  String fontSubtitleTitlesOnly(String font) {
    return '$font — 제목만';
  }

  @override
  String get fontSubtitleCustomize => '화면별 맞춤';

  @override
  String get background => '배경';

  @override
  String get accent => '악센트';

  @override
  String get lightBackground => '밝은 배경';

  @override
  String get lightAccent => '가벼운 악센트';

  @override
  String get darkBackground => '어두운 배경';

  @override
  String get darkAccent => '어두운 악센트';

  @override
  String get callBackground => '통화 배경';

  @override
  String get appIcon => '앱 아이콘';

  @override
  String get answerMethod => '답변 방법';

  @override
  String get answerSlide => '슬라이드하여 답변';

  @override
  String get answerSlideSubtitle => 'Google Phone처럼 바를 왼쪽/오른쪽으로 스와이프하세요.';

  @override
  String get answerButton => '버튼 탭';

  @override
  String get answerButtonSubtitle => '응답 또는 거부 버튼을 탭하세요.';

  @override
  String get answerHuawei => '화웨이 스타일';

  @override
  String get answerHuaweiSubtitle => '전화를 받으려면 원을 녹색 전화로 드래그하세요.';

  @override
  String get answerHuaweiTileSubtitle => 'Huawei — 녹색/빨간색으로 드래그';

  @override
  String get calling => '부름';

  @override
  String get defaultSim => '기본 SIM';

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
  String get askEveryTime => '매번 물어보세요';

  @override
  String get askEveryTimeSubtitle => '통화할 때마다 SIM 선택 도구 표시';

  @override
  String simSlot(int slot) {
    return 'SIM $slot';
  }

  @override
  String get noSimCardsFound => 'SIM 카드를 찾을 수 없습니다.';

  @override
  String couldNotLoadSims(String error) {
    return 'SIM을 로드할 수 없습니다: $error';
  }

  @override
  String get allFavourites => '모든 즐겨찾기';

  @override
  String get allFavouritesSubtitle => '연락처에서 재정렬, 제거 및 추가';

  @override
  String get blockedNumbers => '차단된 번호';

  @override
  String get blockedNumbersSubtitle => '번호 보기 및 차단 해제';

  @override
  String get soundsAndVibration => '소리와 진동';

  @override
  String get soundsAndVibrationSubtitle => '벨소리, 진동, 다이얼 패드 톤';

  @override
  String couldNotOpenSettings(String error) {
    return '설정을 열 수 없습니다: $error';
  }

  @override
  String get frequentlyContacted => '자주 연락하는 사람';

  @override
  String get numberOfRecords => '레코드 수';

  @override
  String get timePeriod => '기간';

  @override
  String get periodLast24Hours => '지난 24시간';

  @override
  String get periodLast24HoursSubtitle => '지난 날의 전화';

  @override
  String get periodLast7Days => '지난 7일';

  @override
  String get periodLast7DaysSubtitle => '지난주에 걸려온 전화';

  @override
  String get periodLast30Days => '지난 30일';

  @override
  String get periodLast30DaysSubtitle => '지난달에 걸려온 전화';

  @override
  String get periodLast12Months => '지난 12개월';

  @override
  String get periodLast12MonthsSubtitle => '작년에 걸려온 전화';

  @override
  String get periodAllTime => '모든 시간';

  @override
  String get periodAllTimeSubtitle => '전체 통화 내역';

  @override
  String get frequentMaxOff => '끄다';

  @override
  String frequentMaxCount(int count) {
    return '$count 연락처';
  }

  @override
  String get torchBlink => '토치 블링크';

  @override
  String get torchIncomingCall => '수신 전화 토치';

  @override
  String get torchOutgoingCall => '발신 통화 토치';

  @override
  String get torchOngoingCall => '진행중인 통화 토치';

  @override
  String get torchIncomingInterval => '들어오는 깜박임 간격';

  @override
  String get torchOutgoingInterval => '나가는 깜박임 간격';

  @override
  String get torchOngoingInterval => '지속적인 깜박임 간격';

  @override
  String get torchOff => '끄다';

  @override
  String get torchOffIncomingSubtitle => '벨이 울리는 동안 횃불이 울리지 않음';

  @override
  String get torchOffOutgoingSubtitle => '전화를 거는 동안 손전등이 없습니다.';

  @override
  String get torchOffOngoingSubtitle => '활성 통화 중에는 손전등이 없습니다.';

  @override
  String get torchFixedInterval => '고정 간격';

  @override
  String get torchFixedIntervalSubtitle => '설정된 속도로 깜박임';

  @override
  String torchIntervalSeconds(String seconds) {
    return '$seconds초';
  }

  @override
  String torchIntervalBlink(String seconds) {
    return '$seconds 깜박임';
  }

  @override
  String get flashlightUnavailable => '이 기기에서는 손전등을 사용할 수 없습니다.';

  @override
  String get glyphLights => '글리프 라이트';

  @override
  String get glyphCallingAnimation => '글리프 호출 애니메이션';

  @override
  String get glyphOngoingAnimation => 'Glyph 진행 중인 통화 애니메이션';

  @override
  String get glyphNone => '없음';

  @override
  String get glyphNoneOutgoingSubtitle => '발신 통화에 대한 글리프 표시등 비활성화';

  @override
  String get glyphNoneInCallSubtitle => '통화 중일 때 글리프 조명 비활성화';

  @override
  String get glyphBreathProgress => '호흡 및 진행';

  @override
  String get glyphBreathProgressSubtitle => '65초 동안 라인이 채워지는 동안 조명이 숨쉬게 됩니다.';

  @override
  String get glyphAccumulate => '모으다';

  @override
  String get glyphAccumulateSubtitle => '조명 C1-C4에 애니메이션 축적';

  @override
  String get glyphSingle => '하나의';

  @override
  String get glyphSingleSubtitle => 'C1-C4를 가로질러 이동하는 단일 조명';

  @override
  String get glyphBreath => '호흡';

  @override
  String get glyphBreathSubtitle => '조명과 속도 선택';

  @override
  String get glyphSteady => '꾸준한';

  @override
  String get glyphSteadySubtitle => '선택한 조명은 계속 켜져 있습니다.';

  @override
  String get breathSettings => '호흡 설정';

  @override
  String get activeLights => '활성 조명';

  @override
  String lightsCount(int count) {
    return '$count 조명';
  }

  @override
  String get speedSettings => '속도 설정';

  @override
  String speedSettingsDelay(int ms) {
    return '${ms}ms 지연';
  }

  @override
  String get durationAndSpeed => '기간 및 속도';

  @override
  String durationSpeedSummary(int duration, int interval) {
    return '$duration초 지속 시간, ${interval}ms 간격';
  }

  @override
  String get cancel => '취소';

  @override
  String get done => '완료';

  @override
  String get save => '구하다';

  @override
  String get block => '차단하다';

  @override
  String get delete => '삭제';

  @override
  String get recents => '최근';

  @override
  String get contacts => '콘택트 렌즈';

  @override
  String get hideFavouritesOnRecents => '최근 항목에서 즐겨찾기 숨기기';

  @override
  String get showFavouritesOnRecents => '최근 항목에 즐겨찾기 표시';

  @override
  String get ongoingCall => '진행 중인 통화';

  @override
  String get setAsDefaultTitle => '다음으로 설정\n기본값';

  @override
  String get setAsDefaultBody =>
      'Nothing Dialer를 사용하려면 기본 전화 앱으로 설정해야 합니다. 이를 통해 통화를 관리하고, 기록을 보고, 글리프 애니메이션을 사용할 수 있습니다.';

  @override
  String get setAsDefaultButton => '기본값으로 설정';

  @override
  String get nothingDialerBrand => '아무것도 다이얼러 1';

  @override
  String get favourites => '즐겨찾기';

  @override
  String get addFavourite => '즐겨찾기 추가';

  @override
  String get favouritesDrawerHint =>
      '메뉴를 사용하여 연락처를 추가하세요. 서랍 바깥쪽을 탭하거나 밀어서 닫으세요. 세부정보에서 연락처에 별표를 표시하거나 최근 통화에서 통화를 길게 누르세요.';

  @override
  String get menu => '메뉴';

  @override
  String get noFavouritesYet => '아직 즐겨찾기가 없습니다.\n메뉴를 열어 추가하거나 연락처에 별표를 표시하세요.';

  @override
  String get contactsPermissionNeeded => '연락처 권한이 필요합니다';

  @override
  String get chooseContact => '연락처 선택';

  @override
  String get noPhone => '전화 없음';

  @override
  String get pickNumber => '번호 선택';

  @override
  String get contactHasNoPhone => '이 연락처에는 전화번호가 없습니다.';

  @override
  String get blockNumber => '블록 번호';

  @override
  String get enterPhoneNumber => '전화번호를 입력하세요';

  @override
  String unblockedDisplay(String display) {
    return '차단 해제됨 $display';
  }

  @override
  String get couldNotUnblockNumber => '번호 차단을 해제할 수 없습니다.';

  @override
  String blockedSummary(int blocked, int matched) {
    return '$blocked 차단됨 • $matched 일치함';
  }

  @override
  String get contactsPermissionMissing => '연락처 권한이 없습니다. 수정하려면 탭하세요.';

  @override
  String get noBlockedNumbers => '차단된 번호 없음';

  @override
  String get unknownContact => '알 수 없는 연락처';

  @override
  String get unblock => '차단 해제';

  @override
  String get permissionNeeded => '권한이 필요합니다';

  @override
  String get grantPhonePermission => '통화 기록을 보려면 전화 권한을 부여하세요.';

  @override
  String get grantContactsPermission => '연락처에게 주소록을 볼 수 있는 권한을 부여하세요.';

  @override
  String get openSettings => '설정 열기';

  @override
  String get tryAgain => '다시 시도하세요';

  @override
  String get couldNotLoadContacts => '연락처를 로드할 수 없습니다.';

  @override
  String get contactsLoadError => '주소록을 읽는 중에 문제가 발생했습니다.';

  @override
  String get noContactsFound => '연락처를 찾을 수 없습니다.';

  @override
  String get contactsEmptySubtitle => '기기의 연락처가 여기에 표시됩니다.';

  @override
  String get searchContacts => '연락처 검색…';

  @override
  String get searchRecentCalls => '최근 통화 검색';

  @override
  String get fromContacts => '연락처에서';

  @override
  String get recentsSearchSection => '최근 검색';

  @override
  String get recentsSearchShowContacts => '검색에 연락처 표시';

  @override
  String get recentsSearchShowContactsSubtitle =>
      '최근 항목을 검색하는 동안 통화 기록 결과 아래에 주소록에서 일치하는 사람도 표시됩니다.';

  @override
  String get voiceSearch => '음성 검색';

  @override
  String get createNewContact => '새 연락처 만들기';

  @override
  String callError(String error) {
    return '통화 오류: $error';
  }

  @override
  String get noRecentCalls => '최근 통화 없음';

  @override
  String get callHistoryEmpty => '통화 기록이 여기에 표시됩니다.';

  @override
  String get loadMore => '더 로드하기';

  @override
  String get frequentlyContactedHeader => '자주 연락하는 사람';

  @override
  String get recentHistory => '최근 역사';

  @override
  String get noFavouritesRecentsHint =>
      '아직 즐겨찾기가 없습니다. 연락처에 별표를 표시하거나, 통화를 길게 누르거나, 즐겨찾기 탭을 사용하세요.';

  @override
  String get copyNumber => '번호 복사';

  @override
  String get editNumberBeforeCall => '통화 전 번호 수정';

  @override
  String get removeFromFavourites => '즐겨찾기에서 제거';

  @override
  String get addToFavourites => '즐겨찾기에 추가';

  @override
  String get blockNumberQuestion => '블록 번호?';

  @override
  String blockNumberConfirm(String number) {
    return '$number로부터 더 이상 전화나 문자를 받지 않습니다.';
  }

  @override
  String get blocked => '막힌';

  @override
  String get couldNotBlock => '차단할 수 없습니다.';

  @override
  String get contactNotOnDevice => '이 기기에 연락처가 저장되지 않았습니다.';

  @override
  String get unblocked => '차단 해제됨';

  @override
  String get numberCopied => '복사된 번호';

  @override
  String get showLess => '간략히 보기';

  @override
  String get showAllTimes => '모든 시간 표시';

  @override
  String mostRecent(String time) {
    return '가장 최근 · $time';
  }

  @override
  String get videoCall => '영상통화';

  @override
  String get couldNotPlaceVideoCall => '화상 통화를 걸 수 없습니다.';

  @override
  String get message => '메시지';

  @override
  String get couldNotOpenMessaging => '메시지 앱을 열 수 없습니다.';

  @override
  String get history => '역사';

  @override
  String get viewContact => '연락처 보기';

  @override
  String get addToContact => '연락처에 추가';

  @override
  String get callTypeMissed => '놓친';

  @override
  String get callTypeRejected => '거부됨';

  @override
  String get callTypeIncoming => '들어오는';

  @override
  String get callTypeOutgoing => '나가는';

  @override
  String get today => '오늘';

  @override
  String get yesterday => '어제';

  @override
  String get justNow => '방금';

  @override
  String minutesAgo(int count) {
    return '$count분 전';
  }

  @override
  String hoursAgo(int count) {
    return '$count시간 전';
  }

  @override
  String get filterAll => '모두';

  @override
  String get filterMissed => '놓친';

  @override
  String get filterContacts => '콘택트 렌즈';

  @override
  String get filterNonContacts => '비접촉';

  @override
  String get iconUpdated => '아이콘이 업데이트되었습니다. 홈 화면을 새로 고치는 데 잠시 시간이 걸릴 수 있습니다.';

  @override
  String get iconSavedRelease => '선택사항이 저장되었습니다. 릴리스 빌드에서 홈 화면 아이콘이 업데이트됩니다.';

  @override
  String couldNotChangeIcon(String error) {
    return '아이콘을 변경할 수 없습니다: $error';
  }

  @override
  String get launcherClassicBlack => '클래식(블랙)';

  @override
  String get launcherLight => '빛';

  @override
  String get launcherNothingRed => '빨간색은 없습니다';

  @override
  String get launcherDarkGrey => '다크 그레이';

  @override
  String get launcherCream => '크림';

  @override
  String get launcherRetroPhone => '레트로폰';

  @override
  String get launcherRetroPhoneLight => '레트로폰(라이트)';

  @override
  String get voiceSearchUnavailable => '이 기기에서는 음성 검색을 사용할 수 없습니다.';

  @override
  String voiceSearchFailed(String error) {
    return '음성 검색 실패: $error';
  }

  @override
  String get customColor => '관습';

  @override
  String get selectColor => '색상 선택';

  @override
  String get reset => '다시 놓기';

  @override
  String get simPickerTitle => 'SIM을 선택하세요';

  @override
  String get simChooseForCall => '이 통화에 SIM을 선택하세요';

  @override
  String get defaultSimAsk => '매번 물어보세요';

  @override
  String defaultSimFixed(int slot) {
    return 'SIM $slot';
  }

  @override
  String get contactDetails => '연락처';

  @override
  String get call => '부르다';

  @override
  String get share => '공유하다';

  @override
  String get favourite => '가장 좋아하는';

  @override
  String get unfavourite => '마음에 들지 않는';

  @override
  String get blockContact => '연락 차단';

  @override
  String get unblockContact => '연락처 차단 해제';

  @override
  String get deleteContact => '연락처 삭제';

  @override
  String get phone => '핸드폰';

  @override
  String get email => '이메일';

  @override
  String get ringtone => '벨소리';

  @override
  String get defaultRingtone => '기본';

  @override
  String get simForContact => '이 연락처의 SIM';

  @override
  String get callHistoryTitle => '통화 기록';

  @override
  String get noCallsWithNumber => '이 번호로 전화가 오지 않습니다';

  @override
  String durationMinutesSeconds(int minutes, int seconds) {
    return '$minutes분 $seconds초';
  }

  @override
  String durationSeconds(int seconds) {
    return '$seconds초';
  }

  @override
  String get glyphAnimationStyle => '글리프 애니메이션';

  @override
  String get inCallGlyphAnimationStyle => '통화 중 글리프 애니메이션';

  @override
  String get recordsOff => '끄다';

  @override
  String recordsCount(int count) {
    return '$count';
  }

  @override
  String get pickDefaultSim => '기본 SIM';

  @override
  String get nothingPhoneOnly => '없음 전화만 가능';

  @override
  String get nothingPhoneOnlySubtitle => 'Glyph 기능에는 Nothing Phone이 필요합니다.';

  @override
  String get custom => '관습';

  @override
  String presetColorHex(String hex) {
    return '사전 설정 · $hex';
  }

  @override
  String customColorHex(String hex) {
    return '맞춤 · $hex';
  }

  @override
  String get oneContact => '연락처 1개';

  @override
  String upToContacts(int count) {
    return '최대 $count 연락처';
  }

  @override
  String get answerButtonTapSubtitle => '답변하려면 버튼을 탭하세요.';

  @override
  String get filterCalls => '통화 필터링';

  @override
  String get filterTooltip => '필터';

  @override
  String get settingsTooltip => '설정';

  @override
  String get filterAllSubtitle => '전체 통화 기록';

  @override
  String get filterMissedSubtitle => '누락 및 거부됨';

  @override
  String get filterContactsSubtitle => '저장된 연락처와 일치하는 통화';

  @override
  String get filterNonContactsSubtitle => '주소록에 없는 번호';

  @override
  String ongoingCallWithDetail(String detail) {
    return '진행 중인 통화: $detail';
  }

  @override
  String get defaultSimForCalls => '통화용 기본 SIM';

  @override
  String get blinkInterval => '깜박임 간격';

  @override
  String get close => '닫다';

  @override
  String get frequentlyContactedInfoBody =>
      '선택한 기간 동안 각 전화번호에 대해 수신, 발신, 부재중 또는 거부된 전화 수를 기준으로 최근 탭 상단에 가장 많이 전화한 전화번호를 표시합니다.\n\n레코드 수: 이 기능을 끄려면 0으로 설정하세요. 1~20을 사용하여 많은 주요 연락처를 표시합니다.\n\n기간은 하나 이상의 연락처가 표시되는 경우에만 적용됩니다.';

  @override
  String breathSettingsSpeedSummary(int count, int ms) {
    return '$count 조명, ${ms}ms 속도';
  }

  @override
  String get deleteContactQuestion => '연락처를 삭제하시겠습니까?';

  @override
  String get deleteContactBody => '이 연락처는 기기에서 영구적으로 삭제됩니다.';

  @override
  String get blockContactQuestion => '연락을 차단하시겠습니까?';

  @override
  String get unblockContactQuestion => '연락처 차단을 해제하시겠습니까?';

  @override
  String get blockContactBody => '더 이상 이 연락처로부터 전화나 문자를 받지 않습니다.';

  @override
  String get unblockContactBody => '이 연락처로부터 전화와 문자를 받기 시작합니다.';

  @override
  String get contactBlocked => '연락처가 차단되었습니다.';

  @override
  String get contactUnblocked => '연락처가 차단 해제되었습니다.';

  @override
  String get noPhoneNumbersToBlock => '차단할 전화번호가 없습니다.';

  @override
  String get simSameAsSystem => '시스템과 동일';

  @override
  String get simSameAsSystemSubtitle => '설정에서 기본 SIM을 따릅니다.';

  @override
  String get simAskEveryTimeForContact => '이 연락처에 대해 SIM 선택기를 항상 표시합니다.';

  @override
  String get ringtoneSetForContact => '이 연락처에 대해 전역적으로 벨소리가 설정되었습니다.';

  @override
  String get ringtoneClearedForContact => 'Contact ringtone reset to default';

  @override
  String get ringtoneSilent => 'Silent';

  @override
  String failedPickRingtone(String error) {
    return '벨소리 선택 실패: $error';
  }

  @override
  String failedSetRingtone(String error) {
    return 'Failed to set ringtone: $error';
  }

  @override
  String genericError(String error) {
    return '오류: $error';
  }

  @override
  String get noCallHistoryFound => '통화 기록을 찾을 수 없습니다.';

  @override
  String get speedDialVoicemail => '단축 다이얼: 음성 메일';

  @override
  String shareContactSubject(String name) {
    return '연락처: $name';
  }

  @override
  String get contactInfo => '연락처 정보';

  @override
  String get dontAskAgainSim => '다시 묻지 마세요';

  @override
  String get simDontAskAgainSubtitle => '이 SIM을 기본값으로 사용(설정에서 변경)';

  @override
  String get addContact => '연락처 추가';

  @override
  String get createContact => '연락처 만들기';

  @override
  String get paste => '반죽';

  @override
  String get clear => '분명한';

  @override
  String get returnToCall => '통화로 돌아가기';

  @override
  String get numberOfRecordsTitle => '레코드 수';

  @override
  String get recordsPickerSubtitle => '표시할 자주 연락하는 항목 수(0 = 꺼짐)';

  @override
  String get torchInfoTitle => '토치 깜박임';

  @override
  String get torchInfoBody =>
      '전화 수신, 발신 또는 통화 진행 중에 카메라 플래시를 깜박입니다. Glyph 조명과 무관합니다.';

  @override
  String get glyphMapTitle => '글리프 레이아웃';

  @override
  String get glyphMapBody =>
      'Phone 1 Glyph LED 영역이 없습니다. 발신 및 통화 중 애니메이션은 이러한 채널을 사용합니다.';

  @override
  String get answerMethodTitle => '답변 방법';

  @override
  String get glyphOutgoingCallStyleTitle => '발신 통화 스타일';

  @override
  String get glyphInCallAnimationTitle => '글리프 통화 중 애니메이션';

  @override
  String get themePickerTitle => '주제';

  @override
  String get torchIncomingTitle => '수신 전화 토치';

  @override
  String get torchOutgoingTitle => '발신 통화 토치';

  @override
  String get torchOngoingTitle => '진행중인 통화 토치';

  @override
  String get timePeriodTitle => '기간';

  @override
  String get ok => '좋아요';

  @override
  String get confirmDeleteCall => '이 통화를 기록에서 삭제하시겠습니까?';

  @override
  String get confirmDeleteAllCalls => '이 번호로 걸려온 통화를 모두 삭제하시겠습니까?';

  @override
  String get whatsapp => '왓츠앱';

  @override
  String get sendMessage => '메시지 보내기';

  @override
  String get addToExistingContactAction => '연락처에 추가';

  @override
  String get mobileLabel => '이동하는';

  @override
  String get callingSimForContactTitle => '이 연락처에 SIM에 전화 거는 중';

  @override
  String get contactSettings => '연락처 설정';

  @override
  String get setCallingSim => '통화 SIM 설정';

  @override
  String get contactRingtone => '연락처 벨소리';

  @override
  String get shareContact => '연락처 공유';

  @override
  String get blockNumbers => '블록 번호';

  @override
  String get unblockNumbers => '번호 차단 해제';

  @override
  String get connectedApps => '연결된 앱';

  @override
  String get simNotSet => '설정되지 않음';

  @override
  String get ringtoneDefault => '기본';

  @override
  String get customRingtone => '관습';

  @override
  String get aboutSection => '에 대한';

  @override
  String get aboutFeedbackSection => '정보 및 피드백';

  @override
  String get aboutDescription =>
      '아무것도 다이얼러는 오픈 소스입니다. 개발자라면 코드를 탐색하고 기여할 수 있습니다.';

  @override
  String get aboutViewSource => 'GitHub에서 보기';

  @override
  String get aboutRepositoryHost => 'github.com/rkvishwa/Nothing-Dialer-1';

  @override
  String get aboutCouldNotOpenLink => '링크를 열 수 없습니다.';

  @override
  String get reviewSection => '검토';

  @override
  String get reviewDescription =>
      '아무것도 다이얼러를 즐기고 계십니까? Google Play에서의 평가는 다른 사람들이 앱을 찾는 데 도움이 됩니다.';

  @override
  String get reviewRateOnPlay => 'Google Play에서 평가하기';

  @override
  String get reviewRateOnPlaySubtitle => '앱을 종료하지 않고 평가를 남겨주세요';

  @override
  String get reviewCouldNotOpen => 'Google Play를 열 수 없습니다.';

  @override
  String get breathSpeed => '호흡 속도';

  @override
  String get breathSpeedBlinkHint => '낮음 = 깜박임, 높음 = 느린 호흡';

  @override
  String get speedSliderHint => '낮음 = 빠름, 높음 = 느림';

  @override
  String get swatchDefault => '기본';

  @override
  String get customAccentColorPicker => '맞춤 강조 색상';

  @override
  String get customLightBackgroundPicker => '사용자 정의 밝은 배경';

  @override
  String get customDarkBackgroundPicker => '사용자 정의 어두운 배경';

  @override
  String get customCallBackgroundPicker => '맞춤 통화 배경';

  @override
  String get ongoingCallStyleTitle => '진행 중인 통화 스타일';

  @override
  String get glyphMapUnavailable => '글리프 지도를 사용할 수 없습니다.';

  @override
  String get animationDelayRange => '애니메이션 지연(1초 - 10초)';

  @override
  String get animationDelayRangeSingle => '애니메이션 지연(0.1초 - 10초)';

  @override
  String get inCallMute => '무음';

  @override
  String get inCallKeypad => '키패드';

  @override
  String get inCallSpeaker => '스피커';

  @override
  String get inCallMore => '더';

  @override
  String get inCallBluetooth => '블루투스';

  @override
  String get inCallPhone => '핸드폰';

  @override
  String get inCallAddCall => '통화 추가';

  @override
  String get inCallChangeSim => 'SIM 변경';

  @override
  String get inCallDecline => '감소';

  @override
  String get inCallAnswer => '답변';

  @override
  String get inCallMessage => '메시지';

  @override
  String get inCallCalling => '부름…';

  @override
  String get inCallIncoming => '전화 수신';

  @override
  String get inCallSelectSim => 'SIM을 선택하세요…';

  @override
  String get inCallSwitchingSim => 'SIM 전환 중…';

  @override
  String get inCallCallEnded => '통화가 종료되었습니다.';

  @override
  String inCallCallingVia(String sim) {
    return '$sim로 전화 걸기';
  }

  @override
  String inCallCallingViaHtml(String sim) {
    return '<b>$sim</b>로 전화 걸기';
  }

  @override
  String get inCallChooseSim => '이 통화에 SIM을 선택하세요';

  @override
  String get inCallDragAnswerDecline =>
      '응답하려면 오른쪽으로 드래그하세요. 거부하려면 왼쪽으로 드래그하세요.';

  @override
  String inCallMobileNumber(String number) {
    return '모바일 $number';
  }

  @override
  String inCallAudioRouteCurrent(String label) {
    return '$label (현재)';
  }

  @override
  String inCallCallViaFrom(String sim) {
    return '에서 <b>$sim</b>로 전화하세요.';
  }

  @override
  String get inCallCallFrom => '다음에서 전화 걸기';

  @override
  String get inCallUnknown => '알려지지 않은';

  @override
  String get selectContactRingtone => '연락처 벨소리 선택';

  @override
  String get speakToSearchPrompt => '음성으로 검색';

  @override
  String get phonePermissionRequired => '전화 권한이 필요합니다';

  @override
  String callFailed(String error) {
    return '통화 실패: $error';
  }

  @override
  String get callPermissionDenied => '통화 권한이 거부되었습니다.';

  @override
  String get alreadyDefaultDialer => '이미 기본 다이얼러로 설정되어 있습니다.';

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
