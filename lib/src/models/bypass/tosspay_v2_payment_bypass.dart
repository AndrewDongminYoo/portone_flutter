// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'tosspay_v2_payment_bypass.g.dart';

/// 토스페이 (V2) bypass 파라미터 객체
@JsonSerializable()
class TosspayV2PaymentBypass {
  TosspayV2PaymentBypass({
    this.discountCode,
    this.useInternationalCardOnly,
  });

  factory TosspayV2PaymentBypass.fromJson(Map<String, dynamic> json) => _$TosspayV2PaymentBypassFromJson(json);

  /// 토스페이먼츠 <-> 고객사 계약에 따라 프로모션 적용이 가능한 코드
  final String? discountCode;

  /// 해외 카드로만 결제가 가능하도록 할 지 여부
  final bool? useInternationalCardOnly;

  Map<String, dynamic> toJson() => _$TosspayV2PaymentBypassToJson(this);
}
