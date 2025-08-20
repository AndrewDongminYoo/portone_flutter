// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inicis_v2_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InicisV2Bypass _$InicisV2BypassFromJson(Map<String, dynamic> json) => $checkedCreate(
  'InicisV2Bypass',
  json,
  ($checkedConvert) {
    final val = InicisV2Bypass(
      logoUrl: $checkedConvert('logo_url', (v) => v as String?),
      logo2nd: $checkedConvert('logo_2nd', (v) => v as String?),
      parentemail: $checkedConvert('parentemail', (v) => v as String?),
      iniSsgpayMdn: $checkedConvert('Ini_SSGPAY_MDN', (v) => v as String?),
      acceptmethod: $checkedConvert(
        'acceptmethod',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      pCardOption: $checkedConvert('P_CARD_OPTION', (v) => v as String?),
      pMname: $checkedConvert('P_MNAME', (v) => v as String?),
      pReserved: $checkedConvert(
        'P_RESERVED',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'logoUrl': 'logo_url',
    'logo2nd': 'logo_2nd',
    'iniSsgpayMdn': 'Ini_SSGPAY_MDN',
    'pCardOption': 'P_CARD_OPTION',
    'pMname': 'P_MNAME',
    'pReserved': 'P_RESERVED',
  },
);

Map<String, dynamic> _$InicisV2BypassToJson(InicisV2Bypass instance) => <String, dynamic>{
  'logo_url': ?instance.logoUrl,
  'logo_2nd': ?instance.logo2nd,
  'parentemail': ?instance.parentemail,
  'Ini_SSGPAY_MDN': ?instance.iniSsgpayMdn,
  'acceptmethod': ?instance.acceptmethod,
  'P_CARD_OPTION': ?instance.pCardOption,
  'P_MNAME': ?instance.pMname,
  'P_RESERVED': ?instance.pReserved,
};
