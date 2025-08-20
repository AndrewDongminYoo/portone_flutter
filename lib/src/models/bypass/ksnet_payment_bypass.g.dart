// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ksnet_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KsnetPaymentBypass _$KsnetPaymentBypassFromJson(Map<String, dynamic> json) =>
    $checkedCreate('KsnetPaymentBypass', json, ($checkedConvert) {
      final val = KsnetPaymentBypass(
        easyPayDirect: $checkedConvert('easyPayDirect', (v) => v as bool?),
        sndQpayType: $checkedConvert(
          'sndQpayType',
          (v) => $enumDecodeNullable(_$SndQpayTypeEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$KsnetPaymentBypassToJson(KsnetPaymentBypass instance) => <String, dynamic>{
  'easyPayDirect': ?instance.easyPayDirect,
  'sndQpayType': ?_$SndQpayTypeEnumMap[instance.sndQpayType],
};

const _$SndQpayTypeEnumMap = {SndQpayType.none: '0', SndQpayType.show: '1'};
