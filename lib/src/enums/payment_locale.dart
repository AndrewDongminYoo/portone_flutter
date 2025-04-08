// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// 결제창 언어 enum
@JsonEnum()
enum PaymentLocale {
  @JsonValue('KO_KR')
  KO_KR,
  @JsonValue('EN_US')
  EN_US,
}
