// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

void main() {
  group('PaypalV2Bypass', () {
    test('should create PaypalV2Bypass instance with all fields', () {
      final bypass = PaypalV2Bypass(
        purchaseUnits: <Map<String, dynamic>>[
          <String, dynamic>{'amount': 100, 'currency': 'USD'},
        ],
        payer: <String, dynamic>{'email': 'test@example.com'},
        paymentSource: <String, dynamic>{
          'paypal': <String, dynamic>{},
        },
        additionalData: <Map<String, dynamic>>[
          <String, dynamic>{'key': 'value'},
        ],
      );

      expect(bypass.purchaseUnits, isNotNull);
      expect(bypass.purchaseUnits?.length, 1);
      expect(bypass.payer, <String, dynamic>{'email': 'test@example.com'});
      expect(
        bypass.paymentSource,
        <String, dynamic>{'paypal': <String, dynamic>{}},
      );
      expect(bypass.additionalData, isNotNull);
      expect(bypass.additionalData?.length, 1);
    });

    test('should create PaypalV2Bypass instance with null values', () {
      final bypass = PaypalV2Bypass();

      expect(bypass.purchaseUnits, isNull);
      expect(bypass.payer, isNull);
      expect(bypass.paymentSource, isNull);
      expect(bypass.additionalData, isNull);
    });

    test('should convert PaypalV2Bypass to JSON with all fields', () {
      final bypass = PaypalV2Bypass(
        purchaseUnits: <Map<String, dynamic>>[
          <String, dynamic>{'amount': 100, 'currency': 'USD'},
        ],
        payer: <String, dynamic>{'email': 'test@example.com'},
        paymentSource: <String, dynamic>{
          'paypal': <String, dynamic>{},
        },
        additionalData: <Map<String, dynamic>>[
          <String, dynamic>{'key': 'value'},
        ],
      );

      final json = bypass.toJson();

      expect(json['purchase_units'], isNotNull);
      expect(
        json['payer'],
        <String, dynamic>{'email': 'test@example.com'},
      );
      expect(
        json['payment_source'],
        <String, dynamic>{'paypal': <String, dynamic>{}},
      );
      expect(json['additional_data'], isNotNull);
    });

    test('should convert PaypalV2Bypass to JSON with null values', () {
      final bypass = PaypalV2Bypass();
      final json = bypass.toJson();
      expect(json, <String, dynamic>{});
    });

    test('should create PaypalV2Bypass from JSON with all fields', () {
      final json = <String, dynamic>{
        'purchase_units': <Map<String, dynamic>>[
          <String, dynamic>{'amount': 100, 'currency': 'USD'},
        ],
        'payer': <String, dynamic>{'email': 'test@example.com'},
        'payment_source': <String, dynamic>{
          'paypal': <String, dynamic>{},
        },
        'additional_data': <Map<String, dynamic>>[
          <String, dynamic>{'key': 'value'},
        ],
      };

      final bypass = PaypalV2Bypass.fromJson(json);

      expect(bypass.purchaseUnits, isNotNull);
      expect(bypass.purchaseUnits?.length, 1);
      expect(
        bypass.payer,
        <String, dynamic>{'email': 'test@example.com'},
      );
      expect(
        bypass.paymentSource,
        <String, dynamic>{'paypal': <String, dynamic>{}},
      );
      expect(bypass.additionalData, isNotNull);
    });

    test('should create PaypalV2Bypass from empty JSON', () {
      final json = <String, dynamic>{};
      final bypass = PaypalV2Bypass.fromJson(json);

      expect(bypass.purchaseUnits, isNull);
      expect(bypass.payer, isNull);
      expect(bypass.paymentSource, isNull);
      expect(bypass.additionalData, isNull);
    });

    test('should create PaypalV2Bypass from JSON with partial fields', () {
      final json = <String, dynamic>{
        'purchase_units': <Map<String, dynamic>>[
          <String, dynamic>{'amount': 100},
        ],
        'payer': <String, dynamic>{'email': 'test@example.com'},
      };

      final bypass = PaypalV2Bypass.fromJson(json);

      expect(bypass.purchaseUnits, isNotNull);
      expect(
        bypass.payer,
        <String, dynamic>{'email': 'test@example.com'},
      );
      expect(bypass.paymentSource, isNull);
      expect(bypass.additionalData, isNull);
    });
  });
}
