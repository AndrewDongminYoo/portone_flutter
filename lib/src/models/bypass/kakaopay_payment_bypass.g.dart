// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kakaopay_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KakaopayPaymentBypass _$KakaopayPaymentBypassFromJson(
  Map<String, dynamic> json,
) =>
    $checkedCreate(
      'KakaopayPaymentBypass',
      json,
      ($checkedConvert) {
        final val = KakaopayPaymentBypass(
          customMessage: $checkedConvert('custom_message', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'customMessage': 'custom_message'},
    );

Map<String, dynamic> _$KakaopayPaymentBypassToJson(
  KakaopayPaymentBypass instance,
) =>
    <String, dynamic>{
      if (instance.customMessage case final value?) 'custom_message': value,
    };
