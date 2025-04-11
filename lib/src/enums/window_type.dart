// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'window_type.g.dart';

@JsonSerializable()
class WindowTypes {
  WindowTypes({
    this.mobile,
    this.pc,
  });

  factory WindowTypes.fromJson(Map<String, dynamic> json) => _$WindowTypesFromJson(json);

  final WindowType? mobile;
  final WindowType? pc;

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
  final String value;
}
