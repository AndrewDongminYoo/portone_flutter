// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'window_type.g.dart';

@JsonSerializable()
class WindowTypes {
  WindowTypes({
    this.mobile,
    this.pc,
  });

  /// JSON에서 [WindowTypes] 객체로 변환하는 팩토리 메서드
  factory WindowTypes.fromJson(Map<String, dynamic> json) => _$WindowTypesFromJson(json);

  final WindowType? mobile;
  final WindowType? pc;

  /// [WindowTypes] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$WindowTypesToJson(this);
}

/// 창 타입 enum
@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum WindowType {
  iframe('IFRAME'),
  popup('POPUP'),
  redirection('REDIRECTION'),
  ui('UI'),
  ;

  const WindowType(this.value);

  /// 직렬화에 사용될 값
  final String value;
}
