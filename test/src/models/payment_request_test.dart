// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

void main() {
  group('PaymentRequest', () {
    test('should create PaymentRequest with required fields', () {
      final paymentRequest = PaymentRequest(
        storeId: 'store-00000000-0000-0000-0000-000000000000',
        paymentId: 'payment-00000000-0000-0000-0000-000000000000',
        orderName: 'Test Order',
        totalAmount: 1000,
        currency: PaymentCurrency.USD,
        payMethod: PaymentPayMethod.card,
        appScheme: 'portoneTest',
      );

      expect(paymentRequest.storeId, equals('store-00000000-0000-0000-0000-000000000000'));
      expect(paymentRequest.paymentId, equals('payment-00000000-0000-0000-0000-000000000000'));
      expect(paymentRequest.orderName, equals('Test Order'));
      expect(paymentRequest.totalAmount, equals(1000));
      expect(paymentRequest.currency, equals(PaymentCurrency.USD));
      expect(paymentRequest.payMethod, equals(PaymentPayMethod.card));
      expect(paymentRequest.appScheme, equals('portoneTest'));
    });

    test('should create PaymentRequest with optional fields', () {
      final paymentRequest = PaymentRequest(
        storeId: 'store-00000000-0000-0000-0000-000000000000',
        paymentId: 'payment-00000000-0000-0000-0000-000000000000',
        orderName: 'Test Order',
        totalAmount: 1000,
        currency: PaymentCurrency.USD,
        payMethod: PaymentPayMethod.card,
        appScheme: 'portoneTest',
        channelKey: 'channel-key-00000000-0000-0000-0000-000000000000',
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

      expect(paymentRequest.channelKey, equals('channel-key-00000000-0000-0000-0000-000000000000'));
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
        storeId: 'store-00000000-0000-0000-0000-000000000000',
        paymentId: 'payment-00000000-0000-0000-0000-000000000000',
        orderName: 'Test Order',
        totalAmount: 1000,
        currency: PaymentCurrency.USD,
        payMethod: PaymentPayMethod.card,
        appScheme: 'portoneTest',
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

    test('fromJson and toJson', () {
      // 테스트를 위한 샘플 JSON 데이터
      final json = <String, dynamic>{
        'storeId': 'store-00000000-0000-0000-0000-000000000000',
        'paymentId': 'payment_001',
        'orderName': 'Test Order',
        'totalAmount': 1000,
        'currency': 'CURRENCY_KRW', // PaymentCurrency enum에 맞는 값으로 변환되어야 함
        'payMethod': 'CARD', // PaymentPayMethod enum에 맞는 값으로 변환되어야 함
        'appScheme': 'portoneTest',
        // 선택적 필드는 테스트 상황에 맞게 null 또는 적당한 값을 지정할 수 있음
        'channelKey': 'channel-key-00000000-0000-0000-0000-000000000000',
        'channelGroupId': null,
        'taxFreeAmount': null,
        'vatAmount': null,
        'customer': null,
        'windowType': null,
        'redirectUrl': null,
        'noticeUrls': null,
        'confirmUrl': null,
        'isEscrow': null,
        'products': null,
        'isCulturalExpense': null,
        'locale': null,
        'customData': null,
        'expiredTime': null,
        'bypass': null,
        'country': null,
        'productType': null,
        'cashReceiptTradeOption': null,
        'offerPeriod': null,
        'storeDetails': null,
        'shippingAddress': null,
        'promotionId': null,
        'popup': null,
      };

      // JSON -> PaymentRequest 객체 생성
      final request = PaymentRequest.fromJson(json);

      // 필드 값이 올바르게 할당되었는지 검증
      expect(request.storeId, json['storeId']);
      expect(request.paymentId, json['paymentId']);
      expect(request.orderName, json['orderName']);
      expect(request.totalAmount, json['totalAmount']);
      // enum의 경우 toString() 결과를 이용해 확인할 수 있으며, 실제 enum 구현에 따라 수정 필요
      expect(request.currency.toString(), contains('KRW'));
      expect(request.payMethod.toString(), contains('CARD'));
      expect(request.appScheme, json['appScheme']);

      // PaymentRequest 객체를 다시 JSON으로 직렬화
      final resultJson = request.toJson();

      // 직렬화한 결과의 각 필드가 원본과 일치하는지 검증
      expect(resultJson['storeId'], json['storeId']);
      expect(resultJson['paymentId'], json['paymentId']);
      expect(resultJson['orderName'], json['orderName']);
      expect(resultJson['totalAmount'], json['totalAmount']);
      expect(resultJson['currency'], json['currency']);
      expect(resultJson['payMethod'], json['payMethod']);
      expect(resultJson['appScheme'], json['appScheme']);
    });

    test('expiredTime should follow yyyy-MM-dd HH:mm:ss format', () {
      final paymentRequest = PaymentRequest(
        storeId: 'store-00000000-0000-0000-0000-000000000000',
        paymentId: 'payment-00000000-0000-0000-0000-000000000000',
        orderName: 'Test Order',
        totalAmount: 1000,
        currency: PaymentCurrency.USD,
        payMethod: PaymentPayMethod.card,
        appScheme: 'portoneTest',
        expiredTime: '2025-04-12 18:18:17',
      );

      // yyyy-MM-dd HH:mm:ss 형태 검사: 단순 정규식 활용
      final regex = RegExp(r'^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$');
      expect(regex.hasMatch(paymentRequest.expiredTime!), isTrue);
    });
  });
}
