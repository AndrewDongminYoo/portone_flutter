// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'smartro_v2_payment_bypass.g.dart';

@JsonSerializable()
class SmartroV2PaymentBypass {
  /// [SmartroV2PaymentBypass] 생성자
  SmartroV2PaymentBypass({
    this.goodsCnt,
    this.skinColor = SmartroV2SkinColor.red,
    this.openType = SmartroV2OpenType.kr,
  });

  /// JSON에서 [SmartroV2PaymentBypass] 객체로 변환하는 팩토리 메서드
  factory SmartroV2PaymentBypass.fromJson(Map<String, dynamic> json) => _$SmartroV2PaymentBypassFromJson(json);

  @JsonKey(name: 'GoodsCnt')
  int? goodsCnt;

  @JsonKey(name: 'SkinColor')
  SmartroV2SkinColor skinColor;

  @JsonKey(name: 'OpenType')
  SmartroV2OpenType openType;

  /// [SmartroV2PaymentBypass] 객체를 JSON으로 변환하는 메서드
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

  /// 직렬화에 사용될 값
  final String value;
}

@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum SmartroV2OpenType {
  kr('KR'),
  en('EN'),
  ;

  const SmartroV2OpenType(this.value);

  /// 직렬화에 사용될 값
  final String value;
}
