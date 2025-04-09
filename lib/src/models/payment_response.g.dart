// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) => $checkedCreate(
      'PaymentResponse',
      json,
      ($checkedConvert) {
        final val = PaymentResponse(
          transactionType: $checkedConvert('transactionType', (v) => v as String? ?? 'PAYMENT'),
          transactionId: $checkedConvert('txId', (v) => v! as String),
          paymentId: $checkedConvert('paymentId', (v) => v! as String),
          code: $checkedConvert('code', (v) => v as String?),
          message: $checkedConvert('message', (v) => v as String?),
          pgCode: $checkedConvert('pgCode', (v) => v as String?),
          pgMessage: $checkedConvert('pgMessage', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'transactionId': 'txId'},
    );

Map<String, dynamic> _$PaymentResponseToJson(PaymentResponse instance) => <String, dynamic>{
      'transactionType': instance.transactionType,
      'txId': instance.transactionId,
      'paymentId': instance.paymentId,
      if (instance.code case final value?) 'code': value,
      if (instance.message case final value?) 'message': value,
      if (instance.pgCode case final value?) 'pgCode': value,
      if (instance.pgMessage case final value?) 'pgMessage': value,
    };
