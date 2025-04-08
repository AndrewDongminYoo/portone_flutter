// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// 결제 통화 enum
@JsonEnum()
enum PaymentCurrency {
  @JsonValue('CURRENCY_KRW')
  KRW,
  @JsonValue('CURRENCY_USD')
  USD,
  @JsonValue('CURRENCY_EUR')
  EUR,
  @JsonValue('CURRENCY_JPY')
  JPY,
  @JsonValue('CURRENCY_CNY')
  CNY,
}
