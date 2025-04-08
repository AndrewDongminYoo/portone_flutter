// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// 현금영수증 발급 타입 enum
@JsonEnum()
enum CashReceiptTradeOption {
  @JsonValue('CULTURE')
  CULTURE,
  @JsonValue('GENERAL')
  GENERAL,
  @JsonValue('PUBLIC_TP')
  PUBLIC_TP,
}
