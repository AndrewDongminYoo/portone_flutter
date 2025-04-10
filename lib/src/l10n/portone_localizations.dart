// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/l10n/portone_localizations_en.dart';
import 'package:portone_flutter_v2/src/l10n/portone_localizations_ko.dart';

/// [PortoneLocalizations]는 PG사 관련 텍스트의 로컬라이제이션 문자열을 제공합니다.
///
/// **현재 지원 로케일:**
/// - English ('en'): [PortoneLocalizationsEn]을 참고하세요.
/// - Korean ('ko'): [PortoneLocalizationsKo]를 참고하세요.
///
/// **중요:**
/// 1. `PGCompanyLocalization` 확장 메소드(.localizedLabel)를 사용하면,
///    Flutter 앱의 최상위 위젯(예: MaterialApp)에 반드시
///    [PortoneLocalizations.delegate]와 [PortoneLocalizations.supportedLocales]를 등록해야 합니다.
/// 2. 만약 확장 메소드를 사용하지 않는다면 로컬라이제이션 등록은 선택 사항입니다.
/// 3. **추가 언어 지원 시 반드시 참고:**
///    - [PortoneLocalizationsEn]와 [PortoneLocalizationsKo]의 구현을 참고하여 새로운 로케일 파일을 작성합니다.
///    - 새로운 Locale (예: Locale('es'))을 [supportedLocales] 리스트에 추가합니다.
///    - [lookupPortOneLocalizations] 함수에 새로운 로케일에 대한 케이스를 추가해,
///      해당 언어를 지원하는 [PortoneLocalizations] 인스턴스를 반환하도록 구현해야 합니다.
abstract class PortoneLocalizations {
  PortoneLocalizations(this.localeName);

  final String localeName;

  /// 주어진 [BuildContext]에서 [PortoneLocalizations] 인스턴스를 가져옵니다.
  static PortoneLocalizations? of(BuildContext context) {
    return Localizations.of<PortoneLocalizations>(context, PortoneLocalizations);
  }

  /// 로컬라이제이션 델리게이트.
  /// 앱에 반드시 등록하여 로케일별 [PortoneLocalizations]를 사용할 수 있도록 합니다.
  static const LocalizationsDelegate<PortoneLocalizations> delegate = _PortoneLocalizationsDelegate();

  /// 지원하는 로케일 목록.
  /// 추가 언어 지원 시 여기에 새로운 Locale을 추가하세요.
  static const List<Locale> supportedLocales = <Locale>[Locale('en'), Locale('ko')];

  /// 엑심베이
  String get eximbayV2;

  /// 하이픈
  String get hyphen;

  /// KG이니시스(일본)
  String get inicisJp;

  /// KG이니시스
  String get inicisV2;

  /// 카카오페이
  String get kakaopay;

  /// NHN KCP
  String get kcpV2;

  /// 한국결제네트웍스
  String get kpn;

  /// KSNET
  String get ksnet;

  /// 네이버페이
  String get naverpay;

  /// 나이스페이먼츠
  String get niceV2;

  /// 페이레터
  String get payletterGlobal;

  /// 스마트로
  String get smartroV2;

  /// 토스 브랜드페이
  String get tossBrandpay;

  /// 토스페이
  String get tosspayV2;

  /// 토스페이먼츠
  String get tosspayments;

  /// 웰컴페이먼츠
  String get welcome;
}

/// 로컬라이제이션 델리게이트로, 사용자가 선택한 Locale에 따라
/// 올바른 [PortoneLocalizations] 인스턴스를 로드합니다.
class _PortoneLocalizationsDelegate extends LocalizationsDelegate<PortoneLocalizations> {
  const _PortoneLocalizationsDelegate();

  @override
  Future<PortoneLocalizations> load(Locale locale) async {
    return lookupPortOneLocalizations(locale);
  }

  @override
  bool isSupported(Locale locale) => true;

  @override
  bool shouldReload(_PortoneLocalizationsDelegate old) => false;
}

/// 주어진 [Locale]에 맞는 [PortoneLocalizations] 인스턴스를 반환합니다.
///
/// **추가 언어 지원 시 구현해야 할 사항:**
/// - 새로운 로케일에 맞는 [PortoneLocalizations] 구현체를 생성하고,
///   switch 문에 새로운 케이스를 추가하여 반환하도록 수정합니다.
PortoneLocalizations lookupPortOneLocalizations(Locale locale) {
  switch (locale.languageCode) {
    case 'en':
      return PortoneLocalizationsEn();
    case 'ko':
      return PortoneLocalizationsKo();
  }

  if (kDebugMode) {
    debugPrint(
      'PortoneLocalizations.delegate failed to load locale "$locale". '
      'Falling back to Korean localizations. You can override the locale '
      'by explicitly passing [locale] when pushing the cropper.',
    );
  }

  return PortoneLocalizationsKo();
}
