// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/models/bypass/bypass.dart';

part 'payment_bypass.g.dart';

/// PG사 결제창 호출 시 PG사로 그대로 bypass할 값들의 모음
@JsonSerializable()
class PaymentBypass {
  PaymentBypass({
    this.kakaopay,
    this.tosspayments,
    this.tosspayV2,
  });

  factory PaymentBypass.fromJson(Map<String, dynamic> json) => _$PaymentBypassFromJson(json);

  /// 카카오페이 bypass 파라미터
  ///
  @JsonKey(name: 'kakaopay')
  final KakaopayPaymentBypass? kakaopay;

  /// 토스페이먼츠 bypass 파라미터
  ///
  @JsonKey(name: 'tosspayments')
  final TosspaymentsPaymentBypass? tosspayments;

  /// 토스페이 (V2) bypass 파라미터
  ///
  @JsonKey(name: 'tosspay_v2')
  final TosspayV2PaymentBypass? tosspayV2;
  Map<String, dynamic> toJson() => _$PaymentBypassToJson(this);
}
