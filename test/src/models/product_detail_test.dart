// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

void main() {
  group('ProductDetail', () {
    test('should create ProductDetail with required fields', () {
      final productDetail = ProductDetail(
          id: 'product-001', name: 'Test Product', amount: 1000, quantity: 1);

      expect(productDetail.id, equals('product-001'));
      expect(productDetail.name, equals('Test Product'));
      expect(productDetail.amount, equals(1000));
      expect(productDetail.quantity, equals(1));
    });

    test('should create ProductDetail with optional fields', () {
      final productDetail = ProductDetail(
        id: 'product-001',
        name: 'Test Product',
        amount: 1000,
        quantity: 1,
        code: 'USD',
        tag: 'Test Tag',
        link: 'https://example.com',
      );

      expect(productDetail.code, equals('USD'));
      expect(productDetail.tag, equals('Test Tag'));
      expect(productDetail.link, equals('https://example.com'));
    });

    test('fromJson should handle null optional fields', () {
      final json = {
        'id': 'product-001',
        'name': 'Test Product',
        'amount': 1000,
        'quantity': 1
      };

      final productDetail = ProductDetail.fromJson(json);

      expect(productDetail.tag, isNull);
      expect(productDetail.link, isNull);
    });

    test('toJson should include all non-null fields', () {
      final productDetail = ProductDetail(
          id: 'product-001', name: 'Test Product', amount: 1000, quantity: 1);

      final json = productDetail.toJson();

      expect(json['id'], equals('product-001'));
      expect(json['name'], equals('Test Product'));
      expect(json['amount'], equals(1000));
      expect(json['quantity'], equals(1));
    });
  });
}
