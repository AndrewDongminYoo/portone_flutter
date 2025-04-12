// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'inicis_jp_bypass.g.dart';

/// 이니시스 일본 bypass 파라미터 객체
@JsonSerializable()
class InicisJpBypass {
  /// [InicisJpBypass] 생성자
  InicisJpBypass({
    this.paymentUI,
  });

  /// JSON에서 [InicisJpBypass] 객체로 변환하는 팩토리 메서드
  factory InicisJpBypass.fromJson(Map<String, dynamic> json) => _$InicisJpBypassFromJson(json);

  /// 결제창 UI 설정
  final InicisJpPaymentUI? paymentUI;

  /// [InicisJpBypass] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$InicisJpBypassToJson(this);
}

/// 결제창 UI 설정
@JsonSerializable()
class InicisJpPaymentUI {
  /// [InicisJpPaymentUI] 생성자
  InicisJpPaymentUI({
    this.colorTheme,
    this.logoUrl,
  });

  /// JSON에서 [InicisJpPaymentUI] 객체로 변환하는 팩토리 메서드
  factory InicisJpPaymentUI.fromJson(Map<String, dynamic> json) => _$InicisJpPaymentUIFromJson(json);

  /// 결제창 색상 (예: red1, red2, ..., blue6)
  final String? colorTheme;

  /// 가맹점 로고 이미지 URL (69x20 픽셀 권장)
  final String? logoUrl;

  /// [InicisJpPaymentUI] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$InicisJpPaymentUIToJson(this);
}
