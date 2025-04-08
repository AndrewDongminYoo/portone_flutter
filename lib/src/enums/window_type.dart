// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// 창 타입 enum
@JsonEnum()
enum WindowType {
  @JsonValue('IFRAME')
  IFRAME,
  @JsonValue('POPUP')
  POPUP,
  @JsonValue('REDIRECTION')
  REDIRECTION,
  @JsonValue('UI')
  UI,
}
