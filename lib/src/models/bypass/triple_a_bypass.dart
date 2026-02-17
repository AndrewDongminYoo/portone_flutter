// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'triple_a_bypass.g.dart';

/// Triple-A bypass 파라미터
@JsonSerializable()
class TripleABypass {
  /// [TripleABypass] 생성자
  TripleABypass({
    this.payerPoi,
    this.shippingCost,
    this.shippingDiscount,
    this.taxCost,
  });

  /// JSON에서 [TripleABypass] 객체로 변환하는 팩토리 메서드
  factory TripleABypass.fromJson(Map<String, dynamic> json) =>
      _$TripleABypassFromJson(json);

  /// 결제자 신원 증명 정보
  ///
  /// 신분증, 여권 등 결제자의 신원을 증명할 수 있는 자료의 URL을 입력합니다.
  ///
  /// SGD 1500 이상의 결제 등 결제자 신원 조회가 필요한 경우에,
  /// `payerPoi`를 입력하면 별도의 신원 요청 과정을 거치지 않고 결제가 진행됩니다.
  @JsonKey(name: 'payer_poi')
  final String? payerPoi;

  /// 배송비
  ///
  /// 결제창에 표시할 배송비를 정수로 나타냅니다.
  /// `products`가 지정된 경우에만 사용할 수 있습니다.
  ///
  /// 해외 통화의 경우 통화의 최소 단위(minor unit)를 기준으로 합니다.
  /// 예를 들어, USD의 최소 단위는 센트(0.01 USD)이므로, 6 USD의 경우 100배하여 600으로 입력합니다.
  @JsonKey(name: 'shipping_cost')
  final int? shippingCost;

  /// 배송비 할인 금액
  ///
  /// 결제창에 표시할 배송비 할인 금액을 정수로 나타냅니다.
  /// `products`가 지정된 경우에만 사용할 수 있습니다.
  @JsonKey(name: 'shipping_discount')
  final int? shippingDiscount;

  /// 세금
  ///
  /// 결제창에 표시할 세금을 정수로 나타냅니다.
  /// `products`가 지정된 경우에만 사용할 수 있습니다.
  @JsonKey(name: 'tax_cost')
  final int? taxCost;

  /// [TripleABypass] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$TripleABypassToJson(this);
}
