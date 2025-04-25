// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'hyphen_bypass.g.dart';

/// 하이픈 bypass 파라미터 객체
@JsonSerializable()
class HyphenBypass {
  /// [HyphenBypass] 생성자
  HyphenBypass({this.designCd});

  /// JSON에서 [HyphenBypass] 객체로 변환하는 팩토리 메서드
  factory HyphenBypass.fromJson(Map<String, dynamic> json) => _$HyphenBypassFromJson(json);

  /// 디자인 코드
  final String? designCd;

  /// [HyphenBypass] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$HyphenBypassToJson(this);
}
