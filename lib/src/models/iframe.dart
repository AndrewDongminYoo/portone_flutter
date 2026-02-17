// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'iframe.g.dart';

/// 결제창이 iframe 방식일 경우 결제창에 적용할 속성
///
/// UI가 iframe 창으로 열릴 때 적용되는 속성입니다.
@JsonSerializable()
class Iframe {
  /// [Iframe] 생성자
  Iframe({this.dim});

  /// JSON에서 [Iframe] 객체로 변환하는 팩토리 메서드
  factory Iframe.fromJson(Map<String, dynamic> json) => _$IframeFromJson(json);

  /// 결제창 배경 dimmed 여부
  ///
  /// `false`로 설정하면 결제창 배경이 투명해집니다.
  /// 기본값은 `true`입니다.
  final bool? dim;

  /// [Iframe] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$IframeToJson(this);
}
