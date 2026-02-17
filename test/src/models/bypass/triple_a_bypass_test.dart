// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

void main() {
  group('TripleABypass', () {
    test('should create TripleABypass instance with all fields', () {
      final bypass = TripleABypass(
        payerPoi: 'https://example.com/poi.pdf',
        shippingCost: 500,
        shippingDiscount: 100,
        taxCost: 50,
      );

      expect(bypass.payerPoi, 'https://example.com/poi.pdf');
      expect(bypass.shippingCost, 500);
      expect(bypass.shippingDiscount, 100);
      expect(bypass.taxCost, 50);
    });

    test('should create TripleABypass instance with null values', () {
      final bypass = TripleABypass();

      expect(bypass.payerPoi, isNull);
      expect(bypass.shippingCost, isNull);
      expect(bypass.shippingDiscount, isNull);
      expect(bypass.taxCost, isNull);
    });

    test('should convert TripleABypass to JSON with all fields', () {
      final bypass = TripleABypass(
        payerPoi: 'https://example.com/poi.pdf',
        shippingCost: 500,
        shippingDiscount: 100,
        taxCost: 50,
      );

      final json = bypass.toJson();

      expect(json, {
        'payer_poi': 'https://example.com/poi.pdf',
        'shipping_cost': 500,
        'shipping_discount': 100,
        'tax_cost': 50,
      });
    });

    test('should convert TripleABypass to JSON with null values', () {
      final bypass = TripleABypass();
      final json = bypass.toJson();
      expect(json, <String, dynamic>{});
    });

    test('should create TripleABypass from JSON with all fields', () {
      final json = {
        'payer_poi': 'https://example.com/poi.pdf',
        'shipping_cost': 500,
        'shipping_discount': 100,
        'tax_cost': 50,
      };

      final bypass = TripleABypass.fromJson(json);

      expect(bypass.payerPoi, 'https://example.com/poi.pdf');
      expect(bypass.shippingCost, 500);
      expect(bypass.shippingDiscount, 100);
      expect(bypass.taxCost, 50);
    });

    test('should create TripleABypass from empty JSON', () {
      final json = <String, dynamic>{};
      final bypass = TripleABypass.fromJson(json);

      expect(bypass.payerPoi, isNull);
      expect(bypass.shippingCost, isNull);
      expect(bypass.shippingDiscount, isNull);
      expect(bypass.taxCost, isNull);
    });

    test('should create TripleABypass from JSON with partial fields', () {
      final json = {
        'payer_poi': 'https://example.com/poi.pdf',
        'shipping_cost': 500,
      };

      final bypass = TripleABypass.fromJson(json);

      expect(bypass.payerPoi, 'https://example.com/poi.pdf');
      expect(bypass.shippingCost, 500);
      expect(bypass.shippingDiscount, isNull);
      expect(bypass.taxCost, isNull);
    });
  });
}
