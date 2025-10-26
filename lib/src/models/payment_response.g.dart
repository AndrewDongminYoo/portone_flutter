// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) =>
    PaymentResponse(
      transactionType: json['transactionType'] as String? ?? 'PAYMENT',
      transactionId: json['txId'] as String,
      paymentId: json['paymentId'] as String,
      code: json['code'] as String?,
      message: json['message'] as String?,
      pgCode: json['pgCode'] as String?,
      pgMessage: json['pgMessage'] as String?,
    );

Map<String, dynamic> _$PaymentResponseToJson(PaymentResponse instance) =>
    <String, dynamic>{
      'transactionType': instance.transactionType,
      'txId': instance.transactionId,
      'paymentId': instance.paymentId,
      'code': ?instance.code,
      'message': ?instance.message,
      'pgCode': ?instance.pgCode,
      'pgMessage': ?instance.pgMessage,
    };
