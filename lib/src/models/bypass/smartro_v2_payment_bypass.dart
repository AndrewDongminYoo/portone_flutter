// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'smartro_v2_payment_bypass.g.dart';

/// 스마트로 V2 bypass 파라미터
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

  /// 결제 상품 품목 개수
  @JsonKey(name: 'GoodsCnt')
  int? goodsCnt;

  /// UI 스타일 (기본값: "RED")
  @JsonKey(name: 'SkinColor')
  SmartroV2SkinColor skinColor;

  /// 해외 카드만 결제를 허용할지 여부
  @JsonKey(name: 'OpenType')
  SmartroV2OpenType openType;

  /// [SmartroV2PaymentBypass] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$SmartroV2PaymentBypassToJson(this);
}

/// UI 스타일 (기본값: "RED")
@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum SmartroV2SkinColor {
  /// 빨간색
  red('RED'),

  /// 초록색
  green('GREEN'),

  /// 파란색
  blue('BLUE'),

  /// 보라색
  purple('PURPLE'),
  ;

  const SmartroV2SkinColor(this.value);

  /// 직렬화에 사용될 값
  final String value;

  @override
  String toString() => value;
}

/// 해외 카드만 결제를 허용할지 여부
@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum SmartroV2OpenType {
  /// 국내 카드 결제 가능
  kr('KR'),

  /// 해외 카드 결제 가능
  en('EN'),
  ;

  const SmartroV2OpenType(this.value);

  /// 직렬화에 사용될 값
  final String value;

  @override
  String toString() => value;
}
