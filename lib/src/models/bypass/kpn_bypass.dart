// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'kpn_bypass.g.dart';

/// KPN bypass 파라미터 객체
@JsonSerializable()
class KpnBypass {
  /// [KpnBypass] 생성자
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

/// 카드 선택 옵션
@JsonEnum(valueField: 'value')
enum KpnCardSelect {
  /// 해외카드 (VISA + MASTER + JCB)
  @JsonValue('GLOBAL')
  global,

  /// 11Pay (SKPay)
  @JsonValue('11PAY')
  elevenPay,

  /// 구인증
  @JsonValue('LEGACY_AUTH')
  legacyAuth,

  /// 키인
  @JsonValue('KEY_IN')
  keyIn,
}
