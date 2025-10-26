// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tosspay_v2_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TosspayV2PaymentBypass _$TosspayV2PaymentBypassFromJson(
  Map<String, dynamic> json,
) => TosspayV2PaymentBypass(
  discountCode: json['discountCode'] as String?,
  useInternationalCardOnly: json['useInternationalCardOnly'] as bool?,
);

Map<String, dynamic> _$TosspayV2PaymentBypassToJson(
  TosspayV2PaymentBypass instance,
) => <String, dynamic>{
  'discountCode': ?instance.discountCode,
  'useInternationalCardOnly': ?instance.useInternationalCardOnly,
};
