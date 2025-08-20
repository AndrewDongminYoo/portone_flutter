// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WelcomePaymentBypass _$WelcomePaymentBypassFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'WelcomePaymentBypass',
  json,
  ($checkedConvert) {
    final val = WelcomePaymentBypass(
      logoUrl: $checkedConvert('logo_url', (v) => v as String?),
      logo2nd: $checkedConvert('logo_2nd', (v) => v as String?),
      acceptmethod: $checkedConvert(
        'acceptmethod',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      pCardOption: $checkedConvert('P_CARD_OPTION', (v) => v as String?),
      pOnlyEasypaycode: $checkedConvert(
        'P_ONLY_EASYPAYCODE',
        (v) => v as String?,
      ),
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
    'pCardOption': 'P_CARD_OPTION',
    'pOnlyEasypaycode': 'P_ONLY_EASYPAYCODE',
    'pReserved': 'P_RESERVED',
  },
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
