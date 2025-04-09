// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'inicis_jp_bypass.g.dart';

/// 이니시스 일본 bypass 파라미터 객체
@JsonSerializable()
class InicisJpBypass {
  InicisJpBypass({
    this.paymentUI,
  });

  factory InicisJpBypass.fromJson(Map<String, dynamic> json) => _$InicisJpBypassFromJson(json);

  /// 결제창 UI 설정
  final InicisJpPaymentUI? paymentUI;

  Map<String, dynamic> toJson() => _$InicisJpBypassToJson(this);
}

@JsonSerializable()
class InicisJpPaymentUI {
  InicisJpPaymentUI({
    this.colorTheme,
    this.logoUrl,
  });

  factory InicisJpPaymentUI.fromJson(Map<String, dynamic> json) => _$InicisJpPaymentUIFromJson(json);

  /// 결제창 색상 (예: red1, red2, ..., blue6)
  final String? colorTheme;

  /// 가맹점 로고 이미지 URL (69x20 픽셀 권장)
  final String? logoUrl;

  Map<String, dynamic> toJson() => _$InicisJpPaymentUIToJson(this);
}
