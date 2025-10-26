// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smartro_v2_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SmartroV2PaymentBypass _$SmartroV2PaymentBypassFromJson(
  Map<String, dynamic> json,
) => SmartroV2PaymentBypass(
  goodsCnt: (json['GoodsCnt'] as num?)?.toInt(),
  skinColor:
      $enumDecodeNullable(_$SmartroV2SkinColorEnumMap, json['SkinColor']) ??
      SmartroV2SkinColor.red,
  openType:
      $enumDecodeNullable(_$SmartroV2OpenTypeEnumMap, json['OpenType']) ??
      SmartroV2OpenType.kr,
);

Map<String, dynamic> _$SmartroV2PaymentBypassToJson(
  SmartroV2PaymentBypass instance,
) => <String, dynamic>{
  'GoodsCnt': ?instance.goodsCnt,
  'SkinColor': _$SmartroV2SkinColorEnumMap[instance.skinColor],
  'OpenType': _$SmartroV2OpenTypeEnumMap[instance.openType],
};

const Map<SmartroV2SkinColor, String> _$SmartroV2SkinColorEnumMap = {
  SmartroV2SkinColor.red: 'RED',
  SmartroV2SkinColor.green: 'GREEN',
  SmartroV2SkinColor.blue: 'BLUE',
  SmartroV2SkinColor.purple: 'PURPLE',
};

const Map<SmartroV2OpenType, String> _$SmartroV2OpenTypeEnumMap = {
  SmartroV2OpenType.kr: 'KR',
  SmartroV2OpenType.en: 'EN',
};
