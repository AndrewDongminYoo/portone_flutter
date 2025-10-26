// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smartro_v2_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SmartroV2PaymentBypass _$SmartroV2PaymentBypassFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SmartroV2PaymentBypass',
  json,
  ($checkedConvert) {
    final val = SmartroV2PaymentBypass(
      goodsCnt: $checkedConvert('GoodsCnt', (v) => (v as num?)?.toInt()),
      skinColor: $checkedConvert(
        'SkinColor',
        (v) =>
            $enumDecodeNullable(_$SmartroV2SkinColorEnumMap, v) ??
            SmartroV2SkinColor.red,
      ),
      openType: $checkedConvert(
        'OpenType',
        (v) =>
            $enumDecodeNullable(_$SmartroV2OpenTypeEnumMap, v) ??
            SmartroV2OpenType.kr,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'goodsCnt': 'GoodsCnt',
    'skinColor': 'SkinColor',
    'openType': 'OpenType',
  },
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
