// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentBypass _$PaymentBypassFromJson(
  Map<String, dynamic> json,
) => PaymentBypass(
  tosspayments: json['tosspayments'] == null
      ? null
      : TosspaymentsPaymentBypass.fromJson(
          json['tosspayments'] as Map<String, dynamic>,
        ),
  ksnet: json['ksnet'] == null
      ? null
      : KsnetPaymentBypass.fromJson(json['ksnet'] as Map<String, dynamic>),
  kakaopay: json['kakaopay'] == null
      ? null
      : KakaopayPaymentBypass.fromJson(
          json['kakaopay'] as Map<String, dynamic>,
        ),
  smartroV2: json['smartro_v2'] == null
      ? null
      : SmartroV2PaymentBypass.fromJson(
          json['smartro_v2'] as Map<String, dynamic>,
        ),
  naverpay: json['naverpay'] == null
      ? null
      : NaverpayPaymentBypass.fromJson(
          json['naverpay'] as Map<String, dynamic>,
        ),
  niceV2: json['nice_v2'] == null
      ? null
      : NiceV2PaymentBypass.fromJson(json['nice_v2'] as Map<String, dynamic>),
  tossBrandpay: json['toss_brandpay'] == null
      ? null
      : TossBrandpayPaymentBypass.fromJson(
          json['toss_brandpay'] as Map<String, dynamic>,
        ),
  welcome: json['welcome'] == null
      ? null
      : WelcomePaymentBypass.fromJson(json['welcome'] as Map<String, dynamic>),
  tosspayV2: json['tosspay_v2'] == null
      ? null
      : TosspayV2PaymentBypass.fromJson(
          json['tosspay_v2'] as Map<String, dynamic>,
        ),
  inicisV2: json['inicis_v2'] == null
      ? null
      : InicisV2Bypass.fromJson(json['inicis_v2'] as Map<String, dynamic>),
  kpn: json['kpn'] == null
      ? null
      : KpnBypass.fromJson(json['kpn'] as Map<String, dynamic>),
  kcpV2: json['kcp_v2'] == null
      ? null
      : KcpV2Bypass.fromJson(json['kcp_v2'] as Map<String, dynamic>),
  hyphen: json['hyphen'] == null
      ? null
      : HyphenBypass.fromJson(json['hyphen'] as Map<String, dynamic>),
  eximbayV2: json['eximbay_v2'] == null
      ? null
      : EximbayV2Bypass.fromJson(json['eximbay_v2'] as Map<String, dynamic>),
  inicisJp: json['inicis_jp'] == null
      ? null
      : InicisJpBypass.fromJson(json['inicis_jp'] as Map<String, dynamic>),
  payletterGlobal: json['payletter_global'] == null
      ? null
      : PayletterGlobalBypass.fromJson(
          json['payletter_global'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PaymentBypassToJson(PaymentBypass instance) =>
    <String, dynamic>{
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
