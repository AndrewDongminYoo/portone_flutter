// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'tosspay_v2_payment_bypass.g.dart';

/// 토스페이 (V2) bypass 파라미터 객체
@JsonSerializable()
class TosspayV2PaymentBypass {
  TosspayV2PaymentBypass({this.discountCode});

  factory TosspayV2PaymentBypass.fromJson(Map<String, dynamic> json) => _$TosspayV2PaymentBypassFromJson(json);

  /// 토스페이 bypass 관련 할인 코드
  final String? discountCode;

  Map<String, dynamic> toJson() => _$TosspayV2PaymentBypassToJson(this);
}
