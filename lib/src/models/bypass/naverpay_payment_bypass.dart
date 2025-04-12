// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'naverpay_payment_bypass.g.dart';

/// 네이버페이 bypass 파라미터 객체
@JsonSerializable()
class NaverpayPaymentBypass {
  /// [NaverpayPaymentBypass] 생성자
  NaverpayPaymentBypass({
    this.useCfmYmdt,
    this.productItems,
    this.deliveryFee,
  });

  /// JSON에서 [NaverpayPaymentBypass] 객체로 변환하는 팩토리 메서드
  factory NaverpayPaymentBypass.fromJson(Map<String, dynamic> json) => _$NaverpayPaymentBypassFromJson(json);

  /// 이용 완료일(YYYYMMDD)
  final String? useCfmYmdt;

  /// 결제 상품 항목 목록
  final List<NaverpayProductItem>? productItems;

  /// 배송비
  final num? deliveryFee;

  /// [NaverpayPaymentBypass] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$NaverpayPaymentBypassToJson(this);
}

@JsonSerializable()
class NaverpayProductItem {
  /// [NaverpayProductItem] 생성자
  NaverpayProductItem({
    required this.categoryType,
    required this.categoryId,
    required this.uid,
    required this.name,
    required this.count,
    this.payReferrer,
    this.startDate,
    this.endDate,
    this.sellerId,
    this.subMerchantInfo,
  });

  /// JSON에서 [NaverpayProductItem] 객체로 변환하는 팩토리 메서드
  factory NaverpayProductItem.fromJson(Map<String, dynamic> json) => _$NaverpayProductItemFromJson(json);

  /// 결제 상품 유형
  final String categoryType;

  /// 결제 상품 분류
  final String categoryId;

  /// 결제 상품 식별값
  final String uid;

  /// 상품명
  final String name;

  /// 결제 상품 유입경로 (예: "NAVER_BOOK", "NAVER_MUSIC", etc.)
  final String? payReferrer;

  /// 시작일(YYYYMMDD)
  final String? startDate;

  /// 종료일(YYYYMMDD)
  final String? endDate;

  /// 하위 판매자 식별키
  final String? sellerId;

  /// 결제 상품 개수
  final int count;

  /// 하부 가맹점 정보
  final NaverpaySubMerchantInfo? subMerchantInfo;

  /// [NaverpayProductItem] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$NaverpayProductItemToJson(this);
}

@JsonSerializable()
class NaverpaySubMerchantInfo {
  /// [NaverpaySubMerchantInfo] 생성자
  NaverpaySubMerchantInfo({
    required this.subMerchantName,
    required this.subMerchantId,
    required this.subMerchantBusinessNo,
    required this.subMerchantPayId,
    required this.subMerchantTelephoneNo,
    required this.subMerchantCustomerServiceUrl,
  });

  /// JSON에서 [NaverpaySubMerchantInfo] 객체로 변환하는 팩토리 메서드
  factory NaverpaySubMerchantInfo.fromJson(Map<String, dynamic> json) => _$NaverpaySubMerchantInfoFromJson(json);

  /// 하부 가맹점 명
  final String subMerchantName;

  /// 하부 가맹점 ID
  final String subMerchantId;

  /// 하부 가맹점 사업자 번호 (숫자 10자리)
  final String subMerchantBusinessNo;

  /// 하부 가맹점 결제 키
  final String subMerchantPayId;

  /// 하부 가맹점 대표 전화번호
  final String subMerchantTelephoneNo;

  /// 하부 가맹점 고객 서비스 URL
  final String subMerchantCustomerServiceUrl;

  /// [NaverpaySubMerchantInfo] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$NaverpaySubMerchantInfoToJson(this);
}
