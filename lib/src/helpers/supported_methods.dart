// 🌎 Project imports:
import 'package:portone_flutter_v2/src/enums/enums.dart';

/// PG사별 지원되는 결제수단이 모두 상이합니다.
/// [각 PG사별 결제 연동 가이드](https://developers.portone.io/opi/ko/integration/pg/v2/readme?v=v2)를 참고하세요
extension PaymentSupportedMethods on PGCompany? {
  /// PG사별 지원되는 결제수단
  List<PaymentPayMethod> get methods {
    return switch (this) {
      // https://developers.portone.io/opi/ko/integration/pg/v2/nice-v2?v=v2
      PGCompany.niceV2 => <PaymentPayMethod>[
        PaymentPayMethod.CARD,
        PaymentPayMethod.TRANSFER,
        PaymentPayMethod.VIRTUAL_ACCOUNT,
        PaymentPayMethod.MOBILE,
        PaymentPayMethod.EASY_PAY,
        PaymentPayMethod.GIFT_CERTIFICATE,
      ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/smartro-v2?v=v2
      PGCompany.smartroV2 => <PaymentPayMethod>[
        PaymentPayMethod.CARD,
        PaymentPayMethod.TRANSFER,
        PaymentPayMethod.VIRTUAL_ACCOUNT,
        PaymentPayMethod.MOBILE,
        PaymentPayMethod.EASY_PAY,
      ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/tosspayments?v=v2
      PGCompany.tosspayments => <PaymentPayMethod>[
        PaymentPayMethod.CARD,
        PaymentPayMethod.TRANSFER,
        PaymentPayMethod.VIRTUAL_ACCOUNT,
        PaymentPayMethod.MOBILE,
        PaymentPayMethod.EASY_PAY,
        PaymentPayMethod.GIFT_CERTIFICATE,
      ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/kpn?v=v2
      PGCompany.kpn => <PaymentPayMethod>[
        PaymentPayMethod.CARD,
        PaymentPayMethod.TRANSFER,
        PaymentPayMethod.VIRTUAL_ACCOUNT,
        PaymentPayMethod.MOBILE,
        PaymentPayMethod.EASY_PAY,
      ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/inicis-v2?v=v2
      PGCompany.inicisV2 => <PaymentPayMethod>[
        PaymentPayMethod.CARD,
        PaymentPayMethod.MOBILE,
      ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/inicis-jp?v=v2
      PGCompany.inicisJp => <PaymentPayMethod>[
        PaymentPayMethod.CARD,
        PaymentPayMethod.CONVENIENCE_STORE,
        PaymentPayMethod.EASY_PAY,
      ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/ksnet?v=v2
      PGCompany.ksnet => <PaymentPayMethod>[
        PaymentPayMethod.CARD,
        PaymentPayMethod.TRANSFER,
        PaymentPayMethod.VIRTUAL_ACCOUNT,
        PaymentPayMethod.MOBILE,
        PaymentPayMethod.EASY_PAY,
      ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/kcp-v2?v=v2
      PGCompany.kcpV2 => <PaymentPayMethod>[
        PaymentPayMethod.CARD,
        PaymentPayMethod.TRANSFER,
        PaymentPayMethod.VIRTUAL_ACCOUNT,
        PaymentPayMethod.MOBILE,
        PaymentPayMethod.EASY_PAY,
      ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/kakaopay?v=v2
      PGCompany.kakaopay => <PaymentPayMethod>[PaymentPayMethod.EASY_PAY],
      // https://developers.portone.io/opi/ko/integration/pg/v2/naverpay?v=v2
      PGCompany.naverpay => <PaymentPayMethod>[PaymentPayMethod.EASY_PAY],
      // https://developers.portone.io/opi/ko/integration/pg/v2/tosspay-v2?v=v2
      PGCompany.tosspayV2 => <PaymentPayMethod>[PaymentPayMethod.EASY_PAY],
      // https://developers.portone.io/opi/ko/integration/pg/v2/hyphen?v=v2
      PGCompany.hyphen => <PaymentPayMethod>[PaymentPayMethod.EASY_PAY],
      // https://developers.portone.io/opi/ko/integration/pg/v2/eximbay-v2?v=v2
      PGCompany.eximbayV2 => <PaymentPayMethod>[PaymentPayMethod.CARD],
      // https://developers.portone.io/opi/ko/integration/pg/v2/triple-a?v=v2
      PGCompany.tripleA => <PaymentPayMethod>[PaymentPayMethod.CARD],
      _ => PaymentPayMethod.values,
    };
  }
}
