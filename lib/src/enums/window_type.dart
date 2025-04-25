// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'window_type.g.dart';

/// 환경 별 제공되는 결제/본인인증 창 유형
///
/// PG사에 따라 가능한 창 유형이 다릅니다.
/// 전달되지 않았을 때 결정되는 기본 창이 다릅니다.
/// 미입력 시, 해당 PG사의 기본 창 방식을 따릅니다.
@JsonSerializable()
class WindowTypes {
  /// [WindowTypes] 생성자
  WindowTypes({this.mobile, this.pc});

  /// JSON에서 [WindowTypes] 객체로 변환하는 팩토리 메서드
  factory WindowTypes.fromJson(Map<String, dynamic> json) => _$WindowTypesFromJson(json);

  /// 모바일 환경에서 사용할 창 타입
  final WindowType? mobile;

  /// PC 환경에서 사용할 창 타입
  final WindowType? pc;

  /// [WindowTypes] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$WindowTypesToJson(this);
}

/// 결제/본인인증 창 타입
@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum WindowType {
  /// iframe 방식
  iframe('IFRAME'),

  /// 팝업 방식
  popup('POPUP'),

  /// 리다이렉션 방식
  redirection('REDIRECTION'),

  /// UI 방식
  ui('UI');

  const WindowType(this.value);

  /// 직렬화에 사용될 값
  final String value;

  @override
  String toString() => value;
}
