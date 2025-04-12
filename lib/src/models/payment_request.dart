// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/enums/enums.dart';
import 'package:portone_flutter_v2/src/models/models.dart';

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
    required this.appScheme,
    this.channelKey,
    this.channelGroupId,
    this.taxFreeAmount,
    this.vatAmount,
    this.customer,
    this.windowType,
    this.redirectUrl,
    this.noticeUrls,
    this.confirmUrl,
    this.isEscrow,
    this.products,
    this.locale,
    this.customData,
    this.isCulturalExpense,
    this.bypass,
    this.country,
    this.productType,
    this.expiredTime,
    this.cashReceiptTradeOption,
    this.offerPeriod,
    this.storeDetails,
    this.shippingAddress,
    this.promotionId,
    this.popup,
  });

  /// JSON에서 [PaymentRequest] 객체로 변환하는 팩토리 메서드
  factory PaymentRequest.fromJson(Map<String, dynamic> json) => _$PaymentRequestFromJson(json);

  /// 상점 아이디
  ///
  /// 포트원 계정에 생성된 상점을 식별하는 고유한 값으로 관리자 콘솔에서 확인할 수 있습니다.
  final String storeId;

  /// 고객사 주문 고유 번호
  ///
  /// 고객사가 채번하는 주문 고유 번호입니다.
  /// 이미 승인 완료 된 paymentId로 결제나 가상계좌 발급을 시도하는 경우 에러가 발생합니다.
  final String paymentId;

  /// 주문명으로 고객사에서 자유롭게 입력합니다.
  final String orderName;

  /// 결제 금액
  ///
  /// 결제를 원하는 통화(currency)별 scale factor(소수점 몇번째 자리까지 유효한지)를 고려한 number 형식만 허용됩니다.
  /// 1000 만큼 원화(KRW) 결제를 하는 경우, scale factor가 0이기 때문에 1000 * (10의 0승) = 1000을 전달해야 합니다.
  /// 1.50 만큼 달러(USD) 결제를 하는 경우, scale factor가 2이기 때문에 1.50 * (10의 2승) = 150을 전달해야 합니다.
  /// 이렇게 전달 된 값은 실제로 PG사에 결제를 요청할때 currency에 따라 올바른 값으로 변환되기 때문에 반드시 currency값을 필수로 입력해야 합니다.
  final int totalAmount;

  /// ISO 4217 통화 코드
  ///
  /// See: https://en.wikipedia.org/wiki/ISO_4217
  final PaymentCurrency currency;

  /// 결제수단 구분코드
  ///
  /// PG사별 지원되는 결제수단이 모두 상이합니다.
  final PaymentPayMethod payMethod;

  /// 채널 키
  ///
  /// 콘솔에서 채널 연동 시 생성된 채널 키입니다.
  final String? channelKey;

  /// 스마트 라우팅 그룹 ID
  ///
  /// 관리자 콘솔의 [연동 관리] → [스마트 라우팅] 메뉴에서 확인할 수 있습니다.
  /// 스마트 라우팅 그룹 ID를 지정하여 결제창을 호출하면, 스마트 라우팅 그룹 내 설정된 채널 비율에 따라 확률 기반으로 하나의 결제대행사가 호출됩니다.
  final String? channelGroupId;

  /// 면세 금액
  ///
  /// 결제 금액 중 면세금액에 해당하는 금액을 입력합니다.
  /// 미입력 시 0으로 취급됩니다.
  /// 결제 금액과 동일하게 통화별 scale factor가 적용된 금액으로 전달해주세요.
  final int? taxFreeAmount;

  /// 부가세
  /// 부가세 금액을 입력합니다.
  /// 미입력 시 과세 금액의 1/11 로 자동 계산됩니다.
  /// 결제 금액과 동일하게 통화별 scale factor가 적용된 금액으로 전달해주세요.
  final int? vatAmount;

  /// 구매자 정보
  ///
  final Customer? customer;

  /// 환경 별 제공되는 결제/본인인증 창 유형
  ///
  /// PG사에 따라 가능한 창 유형이 다릅니다.
  /// 전달되지 않았을 때 결정되는 기본 창이 다릅니다.
  /// 미입력 시, 해당 PG사의 기본 창 방식을 따릅니다.
  final WindowTypes? windowType;

  /// 리디렉션 방식에서 프로세스 완료 후 이동될 고객사 URL
  ///
  /// 결제/본인인증 창이 새로운 창으로 리다이렉트 되어 프로세스가 진행되는 방식인 경우 필수 설정 항목 입니다.
  /// 대부분의 모바일 환경에서 창 호출시 필수 항목입니다.
  /// 리다이렉트 환경에서 해당 필드 누락시 에러가 발생합니다.
  ///
  /// [PaymentResponse] 값이 쿼리 파라미터에 추가되어 리다이렉트될 URL
  final String? redirectUrl;

  /// 웹훅(Webhook) 수신 주소
  ///
  /// 유효한 형식의 문자열을 입력해주세요.
  /// 포트원 관리자 콘솔에 설정한 웹훅 주소 대신 사용할 웹훅 주소를 결제시마다 설정할 수 있습니다.
  /// 해당 값 설정시 관리자 콘솔에 설정한 주소로는 웹훅발송이 되지 않는점 유의하시기 바랍니다.
  final List<String>? noticeUrls;

  /// 최종 결제 승인 요청 여부 확인 URL
  ///
  /// 유효한 URL 형식의 문자열을 입력해주세요.
  /// confirm_process 사용 시 고객사 endpoint url 설정
  /// 기술지원 메일(tech.support@portone.io)로 별도 요청이 필요합니다.
  final String? confirmUrl;

  /// 모바일 결제 후 고객사 앱으로 복귀를 위한 URL scheme
  ///
  /// WebView 환경 결제시 필수설정 항목 입니다.
  /// ISP/앱카드 앱에서 결제정보인증 후 기존 앱으로 복귀할 때 사용합니다.
  final String appScheme;

  /// 에스크로 결제 여부
  ///
  /// 미입력 시 기본값: false
  /// 에스크로 설정은 PG사와 협의 이후 진행되어야 합니다.
  final bool? isEscrow;

  /// 구매 상품 상세 정보
  final List<ProductDetail>? products;

  /// 문화비 지출 여부
  ///
  /// 도서, 공연, 박물관 등 문화비 지출 여부
  final bool? isCulturalExpense;

  /// 결제창 언어 (지원되지 않은 일부 PG사 존재)
  final PaymentLocale? locale;

  /// 결제 정보와 함께 관리하고 싶은 고객사 커스텀 JSON 데이터
  final Map<String, String>? customData;

  /// 결제 만료 기한 (선택, "yyyy-MM-dd HH:mm:ss" 형식)
  final String? expiredTime;

  /// PG사 결제창 호출 시 PG사로 그대로 bypass할 값들의 모음
  final PaymentBypass? bypass;

  /// ISO 3166-1 alpha-2 국가 코드
  ///
  /// See: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
  final Country? country;

  /// 상품 유형
  final ProductType? productType;

  /// 현금영수증 발급 타입 (예: CULTURE, GENERAL, PUBLIC_TP)
  final CashReceiptTradeOption? cashReceiptTradeOption;

  /// 서비스 제공 기간
  ///
  /// range와 interval 중 하나를 입력해주세요.
  /// range: 제공 기간 범위
  /// interval: 제공 기간 주기
  final OfferPeriod? offerPeriod;

  /// 상점 정보
  ///
  /// KSNET 카카오페이의 경우 필수 입력
  /// (신)나이스페이의 경우 매출 전표에 표기 할 용도로 선택 입력
  /// 이니시스 일본결제의 경우 JPPG(gmoPayment) 결제의 상점정보로 사용되거나 편의점 결제 시 영수증 표시 정보로 사용됨.
  final StoreDetails? storeDetails;

  /// 주소 정보
  final Address? shippingAddress;

  /// 프로모션 아이디
  final String? promotionId;

  /// 결제창이 팝업 방식일 경우 결제창에 적용할 속성
  final Popup? popup;

  /// [PaymentRequest] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$PaymentRequestToJson(this);
}
