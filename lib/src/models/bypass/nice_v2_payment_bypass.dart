// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'nice_v2_payment_bypass.g.dart';

/// (신)나이스페이먼츠 bypass 파라미터 객체
@JsonSerializable()
class NiceV2PaymentBypass {
  /// [NiceV2PaymentBypass] 생성자
  NiceV2PaymentBypass({
    this.logoImage,
    this.npDisableScroll,
    this.skinType = NiceV2SkinType.red,
    this.userCI,
    this.mallUserID,
    this.directCouponYN,
    this.directShowOpt,
    this.cardShowOpt,
    this.paycoClientId,
    this.paycoAccessToken,
    this.samPayMallType,
  });

  /// JSON에서 [NiceV2PaymentBypass] 객체로 변환하는 팩토리 메서드
  factory NiceV2PaymentBypass.fromJson(Map<String, dynamic> json) => _$NiceV2PaymentBypassFromJson(json);

  /// 결제창 로고 이미지 URL
  @JsonKey(name: 'LogoImage')
  final String? logoImage;

  /// 결제창 스크롤 미사용 여부 (PC Only: "Y" 또는 "N")
  @JsonKey(name: 'NPDisableScroll')
  final String? npDisableScroll;

  /// 결제창 스킨 색상 설정 (기본값: "red")
  @JsonKey(name: 'SkinType')
  final NiceV2SkinType skinType;

  /// 결제 고객 사용자 인증 CI 정보 (문화 상품권 결제 시 사용)
  final String? userCI;

  /// 상점 사용자 아이디 (문화 상품권 결제 시 필요)
  final String? mallUserID;

  /// 신용카드 쿠폰 자동 적용 여부 ("Y" 또는 "N")
  final String? directCouponYN;

  /// 다이렉트 호출 결제 수단 ("BANK" 또는 "CELLPHONE")
  final String? directShowOpt;

  /// 카드사별 호출 방식 (문자열 형식으로 입력)
  final String? cardShowOpt;

  /// 페이코 계정 자동 로그인 ClientId
  final String? paycoClientId;

  /// 페이코 계정 자동 로그인 AccessToken
  final String? paycoAccessToken;

  /// 삼성페이 고객사 유형 ("99" 또는 "01")
  final String? samPayMallType;

  /// [NiceV2PaymentBypass] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$NiceV2PaymentBypassToJson(this);
}

@JsonEnum(valueField: 'value')
enum NiceV2SkinType {
  red('red'),
  green('green'),
  purple('purple'),
  gray('gray'),
  dark('dark');

  const NiceV2SkinType(this.value);

  /// 직렬화에 사용될 값
  final String value;
}
