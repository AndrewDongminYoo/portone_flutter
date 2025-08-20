// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentBypass _$PaymentBypassFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PaymentBypass',
  json,
  ($checkedConvert) {
    final val = PaymentBypass(
      tosspayments: $checkedConvert(
        'tosspayments',
        (v) => v == null ? null : TosspaymentsPaymentBypass.fromJson(v as Map<String, dynamic>),
      ),
      ksnet: $checkedConvert(
        'ksnet',
        (v) => v == null ? null : KsnetPaymentBypass.fromJson(v as Map<String, dynamic>),
      ),
      kakaopay: $checkedConvert(
        'kakaopay',
        (v) => v == null ? null : KakaopayPaymentBypass.fromJson(v as Map<String, dynamic>),
      ),
      smartroV2: $checkedConvert(
        'smartro_v2',
        (v) => v == null ? null : SmartroV2PaymentBypass.fromJson(v as Map<String, dynamic>),
      ),
      naverpay: $checkedConvert(
        'naverpay',
        (v) => v == null ? null : NaverpayPaymentBypass.fromJson(v as Map<String, dynamic>),
      ),
      niceV2: $checkedConvert(
        'nice_v2',
        (v) => v == null ? null : NiceV2PaymentBypass.fromJson(v as Map<String, dynamic>),
      ),
      tossBrandpay: $checkedConvert(
        'toss_brandpay',
        (v) => v == null ? null : TossBrandpayPaymentBypass.fromJson(v as Map<String, dynamic>),
      ),
      welcome: $checkedConvert(
        'welcome',
        (v) => v == null ? null : WelcomePaymentBypass.fromJson(v as Map<String, dynamic>),
      ),
      tosspayV2: $checkedConvert(
        'tosspay_v2',
        (v) => v == null ? null : TosspayV2PaymentBypass.fromJson(v as Map<String, dynamic>),
      ),
      inicisV2: $checkedConvert(
        'inicis_v2',
        (v) => v == null ? null : InicisV2Bypass.fromJson(v as Map<String, dynamic>),
      ),
      kpn: $checkedConvert(
        'kpn',
        (v) => v == null ? null : KpnBypass.fromJson(v as Map<String, dynamic>),
      ),
      kcpV2: $checkedConvert(
        'kcp_v2',
        (v) => v == null ? null : KcpV2Bypass.fromJson(v as Map<String, dynamic>),
      ),
      hyphen: $checkedConvert(
        'hyphen',
        (v) => v == null ? null : HyphenBypass.fromJson(v as Map<String, dynamic>),
      ),
      eximbayV2: $checkedConvert(
        'eximbay_v2',
        (v) => v == null ? null : EximbayV2Bypass.fromJson(v as Map<String, dynamic>),
      ),
      inicisJp: $checkedConvert(
        'inicis_jp',
        (v) => v == null ? null : InicisJpBypass.fromJson(v as Map<String, dynamic>),
      ),
      payletterGlobal: $checkedConvert(
        'payletter_global',
        (v) => v == null ? null : PayletterGlobalBypass.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'smartroV2': 'smartro_v2',
    'niceV2': 'nice_v2',
    'tossBrandpay': 'toss_brandpay',
    'tosspayV2': 'tosspay_v2',
    'inicisV2': 'inicis_v2',
    'kcpV2': 'kcp_v2',
    'eximbayV2': 'eximbay_v2',
    'inicisJp': 'inicis_jp',
    'payletterGlobal': 'payletter_global',
  },
);

Map<String, dynamic> _$PaymentBypassToJson(PaymentBypass instance) => <String, dynamic>{
  'tosspayments': ?instance.tosspayments?.toJson(),
  'ksnet': ?instance.ksnet?.toJson(),
  'kakaopay': ?instance.kakaopay?.toJson(),
  'smartro_v2': ?instance.smartroV2?.toJson(),
  'naverpay': ?instance.naverpay?.toJson(),
  'nice_v2': ?instance.niceV2?.toJson(),
  'toss_brandpay': ?instance.tossBrandpay?.toJson(),
  'welcome': ?instance.welcome?.toJson(),
  'tosspay_v2': ?instance.tosspayV2?.toJson(),
  'inicis_v2': ?instance.inicisV2?.toJson(),
  'kpn': ?instance.kpn?.toJson(),
  'kcp_v2': ?instance.kcpV2?.toJson(),
  'hyphen': ?instance.hyphen?.toJson(),
  'eximbay_v2': ?instance.eximbayV2?.toJson(),
  'inicis_jp': ?instance.inicisJp?.toJson(),
  'payletter_global': ?instance.payletterGlobal?.toJson(),
};
