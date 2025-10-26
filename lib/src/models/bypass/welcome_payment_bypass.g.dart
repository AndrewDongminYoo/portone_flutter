// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WelcomePaymentBypass _$WelcomePaymentBypassFromJson(
  Map<String, dynamic> json,
) => WelcomePaymentBypass(
  logoUrl: json['logo_url'] as String?,
  logo2nd: json['logo_2nd'] as String?,
  acceptmethod: (json['acceptmethod'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  pCardOption: json['P_CARD_OPTION'] as String?,
  pOnlyEasypaycode: json['P_ONLY_EASYPAYCODE'] as String?,
  pReserved: (json['P_RESERVED'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$WelcomePaymentBypassToJson(
  WelcomePaymentBypass instance,
) => <String, dynamic>{
  'logo_url': ?instance.logoUrl,
  'logo_2nd': ?instance.logo2nd,
  'acceptmethod': ?instance.acceptmethod,
  'P_CARD_OPTION': ?instance.pCardOption,
  'P_ONLY_EASYPAYCODE': ?instance.pOnlyEasypaycode,
  'P_RESERVED': ?instance.pReserved,
};
