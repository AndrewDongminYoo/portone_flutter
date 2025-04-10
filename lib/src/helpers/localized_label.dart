// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/enums/pg_company.dart';
import 'package:portone_flutter_v2/src/l10n/portone_localizations.dart';

extension PGCompanyLocalization on PGCompany {
  /// BuildContext를 받아 해당 PGCompany의 로컬라이즈된 레이블을 반환합니다.
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
    }
  }
}
