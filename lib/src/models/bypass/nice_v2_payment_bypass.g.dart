// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nice_v2_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NiceV2PaymentBypass _$NiceV2PaymentBypassFromJson(Map<String, dynamic> json) => $checkedCreate(
      'NiceV2PaymentBypass',
      json,
      ($checkedConvert) {
        final val = NiceV2PaymentBypass(
          logoImage: $checkedConvert('LogoImage', (v) => v as String?),
          npDisableScroll: $checkedConvert('NPDisableScroll', (v) => v as String?),
          skinType:
              $checkedConvert('SkinType', (v) => $enumDecodeNullable(_$NiceV2SkinTypeEnumMap, v) ?? NiceV2SkinType.red),
          userCI: $checkedConvert('userCI', (v) => v as String?),
          mallUserID: $checkedConvert('mallUserID', (v) => v as String?),
          directCouponYN: $checkedConvert('directCouponYN', (v) => v as String?),
          directShowOpt: $checkedConvert('directShowOpt', (v) => v as String?),
          cardShowOpt: $checkedConvert('cardShowOpt', (v) => v as String?),
          paycoClientId: $checkedConvert('paycoClientId', (v) => v as String?),
          paycoAccessToken: $checkedConvert('paycoAccessToken', (v) => v as String?),
          samPayMallType: $checkedConvert('samPayMallType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'logoImage': 'LogoImage', 'npDisableScroll': 'NPDisableScroll', 'skinType': 'SkinType'},
    );

Map<String, dynamic> _$NiceV2PaymentBypassToJson(NiceV2PaymentBypass instance) => <String, dynamic>{
      if (instance.logoImage case final value?) 'LogoImage': value,
      if (instance.npDisableScroll case final value?) 'NPDisableScroll': value,
      'SkinType': _$NiceV2SkinTypeEnumMap[instance.skinType],
      if (instance.userCI case final value?) 'userCI': value,
      if (instance.mallUserID case final value?) 'mallUserID': value,
      if (instance.directCouponYN case final value?) 'directCouponYN': value,
      if (instance.directShowOpt case final value?) 'directShowOpt': value,
      if (instance.cardShowOpt case final value?) 'cardShowOpt': value,
      if (instance.paycoClientId case final value?) 'paycoClientId': value,
      if (instance.paycoAccessToken case final value?) 'paycoAccessToken': value,
      if (instance.samPayMallType case final value?) 'samPayMallType': value,
    };

const Map<NiceV2SkinType, String> _$NiceV2SkinTypeEnumMap = {
  NiceV2SkinType.red: 'red',
  NiceV2SkinType.green: 'green',
  NiceV2SkinType.purple: 'purple',
  NiceV2SkinType.gray: 'gray',
  NiceV2SkinType.dark: 'dark',
};
