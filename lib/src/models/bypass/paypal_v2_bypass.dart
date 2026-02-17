// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'paypal_v2_bypass.g.dart';

/// PayPal V2 bypass 파라미터
///
/// Note: 이 구현은 기본 구조만 포함합니다.
/// 더 복잡한 purchase_units, payer, payment_source 등의
/// 중첩 객체는 필요에 따라 추가 구현이 필요합니다.
@JsonSerializable()
class PaypalV2Bypass {
  /// [PaypalV2Bypass] 생성자
  PaypalV2Bypass({
    this.purchaseUnits,
    this.payer,
    this.paymentSource,
    this.additionalData,
  });

  /// JSON에서 [PaypalV2Bypass] 객체로 변환하는 팩토리 메서드
  factory PaypalV2Bypass.fromJson(Map<String, dynamic> json) =>
      _$PaypalV2BypassFromJson(json);

  /// create order API 호출에 필요한 파라미터
  ///
  /// PayPal의 purchase_units 구조를 그대로 전달합니다.
  /// 상세 스펙은 PayPal API 문서를 참고하세요.
  @JsonKey(name: 'purchase_units')
  final List<Map<String, dynamic>>? purchaseUnits;

  /// PayPal payer 정보
  ///
  /// PayPal의 payer 구조를 그대로 전달합니다.
  /// 상세 스펙은 PayPal API 문서를 참고하세요.
  @JsonKey(name: 'payer')
  final Map<String, dynamic>? payer;

  /// PayPal payment_source 정보
  ///
  /// PayPal의 payment_source 구조를 그대로 전달합니다.
  /// 상세 스펙은 PayPal API 문서를 참고하세요.
  @JsonKey(name: 'payment_source')
  final Map<String, dynamic>? paymentSource;

  /// STC 파라미터
  ///
  /// additional_data 구조를 그대로 전달합니다.
  @JsonKey(name: 'additional_data')
  final List<Map<String, dynamic>>? additionalData;

  /// [PaypalV2Bypass] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$PaypalV2BypassToJson(this);
}
