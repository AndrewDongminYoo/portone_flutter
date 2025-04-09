// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'kpn_bypass.g.dart';

/// KPN bypass 파라미터 객체
@JsonSerializable()
class KpnBypass {
  KpnBypass({
    this.cardSelect,
  });

  factory KpnBypass.fromJson(Map<String, dynamic> json) => _$KpnBypassFromJson(json);

  /// 카드 선택 옵션 배열 (예: "GLOBAL", "11PAY", "LEGACY_AUTH", "KEY_IN")
  final List<KpnCardSelect>? cardSelect;

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
