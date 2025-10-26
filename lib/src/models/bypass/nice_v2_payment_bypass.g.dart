// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nice_v2_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NiceV2PaymentBypass _$NiceV2PaymentBypassFromJson(Map<String, dynamic> json) =>
    NiceV2PaymentBypass(
      logoImage: json['LogoImage'] as String?,
      npDisableScroll: json['NPDisableScroll'] as String?,
      skinType:
          $enumDecodeNullable(_$NiceV2SkinTypeEnumMap, json['SkinType']) ??
          NiceV2SkinType.red,
      userCI: json['userCI'] as String?,
      mallUserID: json['mallUserID'] as String?,
      directCouponYN: json['directCouponYN'] as String?,
      directShowOpt: json['directShowOpt'] as String?,
      cardShowOpt: json['cardShowOpt'] as String?,
      paycoClientId: json['paycoClientId'] as String?,
      paycoAccessToken: json['paycoAccessToken'] as String?,
      samPayMallType: json['samPayMallType'] as String?,
    );

Map<String, dynamic> _$NiceV2PaymentBypassToJson(
  NiceV2PaymentBypass instance,
) => <String, dynamic>{
  'LogoImage': ?instance.logoImage,
  'NPDisableScroll': ?instance.npDisableScroll,
  'SkinType': _$NiceV2SkinTypeEnumMap[instance.skinType],
  'userCI': ?instance.userCI,
  'mallUserID': ?instance.mallUserID,
  'directCouponYN': ?instance.directCouponYN,
  'directShowOpt': ?instance.directShowOpt,
  'cardShowOpt': ?instance.cardShowOpt,
  'paycoClientId': ?instance.paycoClientId,
  'paycoAccessToken': ?instance.paycoAccessToken,
  'samPayMallType': ?instance.samPayMallType,
};

const Map<NiceV2SkinType, String> _$NiceV2SkinTypeEnumMap = {
  NiceV2SkinType.red: 'red',
  NiceV2SkinType.green: 'green',
  NiceV2SkinType.purple: 'purple',
  NiceV2SkinType.gray: 'gray',
  NiceV2SkinType.dark: 'dark',
};
