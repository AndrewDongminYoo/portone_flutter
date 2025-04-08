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

  factory TosspaymentsPaymentBypass.fromJson(Map<String, dynamic> json) =>
      _$TosspaymentsPaymentBypassFromJson(json);

  /// 프로모션 적용 코드 (선택)
  final String? discountCode;

  /// 해외 카드만 결제 여부 (선택)
  final bool? useInternationalCardOnly;

  Map<String, dynamic> toJson() => _$TosspaymentsPaymentBypassToJson(this);
}
