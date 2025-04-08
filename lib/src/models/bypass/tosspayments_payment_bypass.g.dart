// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tosspayments_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TosspaymentsPaymentBypass _$TosspaymentsPaymentBypassFromJson(
        Map<String, dynamic> json,) =>
    $checkedCreate(
      'TosspaymentsPaymentBypass',
      json,
      ($checkedConvert) {
        final val = TosspaymentsPaymentBypass(
          discountCode: $checkedConvert('discountCode', (v) => v as String?),
          useInternationalCardOnly:
              $checkedConvert('useInternationalCardOnly', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TosspaymentsPaymentBypassToJson(
        TosspaymentsPaymentBypass instance,) =>
    <String, dynamic>{
      if (instance.discountCode case final value?) 'discountCode': value,
      if (instance.useInternationalCardOnly case final value?)
        'useInternationalCardOnly': value,
    };
