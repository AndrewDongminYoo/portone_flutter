// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ksnet_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KsnetPaymentBypass _$KsnetPaymentBypassFromJson(Map<String, dynamic> json) =>
    KsnetPaymentBypass(
      easyPayDirect: json['easyPayDirect'] as bool?,
      sndQpayType: $enumDecodeNullable(
        _$SndQpayTypeEnumMap,
        json['sndQpayType'],
      ),
    );

Map<String, dynamic> _$KsnetPaymentBypassToJson(KsnetPaymentBypass instance) =>
    <String, dynamic>{
      'easyPayDirect': ?instance.easyPayDirect,
      'sndQpayType': ?_$SndQpayTypeEnumMap[instance.sndQpayType],
    };

const Map<SndQpayType, String> _$SndQpayTypeEnumMap = {
  SndQpayType.none: '0',
  SndQpayType.show: '1',
};
