// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/enums/cash_receipt_trade_option.dart';
import 'package:portone_flutter_v2/src/enums/payment_currency.dart';
import 'package:portone_flutter_v2/src/enums/payment_locale.dart';
import 'package:portone_flutter_v2/src/enums/payment_pay_method.dart';
import 'package:portone_flutter_v2/src/enums/window_type.dart';
import 'package:portone_flutter_v2/src/models/address.dart';
import 'package:portone_flutter_v2/src/models/bypass/kakaopay_payment_bypass.dart';
import 'package:portone_flutter_v2/src/models/bypass/tosspay_v2_payment_bypass.dart';
import 'package:portone_flutter_v2/src/models/bypass/tosspayments_payment_bypass.dart';
import 'package:portone_flutter_v2/src/models/customer.dart';
import 'package:portone_flutter_v2/src/models/offer_period.dart';
import 'package:portone_flutter_v2/src/models/product_detail.dart';

part 'payment_request.g.dart';

/// 결제 요청 데이터 객체
@JsonSerializable()
class PaymentRequest {
  PaymentRequest({
    required this.storeId,
    required this.paymentId,
    required this.orderName,
    required this.totalAmount,
    required this.currency,
    required this.payMethod,
    this.channelKey,
    this.channelGroupId,
    this.taxFreeAmount,
    this.vatAmount,
    this.customer,
    this.customerId,
    this.fullName,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.email,
    this.address,
    this.windowType,
    this.redirectUrl,
    this.noticeUrls,
    this.confirmUrl,
    this.appScheme,
    this.isEscrow = false,
    this.products,
    this.locale,
    this.customData,
    this.expiredTime,
    this.cashReceiptTradeOption,
    this.offerPeriod,
    this.kakaopay,
    this.tosspayments,
    this.tosspayV2,
  });

  factory PaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestFromJson(json);

  /// 상점 아이디 (포트원 관리자 콘솔에서 확인)
  final String storeId;

  /// 고객사 주문 고유 번호
  final String paymentId;

  /// 주문명
  final String orderName;

  /// 결제 금액 (통화별 scale factor 적용된 값)
  final int totalAmount;

  /// ISO 4217 통화 코드
  final PaymentCurrency currency;

  /// 결제수단 구분코드
  final PaymentPayMethod payMethod;

  /// 채널 키 (선택)
  final String? channelKey;

  /// 스마트 라우팅 그룹 ID (선택)
  final String? channelGroupId;

  /// 면세 금액 (선택)
  final int? taxFreeAmount;

  /// 부가세 (선택, 미입력 시 과세금액의 1/11로 자동계산)
  final int? vatAmount;

  /// 구매자 정보 (선택)
  final Customer? customer;

  /// 구매자 ID (선택)
  final String? customerId;

  /// 구매자 전체 이름 (선택)
  final String? fullName;

  /// 구매자 이름 (선택)
  final String? firstName;

  /// 구매자 성 (선택)
  final String? lastName;

  /// 구매자 연락처 (선택)
  final String? phoneNumber;

  /// 구매자 이메일 (선택)
  final String? email;

  /// 구매자 주소 (선택)
  final Address? address;

  /// 환경 별 제공되는 결제/본인인증 창 유형
  ///
  /// PG사에 따라 가능한 창 유형이 다릅니다.
  /// 전달되지 않았을 때 결정되는 기본 창이 다릅니다.
  /// 미입력 시, 해당 PG사의 기본 창 방식을 따릅니다.
  final WindowTypes? windowType;

  /// 리디렉션 방식 결제 시 고객사 URL (선택)
  final String? redirectUrl;

  /// 웹훅 수신 주소 배열 (선택)
  final List<String>? noticeUrls;

  /// 결제 승인 요청 여부 확인 URL (선택)
  final String? confirmUrl;

  /// 모바일 결제 후 복귀를 위한 URL scheme (선택)
  final String? appScheme;

  /// 에스크로 결제 여부 (선택, 기본 false)
  final bool isEscrow;

  /// 구매 상품 상세 정보 (선택)
  final List<ProductDetail>? products;

  /// 결제창 언어 (예: KO_KR, EN_US 등)
  final PaymentLocale? locale;

  /// 고객사 커스텀 데이터 (선택)
  final Map<String, dynamic>? customData;

  /// 결제 만료 기한 (선택, "yyyy-MM-dd HH:mm:ss" 형식)
  final String? expiredTime;

  /// 현금영수증 발급 타입 (예: CULTURE, GENERAL, PUBLIC_TP)
  final CashReceiptTradeOption? cashReceiptTradeOption;

  /// 서비스 제공 기간 (선택)
  final OfferPeriod? offerPeriod;

  // === PG사별 bypass 필드 (카카오페이, 토스페이먼츠, 토스페이) ===

  /// 카카오페이 bypass 파라미터 (선택)
  @JsonKey(name: 'kakaopay')
  final KakaopayPaymentBypass? kakaopay;

  /// 토스페이먼츠 bypass 파라미터 (선택)
  @JsonKey(name: 'tosspayments')
  final TosspaymentsPaymentBypass? tosspayments;

  /// 토스페이 (V2) bypass 파라미터 (선택)
  @JsonKey(name: 'tosspay_v2')
  final TosspayV2PaymentBypass? tosspayV2;

  Map<String, dynamic> toJson() => _$PaymentRequestToJson(this);
}
