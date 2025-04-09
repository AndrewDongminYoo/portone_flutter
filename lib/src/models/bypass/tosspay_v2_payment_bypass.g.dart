// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tosspay_v2_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TosspayV2PaymentBypass _$TosspayV2PaymentBypassFromJson(Map<String, dynamic> json) => $checkedCreate(
      'TosspayV2PaymentBypass',
      json,
      ($checkedConvert) {
        final val = TosspayV2PaymentBypass(
          discountCode: $checkedConvert('discountCode', (v) => v as String?),
          useInternationalCardOnly: $checkedConvert('useInternationalCardOnly', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TosspayV2PaymentBypassToJson(TosspayV2PaymentBypass instance) => <String, dynamic>{
      if (instance.discountCode case final value?) 'discountCode': value,
      if (instance.useInternationalCardOnly case final value?) 'useInternationalCardOnly': value,
    };
