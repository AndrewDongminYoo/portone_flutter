// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentBypass _$PaymentBypassFromJson(Map<String, dynamic> json) => $checkedCreate(
      'PaymentBypass',
      json,
      ($checkedConvert) {
        final val = PaymentBypass(
          kakaopay: $checkedConvert(
            'kakaopay',
            (v) => v == null ? null : KakaopayPaymentBypass.fromJson(v as Map<String, dynamic>),
          ),
          tosspayments: $checkedConvert(
            'tosspayments',
            (v) => v == null
                ? null
                : TosspaymentsPaymentBypass.fromJson(
                    v as Map<String, dynamic>,
                  ),
          ),
          tosspayV2: $checkedConvert(
            'tosspay_v2',
            (v) => v == null ? null : TosspayV2PaymentBypass.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'tosspayV2': 'tosspay_v2'},
    );

Map<String, dynamic> _$PaymentBypassToJson(PaymentBypass instance) => <String, dynamic>{
      if (instance.kakaopay?.toJson() case final value?) 'kakaopay': value,
      if (instance.tosspayments?.toJson() case final value?) 'tosspayments': value,
      if (instance.tosspayV2?.toJson() case final value?) 'tosspay_v2': value,
    };
