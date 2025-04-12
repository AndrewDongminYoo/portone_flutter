// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

void main() {
  group('PaymentRequest', () {
    test('should create PaymentRequest with required fields', () {
      final paymentRequest = PaymentRequest(
        storeId: 'store123',
        paymentId: 'payment123',
        orderName: 'Test Order',
        totalAmount: 1000,
        currency: PaymentCurrency.USD,
        payMethod: PaymentPayMethod.card,
        appScheme: 'myapp',
      );

      expect(paymentRequest.storeId, equals('store123'));
      expect(paymentRequest.paymentId, equals('payment123'));
      expect(paymentRequest.orderName, equals('Test Order'));
      expect(paymentRequest.totalAmount, equals(1000));
      expect(paymentRequest.currency, equals(PaymentCurrency.USD));
      expect(paymentRequest.payMethod, equals(PaymentPayMethod.card));
      expect(paymentRequest.appScheme, equals('myapp'));
    });

    test('should create PaymentRequest with optional fields', () {
      final paymentRequest = PaymentRequest(
        storeId: 'store123',
        paymentId: 'payment123',
        orderName: 'Test Order',
        totalAmount: 1000,
        currency: PaymentCurrency.USD,
        payMethod: PaymentPayMethod.card,
        appScheme: 'myapp',
        channelKey: 'channel123',
        taxFreeAmount: 100,
        vatAmount: 90,
        isEscrow: true,
        locale: PaymentLocale.enUs,
        customData: {'key': 'value'},
        isCulturalExpense: false,
        country: Country.US,
        productType: ProductType.digital,
        expiredTime: '2025-04-12 18:18:17',
      );

      expect(paymentRequest.channelKey, equals('channel123'));
      expect(paymentRequest.taxFreeAmount, equals(100));
      expect(paymentRequest.vatAmount, equals(90));
      expect(paymentRequest.isEscrow, isTrue);
      expect(paymentRequest.locale, equals(PaymentLocale.enUs));
      expect(paymentRequest.customData, equals({'key': 'value'}));
      expect(paymentRequest.isCulturalExpense, isFalse);
      expect(paymentRequest.country, equals(Country.US));
      expect(paymentRequest.productType, equals(ProductType.digital));
      expect(paymentRequest.expiredTime, equals('2025-04-12 18:18:17'));
    });

    test('should create PaymentRequest with array fields', () {
      final paymentRequest = PaymentRequest(
        storeId: 'store123',
        paymentId: 'payment123',
        orderName: 'Test Order',
        totalAmount: 1000,
        currency: PaymentCurrency.USD,
        payMethod: PaymentPayMethod.card,
        appScheme: 'myapp',
        noticeUrls: ['http://example.com/notice1', 'http://example.com/notice2'],
        products: [
          ProductDetail.fromJson({'id': '1', 'name': 'Product 1', 'amount': 500, 'quantity': 1}),
          ProductDetail.fromJson({'id': '2', 'name': 'Product 2', 'amount': 500, 'quantity': 1}),
        ],
      );

      expect(paymentRequest.noticeUrls, hasLength(2));
      expect(paymentRequest.noticeUrls![0], equals('http://example.com/notice1'));
      expect(paymentRequest.products, hasLength(2));
      expect(paymentRequest.products![0].name, equals('Product 1'));
      expect(paymentRequest.products![1].amount, equals(500));
    });
  });
}
