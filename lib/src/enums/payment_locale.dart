// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// 결제창 언어 enum
@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum PaymentLocale {
  /// 한국어
  koKr('KO_KR'),

  /// 영어
  enUs('EN_US'),

  /// 중국어 (중국 본토)
  zhCn('ZH_CN'),

  /// 중국어 (대만)
  zhTw('ZH_TW'),

  /// 일본어
  jaJp('JA_JP'),

  /// 러시아어
  ruRu('RU_RU'),

  /// 타이어
  thTh('TH_TH'),

  /// 베트남어
  viVn('VI_VN'),
  ;

  const PaymentLocale(this.value);
  final String value;
}
