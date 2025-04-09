// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'smartro_v2_payment_bypass.g.dart';

@JsonSerializable()
class SmartroV2PaymentBypass {
  SmartroV2PaymentBypass({
    this.goodsCnt,
    this.skinColor = SmartroV2SkinColor.red,
    this.openType = SmartroV2OpenType.kr,
  });

  factory SmartroV2PaymentBypass.fromJson(Map<String, dynamic> json) => _$SmartroV2PaymentBypassFromJson(json);

  @JsonKey(name: 'GoodsCnt')
  int? goodsCnt;

  @JsonKey(name: 'SkinColor')
  SmartroV2SkinColor skinColor;

  @JsonKey(name: 'OpenType')
  SmartroV2OpenType openType;

  Map<String, dynamic> toJson() => _$SmartroV2PaymentBypassToJson(this);
}

@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum SmartroV2SkinColor {
  red('RED'),
  green('GREEN'),
  blue('BLUE'),
  purple('PURPLE'),
  ;

  const SmartroV2SkinColor(this.value);
  final String value;
}

@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum SmartroV2OpenType {
  kr('KR'),
  en('EN'),
  ;

  const SmartroV2OpenType(this.value);
  final String value;
}
