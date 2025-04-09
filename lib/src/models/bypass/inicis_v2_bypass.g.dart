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
          acceptmethod: $checkedConvert('acceptmethod', (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          pCardOption: $checkedConvert('P_CARD_OPTION', (v) => v as String?),
          pMname: $checkedConvert('P_MNAME', (v) => v as String?),
          pReserved: $checkedConvert('P_RESERVED', (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
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
      if (instance.logoUrl case final value?) 'logo_url': value,
      if (instance.logo2nd case final value?) 'logo_2nd': value,
      if (instance.parentemail case final value?) 'parentemail': value,
      if (instance.iniSsgpayMdn case final value?) 'Ini_SSGPAY_MDN': value,
      if (instance.acceptmethod case final value?) 'acceptmethod': value,
      if (instance.pCardOption case final value?) 'P_CARD_OPTION': value,
      if (instance.pMname case final value?) 'P_MNAME': value,
      if (instance.pReserved case final value?) 'P_RESERVED': value,
    };
