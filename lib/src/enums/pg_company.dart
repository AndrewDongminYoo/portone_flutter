// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// PG사 enum
@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum PGCompany {
  /// 엑심베이
  eximbayV2('eximbay_v2'),

  /// 하이픈
  hyphen('hyphen'),

  /// KG이니시스(일본)
  inicisJp('inicis_jp'),

  /// KG이니시스
  inicisV2('inicis_v2'),

  /// 카카오페이
  kakaopayPayment('kakaopay_payment'),

  /// NHN KCP
  kcpV2('kcp_v2'),

  /// 한국결제네트웍스
  kpn('kpn'),

  /// KSNET
  ksnetPayment('ksnet_payment'),

  /// 네이버페이
  naverpayPayment('naverpay_payment'),

  /// 나이스페이먼츠
  niceV2Payment('nice_v2_payment'),

  /// 페이레터
  payletterGlobal('payletter_global'),

  /// 스마트로
  smartroV2Payment('smartro_v2_payment'),

  /// 토스 브랜드페이
  tossBrandpayPayment('toss_brandpay_payment'),

  /// 토스페이
  tosspayV2Payment('tosspay_v2_payment'),

  /// 토스페이먼츠
  tosspaymentsPayment('tosspayments_payment'),

  /// 웰컴페이먼츠
  welcomePayment('welcome_payment'),
  ;

  const PGCompany(this.value);
  final String value;
}
