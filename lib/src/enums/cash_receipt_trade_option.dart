// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// 현금영수증 발급 타입 enum
@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum CashReceiptTradeOption {
  /// 문화비
  culture('CULTURE'),

  /// 일반 (기본값)
  general('GENERAL'),

  /// 교통비
  publicTp('PUBLIC_TP');

  const CashReceiptTradeOption(this.value);

  /// 직렬화에 사용될 값
  final String value;

  @override
  String toString() => value;
}
