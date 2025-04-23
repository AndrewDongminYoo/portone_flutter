// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

void main() {
  group('PaymentResponse', () {
    test('should create PaymentResponse instance with required fields', () {
      final response = PaymentResponse(
          transactionType: 'PAYMENT',
          transactionId: 'tx_123',
          paymentId: 'pay_456');

      expect(response.transactionType, 'PAYMENT');
      expect(response.transactionId, 'tx_123');
      expect(response.paymentId, 'pay_456');
      expect(response.code, isNull);
      expect(response.message, isNull);
      expect(response.pgCode, isNull);
      expect(response.pgMessage, isNull);
    });

    test('should create PaymentResponse instance with all fields', () {
      final response = PaymentResponse(
        transactionType: 'PAYMENT',
        transactionId: 'tx_123',
        paymentId: 'pay_456',
        code: 'ERR001',
        message: 'Payment failed',
        pgCode: 'PG001',
        pgMessage: 'PG error occurred',
      );

      expect(response.transactionType, 'PAYMENT');
      expect(response.transactionId, 'tx_123');
      expect(response.paymentId, 'pay_456');
      expect(response.code, 'ERR001');
      expect(response.message, 'Payment failed');
      expect(response.pgCode, 'PG001');
      expect(response.pgMessage, 'PG error occurred');
    });

    test('should correctly deserialize from JSON', () {
      final json = {
        'transactionType': 'PAYMENT',
        'txId': 'tx_123',
        'paymentId': 'pay_456',
        'code': 'ERR001',
        'message': 'Payment failed',
        'pgCode': 'PG001',
        'pgMessage': 'PG error occurred',
      };

      final response = PaymentResponse.fromJson(json);

      expect(response.transactionType, 'PAYMENT');
      expect(response.transactionId, 'tx_123');
      expect(response.paymentId, 'pay_456');
      expect(response.code, 'ERR001');
      expect(response.message, 'Payment failed');
      expect(response.pgCode, 'PG001');
      expect(response.pgMessage, 'PG error occurred');
    });

    test('should correctly serialize to JSON', () {
      final response = PaymentResponse(
        transactionType: 'PAYMENT',
        transactionId: 'tx_123',
        paymentId: 'pay_456',
        code: 'ERR001',
        message: 'Payment failed',
        pgCode: 'PG001',
        pgMessage: 'PG error occurred',
      );

      final json = response.toJson();

      expect(json['transactionType'], 'PAYMENT');
      expect(json['txId'], 'tx_123');
      expect(json['paymentId'], 'pay_456');
      expect(json['code'], 'ERR001');
      expect(json['message'], 'Payment failed');
      expect(json['pgCode'], 'PG001');
      expect(json['pgMessage'], 'PG error occurred');
    });

    test(
        'should use default value for transactionType when not provided in JSON',
        () {
      final json = {'txId': 'tx_123', 'paymentId': 'pay_456'};

      final response = PaymentResponse.fromJson(json);
      expect(response.transactionType, 'PAYMENT');
    });
  });
}
