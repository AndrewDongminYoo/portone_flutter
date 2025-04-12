// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'eximbay_v2_bypass.g.dart';

/// 엑심베이 V2 bypass 파라미터 객체 (추가 필드 포함)
@JsonSerializable()
class EximbayV2Bypass {
  EximbayV2Bypass({
    this.payment,
    this.merchant,
    this.tax,
    this.surcharge,
    this.shipTo,
    this.billTo,
    this.settings,
  });

  /// JSON에서 [EximbayV2Bypass] 객체로 변환하는 팩토리 메서드
  factory EximbayV2Bypass.fromJson(Map<String, dynamic> json) => _$EximbayV2BypassFromJson(json);

  /// 결제 정보
  final PaymentInfo? payment;

  /// 상점 정보
  final MerchantInfo? merchant;

  /// 세금 정보
  final TaxInfo? tax;

  /// 최대 3개의 추가 비용 목록
  final List<Surcharge>? surcharge;

  /// 배송지 정보
  @JsonKey(name: 'ship_to')
  final AddressInfo? shipTo;

  /// 청구지 정보
  @JsonKey(name: 'bill_to')
  final AddressInfo? billTo;

  /// 설정 정보
  final SettingsInfo? settings;

  /// [EximbayV2Bypass] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$EximbayV2BypassToJson(this);
}

/// 결제 정보 클래스
@JsonSerializable()
class PaymentInfo {
  PaymentInfo({
    this.paymentMethod,
    this.multiPaymentMethod,
  });

  /// JSON에서 [PaymentInfo] 객체로 변환하는 팩토리 메서드
  factory PaymentInfo.fromJson(Map<String, dynamic> json) => _$PaymentInfoFromJson(json);

  /// 결제수단 다이렉트
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;

  /// 결제수단 다이렉트 목록
  @JsonKey(name: 'multi_payment_method')
  final List<String>? multiPaymentMethod;

  /// [PaymentInfo] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$PaymentInfoToJson(this);
}

/// 상점 정보 클래스
@JsonSerializable()
class MerchantInfo {
  MerchantInfo({
    this.shop,
    this.partnerCode,
  });

  /// JSON에서 [MerchantInfo] 객체로 변환하는 팩토리 메서드
  factory MerchantInfo.fromJson(Map<String, dynamic> json) => _$MerchantInfoFromJson(json);

  /// 상점명
  final String? shop;

  /// 파트너 코드
  @JsonKey(name: 'partner_code')
  final String? partnerCode;

  /// [MerchantInfo] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$MerchantInfoToJson(this);
}

/// 세금 정보 클래스
@JsonSerializable()
class TaxInfo {
  TaxInfo({
    this.receiptStatus,
  });

  /// JSON에서 [TaxInfo] 객체로 변환하는 팩토리 메서드
  factory TaxInfo.fromJson(Map<String, dynamic> json) => _$TaxInfoFromJson(json);

  /// 현금영수증 발급 여부 ("Y" 또는 "N")
  @JsonKey(name: 'receipt_status')
  final String? receiptStatus;

  /// [TaxInfo] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$TaxInfoToJson(this);
}

/// 추가 비용 목록 클래스 (최대 3개)
@JsonSerializable()
class Surcharge {
  Surcharge({
    this.name,
    this.quantity,
    this.unitPrice,
  });

  /// JSON에서 [Surcharge] 객체로 변환하는 팩토리 메서드
  factory Surcharge.fromJson(Map<String, dynamic> json) => _$SurchargeFromJson(json);

  /// 항목명
  final String? name;

  /// 수량
  final String? quantity;

  /// 단가 (음수 가능)
  @JsonKey(name: 'unit_price')
  final String? unitPrice;

  /// [Surcharge] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$SurchargeToJson(this);
}

/// 배송지 및 청구지 공통 정보 클래스
@JsonSerializable()
class AddressInfo {
  AddressInfo({
    this.city,
    this.country,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.postalCode,
    this.state,
    this.street1,
  });

  /// JSON에서 [AddressInfo] 객체로 변환하는 팩토리 메서드
  factory AddressInfo.fromJson(Map<String, dynamic> json) => _$AddressInfoFromJson(json);

  /// 도시
  final String? city;

  /// 국가 (ISO 3166 두 자리 국가 코드)
  final String? country;

  /// 이름 (성 제외)
  @JsonKey(name: 'first_name')
  final String? firstName;

  /// 성
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// 전화번호
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;

  /// 우편번호
  @JsonKey(name: 'postal_code')
  final String? postalCode;

  /// 미국/캐나다의 경우 주 정보
  final String? state;

  /// 상세 주소
  final String? street1;

  /// [AddressInfo] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$AddressInfoToJson(this);
}

/// 설정 정보 클래스
@JsonSerializable()
class SettingsInfo {
  SettingsInfo({
    this.callFromApp,
    this.issuerCountry,
    this.virtualaccountExpiryDate,
  });

  /// JSON에서 [SettingsInfo] 객체로 변환하는 팩토리 메서드
  factory SettingsInfo.fromJson(Map<String, dynamic> json) => _$SettingsInfoFromJson(json);

  /// 인앱 웹뷰 여부 ("Y" 또는 "N")
  @JsonKey(name: 'call_from_app')
  final String? callFromApp;

  /// 해외 결제 가맹점에서 국내 결제를 사용할 경우 "KR" 등
  @JsonKey(name: 'issuer_country')
  final String? issuerCountry;

  /// 입금 만료 일자 (yyyyMMddHH)
  @JsonKey(name: 'virtualaccount_expiry_date')
  final String? virtualaccountExpiryDate;

  /// [SettingsInfo] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$SettingsInfoToJson(this);
}
