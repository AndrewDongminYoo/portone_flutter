// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'kakaopay_payment_bypass.g.dart';

/// 카카오페이 bypass 파라미터 객체
@JsonSerializable()
class KakaopayPaymentBypass {
  KakaopayPaymentBypass({this.customMessage});

  factory KakaopayPaymentBypass.fromJson(Map<String, dynamic> json) =>
      _$KakaopayPaymentBypassFromJson(json);

  /// 카카오페이 결제창에 표시할 사용자 정의 문구 (문서에서는 custom_message)
  @JsonKey(name: 'custom_message')
  final String? customMessage;

  Map<String, dynamic> toJson() => _$KakaopayPaymentBypassToJson(this);
}
