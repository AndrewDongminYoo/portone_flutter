// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'hyphen_bypass.g.dart';

/// 하이픈 bypass 파라미터 객체
@JsonSerializable()
class HyphenBypass {
  HyphenBypass({
    this.designCd,
  });

  factory HyphenBypass.fromJson(Map<String, dynamic> json) => _$HyphenBypassFromJson(json);

  /// 디자인 코드
  final String? designCd;

  Map<String, dynamic> toJson() => _$HyphenBypassToJson(this);
}
