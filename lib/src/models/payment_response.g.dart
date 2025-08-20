// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaymentResponse', json, ($checkedConvert) {
      final val = PaymentResponse(
        transactionType: $checkedConvert(
          'transactionType',
          (v) => v as String? ?? 'PAYMENT',
        ),
        transactionId: $checkedConvert('txId', (v) => v as String),
        paymentId: $checkedConvert('paymentId', (v) => v as String),
        code: $checkedConvert('code', (v) => v as String?),
        message: $checkedConvert('message', (v) => v as String?),
        pgCode: $checkedConvert('pgCode', (v) => v as String?),
        pgMessage: $checkedConvert('pgMessage', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'transactionId': 'txId'});

Map<String, dynamic> _$PaymentResponseToJson(PaymentResponse instance) => <String, dynamic>{
  'transactionType': instance.transactionType,
  'txId': instance.transactionId,
  'paymentId': instance.paymentId,
  'code': ?instance.code,
  'message': ?instance.message,
  'pgCode': ?instance.pgCode,
  'pgMessage': ?instance.pgMessage,
};
