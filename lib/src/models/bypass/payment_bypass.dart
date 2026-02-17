// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/models/bypass/bypass.dart';

part 'payment_bypass.g.dart';

/// PG사 결제창 호출 시 PG사로 그대로 bypass할 값들의 모음
@JsonSerializable()
class PaymentBypass {
  /// [PaymentBypass] 생성자
  PaymentBypass({
    this.tosspayments,
    this.ksnet,
    this.kakaopay,
    this.smartroV2,
    this.naverpay,
    this.niceV2,
    this.tossBrandpay,
    this.welcome,
    this.tosspayV2,
    this.inicisV2,
    this.kpn,
    this.kcpV2,
    this.hyphen,
    this.eximbayV2,
    this.inicisJp,
    this.payletterGlobal,
    this.paypalV2,
    this.tripleA,
  });

  /// JSON에서 [PaymentBypass] 객체로 변환하는 팩토리 메서드
  factory PaymentBypass.fromJson(Map<String, dynamic> json) =>
      _$PaymentBypassFromJson(json);

  /// 토스페이먼츠 bypass 파라미터
  @JsonKey(name: 'tosspayments')
  final TosspaymentsPaymentBypass? tosspayments;

  /// KSNET bypass 파라미터
  @JsonKey(name: 'ksnet')
  final KsnetPaymentBypass? ksnet;

  /// 카카오페이 bypass 파라미터
  @JsonKey(name: 'kakaopay')
  final KakaopayPaymentBypass? kakaopay;

  /// 스마트로 V2 bypass 파라미터
  @JsonKey(name: 'smartro_v2')
  final SmartroV2PaymentBypass? smartroV2;

  /// 네이버페이 bypass 파라미터
  @JsonKey(name: 'naverpay')
  final NaverpayPaymentBypass? naverpay;

  /// (신)나이스페이먼츠 bypass 파라미터
  @JsonKey(name: 'nice_v2')
  final NiceV2PaymentBypass? niceV2;

  /// 토스 브랜드페이 bypass 파라미터
  @JsonKey(name: 'toss_brandpay')
  final TossBrandpayPaymentBypass? tossBrandpay;

  /// 웰컴페이먼츠 bypass 파라미터
  @JsonKey(name: 'welcome')
  final WelcomePaymentBypass? welcome;

  /// 토스페이 bypass 파라미터
  @JsonKey(name: 'tosspay_v2')
  final TosspayV2PaymentBypass? tosspayV2;

  /// KG이니시스 bypass 파라미터
  ///
  /// KG이니시스는 PC 결제 모듈과 모바일 결제 모듈이 분리되어 있기 때문에 bypass 파라미터 또한 PC용과 모바일용이 분리되어 있습니다.
  @JsonKey(name: 'inicis_v2')
  final InicisV2Bypass? inicisV2;

  /// KPN bypass 파라미터
  @JsonKey(name: 'kpn')
  final KpnBypass? kpn;

  /// NHN KCP bypass 파라미터
  @JsonKey(name: 'kcp_v2')
  final KcpV2Bypass? kcpV2;

  /// 하이픈 bypass 파라미터
  @JsonKey(name: 'hyphen')
  final HyphenBypass? hyphen;

  /// 엑심베이 V2 bypass 파라미터
  @JsonKey(name: 'eximbay_v2')
  final EximbayV2Bypass? eximbayV2;

  /// 이니시스 일본 bypass 파라미터
  @JsonKey(name: 'inicis_jp')
  final InicisJpBypass? inicisJp;

  /// 페이레터 해외결제 bypass 파라미터
  @JsonKey(name: 'payletter_global')
  final PayletterGlobalBypass? payletterGlobal;

  /// PayPal V2 bypass 파라미터
  @JsonKey(name: 'paypal_v2')
  final PaypalV2Bypass? paypalV2;

  /// Triple-A bypass 파라미터
  @JsonKey(name: 'triple_a')
  final TripleABypass? tripleA;

  /// [PaymentBypass] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$PaymentBypassToJson(this);
}
