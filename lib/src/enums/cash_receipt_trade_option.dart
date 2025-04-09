// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// 현금영수증 발급 타입 enum
@JsonEnum()
enum CashReceiptTradeOption {
  culture('CULTURE'),
  general('GENERAL'),
  publicTp('PUBLIC_TP'),
  ;

  const CashReceiptTradeOption(this.value);
  final String value;
}
