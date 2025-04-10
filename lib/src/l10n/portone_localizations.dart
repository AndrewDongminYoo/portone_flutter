// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/l10n/portone_localizations_en.dart';
import 'package:portone_flutter_v2/src/l10n/portone_localizations_ko.dart';

abstract class PortoneLocalizations {
  PortoneLocalizations(this.localeName);

  final String localeName;

  static PortoneLocalizations? of(BuildContext context) {
    return Localizations.of<PortoneLocalizations>(context, PortoneLocalizations);
  }

  static const LocalizationsDelegate<PortoneLocalizations> delegate = _PortoneLocalizationsDelegate();

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
