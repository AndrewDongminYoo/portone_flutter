// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'popup.g.dart';

@JsonSerializable()
class Popup {
  Popup({
    this.center,
  });

  factory Popup.fromJson(Map<String, dynamic> json) => _$PopupFromJson(json);

  /// true로 설정하면 결제창이 브라우저 화면의 정중앙에 표시됩니다.
  final bool? center;

  Map<String, dynamic> toJson() => _$PopupToJson(this);
}
