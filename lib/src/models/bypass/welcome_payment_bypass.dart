// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'welcome_payment_bypass.g.dart';

/// 웰컴페이먼츠 bypass 파라미터 객체
@JsonSerializable()
class WelcomePaymentBypass {
  WelcomePaymentBypass({
    this.logoUrl,
    this.logo2nd,
    this.acceptmethod,
    this.pCardOption,
    this.pOnlyEasypaycode,
    this.pReserved,
  });

  /// JSON에서 [WelcomePaymentBypass] 객체로 변환하는 팩토리 메서드
  factory WelcomePaymentBypass.fromJson(Map<String, dynamic> json) => _$WelcomePaymentBypassFromJson(json);

  /// 메인 로고 URL (크기: 89x19)
  @JsonKey(name: 'logo_url')
  final String? logoUrl;

  /// 서브 로고 URL (크기: 64x13)
  @JsonKey(name: 'logo_2nd')
  final String? logo2nd;

  /// 결제 옵션 배열 (예: SKIN(#색상), below1000, 등)
  final List<String>? acceptmethod;

  /// 신용카드 우선 선택 옵션 (ex: "selcode=14")
  @JsonKey(name: 'P_CARD_OPTION')
  final String? pCardOption;

  /// 카드 결제창에 렌더링될 간편 결제 리스트 (ex: "KAKAOPAY:LPAY:PAYCO")
  @JsonKey(name: 'P_ONLY_EASYPAYCODE')
  final String? pOnlyEasypaycode;

  /// 결제창 동작 제어를 위한 파라미터 배열
  @JsonKey(name: 'P_RESERVED')
  final List<String>? pReserved;

  /// [WelcomePaymentBypass] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$WelcomePaymentBypassToJson(this);
}
