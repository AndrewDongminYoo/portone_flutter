// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inicis_v2_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InicisV2Bypass _$InicisV2BypassFromJson(Map<String, dynamic> json) =>
    InicisV2Bypass(
      logoUrl: json['logo_url'] as String?,
      logo2nd: json['logo_2nd'] as String?,
      parentemail: json['parentemail'] as String?,
      iniSsgpayMdn: json['Ini_SSGPAY_MDN'] as String?,
      acceptmethod: (json['acceptmethod'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      pCardOption: json['P_CARD_OPTION'] as String?,
      pMname: json['P_MNAME'] as String?,
      pReserved: (json['P_RESERVED'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$InicisV2BypassToJson(InicisV2Bypass instance) =>
    <String, dynamic>{
      'logo_url': ?instance.logoUrl,
      'logo_2nd': ?instance.logo2nd,
      'parentemail': ?instance.parentemail,
      'Ini_SSGPAY_MDN': ?instance.iniSsgpayMdn,
      'acceptmethod': ?instance.acceptmethod,
      'P_CARD_OPTION': ?instance.pCardOption,
      'P_MNAME': ?instance.pMname,
      'P_RESERVED': ?instance.pReserved,
    };
