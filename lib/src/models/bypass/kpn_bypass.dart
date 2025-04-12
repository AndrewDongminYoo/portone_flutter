// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'kpn_bypass.g.dart';

/// KPN bypass 파라미터 객체
@JsonSerializable()
class KpnBypass {
  KpnBypass({
    this.cardSelect,
  });

  /// JSON에서 [KpnBypass] 객체로 변환하는 팩토리 메서드
  factory KpnBypass.fromJson(Map<String, dynamic> json) => _$KpnBypassFromJson(json);

  /// 카드 선택 옵션 배열 (예: "GLOBAL", "11PAY", "LEGACY_AUTH", "KEY_IN")
  final List<KpnCardSelect>? cardSelect;

  /// [KpnBypass] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$KpnBypassToJson(this);
}

@JsonEnum(valueField: 'value')
enum KpnCardSelect {
  @JsonValue('GLOBAL')
  global,
  @JsonValue('11PAY')
  elevenPay,
  @JsonValue('LEGACY_AUTH')
  legacyAuth,
  @JsonValue('KEY_IN')
  keyIn,
}
