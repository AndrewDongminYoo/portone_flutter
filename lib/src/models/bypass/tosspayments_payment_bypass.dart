// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'tosspayments_payment_bypass.g.dart';

/// 토스페이먼츠 bypass 파라미터 객체
@JsonSerializable()
class TosspaymentsPaymentBypass {
  TosspaymentsPaymentBypass({
    this.discountCode,
    this.useInternationalCardOnly,
  });

  /// JSON에서 [TosspaymentsPaymentBypass] 객체로 변환하는 팩토리 메서드
  factory TosspaymentsPaymentBypass.fromJson(Map<String, dynamic> json) => _$TosspaymentsPaymentBypassFromJson(json);

  /// 프로모션 적용 코드
  final String? discountCode;

  /// 해외 카드만 결제 여부
  final bool? useInternationalCardOnly;

  /// [TosspaymentsPaymentBypass] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$TosspaymentsPaymentBypassToJson(this);
}
