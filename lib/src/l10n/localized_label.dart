// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/enums/pg_company.dart';
import 'package:portone_flutter_v2/src/l10n/portone_localizations.dart';

/// [PortoneLocalizations]를 기반으로 PGCompany에 대한 로컬라이즈된 텍스트를 제공하는 확장 메소드입니다.
///
/// **중요:**
/// - 이 확장 메소드를 사용하여 [PGCompanyLocalization.localizedLabel]을 호출하는 경우,
///   Flutter 앱의 최상위 위젯(예: [MaterialApp])에 반드시 [PortoneLocalizations.delegate]와
///   [PortoneLocalizations.supportedLocales]를 등록해야 합니다. 그래야 [PortoneLocalizations.of]
///   를 통해 올바른 로컬라이제이션 인스턴스를 얻을 수 있습니다.
///
///   예시:
///   ```dart
///   MaterialApp(
///     localizationsDelegates: const [
///       PortoneLocalizations.delegate,
///       GlobalMaterialLocalizations.delegate,
///       GlobalWidgetsLocalizations.delegate,
///       GlobalCupertinoLocalizations.delegate,
///     ],
///     supportedLocales: PortoneLocalizations.supportedLocales,
///     // ... 기타 설정
///   );
///   ```
///
/// - 만약 이 확장 메소드를 사용하지 않는다면, 위의 로컬라이제이션 등록은 선택 사항입니다.
extension PGCompanyLocalization on PGCompany {
  /// [BuildContext]를 받아 해당 PGCompany의 로컬라이즈된 레이블을 반환합니다.
  ///
  /// [PortoneLocalizations.of(context)]가 null을 반환하는 경우엔 enum의 [value]를 기본값으로 반환합니다.
  String localizedLabel(BuildContext context) {
    final localizations = PortoneLocalizations.of(context);
    if (localizations == null) return value; // fallback: enum의 value 반환

    switch (this) {
      case PGCompany.eximbayV2:
        return localizations.eximbayV2;
      case PGCompany.hyphen:
        return localizations.hyphen;
      case PGCompany.inicisJp:
        return localizations.inicisJp;
      case PGCompany.inicisV2:
        return localizations.inicisV2;
      case PGCompany.kakaopay:
        return localizations.kakaopay;
      case PGCompany.kcpV2:
        return localizations.kcpV2;
      case PGCompany.kpn:
        return localizations.kpn;
      case PGCompany.ksnet:
        return localizations.ksnet;
      case PGCompany.naverpay:
        return localizations.naverpay;
      case PGCompany.niceV2:
        return localizations.niceV2;
      case PGCompany.payletterGlobal:
        return localizations.payletterGlobal;
      case PGCompany.smartroV2:
        return localizations.smartroV2;
      case PGCompany.tossBrandpay:
        return localizations.tossBrandpay;
      case PGCompany.tosspayV2:
        return localizations.tosspayV2;
      case PGCompany.tosspayments:
        return localizations.tosspayments;
      case PGCompany.welcome:
        return localizations.welcome;
      case PGCompany.tripleA:
        return localizations.tripleA;
    }
  }
}
