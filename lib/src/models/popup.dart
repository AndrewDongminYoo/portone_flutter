// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'popup.g.dart';

@JsonSerializable()
class Popup {
  /// [Popup] 생성자
  Popup({
    this.center,
  });

  /// JSON에서 [Popup] 객체로 변환하는 팩토리 메서드
  factory Popup.fromJson(Map<String, dynamic> json) => _$PopupFromJson(json);

  /// true로 설정하면 결제창이 브라우저 화면의 정중앙에 표시됩니다.
  final bool? center;

  /// [Popup] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$PopupToJson(this);
}
