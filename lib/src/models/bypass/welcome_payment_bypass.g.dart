// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WelcomePaymentBypass _$WelcomePaymentBypassFromJson(Map<String, dynamic> json) => $checkedCreate(
      'WelcomePaymentBypass',
      json,
      ($checkedConvert) {
        final val = WelcomePaymentBypass(
          logoUrl: $checkedConvert('logo_url', (v) => v as String?),
          logo2nd: $checkedConvert('logo_2nd', (v) => v as String?),
          acceptmethod: $checkedConvert('acceptmethod', (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          pCardOption: $checkedConvert('P_CARD_OPTION', (v) => v as String?),
          pOnlyEasypaycode: $checkedConvert('P_ONLY_EASYPAYCODE', (v) => v as String?),
          pReserved: $checkedConvert('P_RESERVED', (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
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

Map<String, dynamic> _$WelcomePaymentBypassToJson(WelcomePaymentBypass instance) => <String, dynamic>{
      if (instance.logoUrl case final value?) 'logo_url': value,
      if (instance.logo2nd case final value?) 'logo_2nd': value,
      if (instance.acceptmethod case final value?) 'acceptmethod': value,
      if (instance.pCardOption case final value?) 'P_CARD_OPTION': value,
      if (instance.pOnlyEasypaycode case final value?) 'P_ONLY_EASYPAYCODE': value,
      if (instance.pReserved case final value?) 'P_RESERVED': value,
    };
