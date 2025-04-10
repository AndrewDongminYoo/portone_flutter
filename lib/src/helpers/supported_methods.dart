// 🌎 Project imports:
import 'package:portone_flutter_v2/src/enums/enums.dart';

extension PaymentSupportedMethods on PGCompany? {
  List<PaymentPayMethod> get methods {
    return switch (this) {
      // https://developers.portone.io/opi/ko/integration/pg/v2/nice-v2?v=v2
      PGCompany.niceV2 => <PaymentPayMethod>[
          PaymentPayMethod.card,
          PaymentPayMethod.transfer,
          PaymentPayMethod.virtualAccount,
          PaymentPayMethod.mobile,
          PaymentPayMethod.easyPay,
          PaymentPayMethod.giftCertificate,
        ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/smartro-v2?v=v2
      PGCompany.smartroV2 => <PaymentPayMethod>[
          PaymentPayMethod.card,
          PaymentPayMethod.transfer,
          PaymentPayMethod.virtualAccount,
          PaymentPayMethod.mobile,
          PaymentPayMethod.easyPay,
        ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/tosspayments?v=v2
      PGCompany.tosspayments => <PaymentPayMethod>[
          PaymentPayMethod.card,
          PaymentPayMethod.transfer,
          PaymentPayMethod.virtualAccount,
          PaymentPayMethod.mobile,
          PaymentPayMethod.easyPay,
          PaymentPayMethod.giftCertificate,
        ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/kpn?v=v2
      PGCompany.kpn => <PaymentPayMethod>[
          PaymentPayMethod.card,
          PaymentPayMethod.transfer,
          PaymentPayMethod.virtualAccount,
          PaymentPayMethod.mobile,
          PaymentPayMethod.easyPay,
        ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/inicis-v2?v=v2
      PGCompany.inicisV2 => <PaymentPayMethod>[
          PaymentPayMethod.card,
          PaymentPayMethod.mobile,
        ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/inicis-jp?v=v2
      PGCompany.inicisJp => <PaymentPayMethod>[
          PaymentPayMethod.card,
          PaymentPayMethod.convenienceStore,
          PaymentPayMethod.easyPay,
        ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/ksnet?v=v2
      PGCompany.ksnet => <PaymentPayMethod>[
          PaymentPayMethod.card,
          PaymentPayMethod.transfer,
          PaymentPayMethod.virtualAccount,
          PaymentPayMethod.mobile,
          PaymentPayMethod.easyPay,
        ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/kcp-v2?v=v2
      PGCompany.kcpV2 => <PaymentPayMethod>[
          PaymentPayMethod.card,
          PaymentPayMethod.transfer,
          PaymentPayMethod.virtualAccount,
          PaymentPayMethod.mobile,
          PaymentPayMethod.easyPay,
        ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/kakaopay?v=v2
      PGCompany.kakaopay => <PaymentPayMethod>[
          PaymentPayMethod.easyPay,
        ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/naverpay?v=v2
      PGCompany.naverpay => <PaymentPayMethod>[
          PaymentPayMethod.easyPay,
        ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/tosspay-v2?v=v2
      PGCompany.tosspayV2 => <PaymentPayMethod>[
          PaymentPayMethod.easyPay,
        ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/hyphen?v=v2
      PGCompany.hyphen => <PaymentPayMethod>[
          PaymentPayMethod.easyPay,
        ],
      // https://developers.portone.io/opi/ko/integration/pg/v2/eximbay-v2?v=v2
      PGCompany.eximbayV2 => <PaymentPayMethod>[
          PaymentPayMethod.card,
        ],
      _ => PaymentPayMethod.values
    };
  }
}
