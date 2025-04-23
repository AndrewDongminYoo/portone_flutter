// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'toss_brandpay_payment_bypass.g.dart';

/// 토스 브랜드페이 bypass 파라미터 객체
@JsonSerializable()
class TossBrandpayPaymentBypass {
  /// [TossBrandpayPaymentBypass] 생성자
  TossBrandpayPaymentBypass({
    this.brandpayOptions,
    this.discountCode,
    this.methodId,
  });

  /// JSON에서 [TossBrandpayPaymentBypass] 객체로 변환하는 팩토리 메서드
  factory TossBrandpayPaymentBypass.fromJson(Map<String, dynamic> json) =>
      _$TossBrandpayPaymentBypassFromJson(json);

  /// loadBrandpay 호출시 전달하는 옵션 객체
  final TossBrandpayOptions? brandpayOptions;

  /// 카드사 할인코드
  final String? discountCode;

  /// 등록되어 있는 결제수단 중 바로 결제할 때 사용되는 ID
  final String? methodId;

  /// [TossBrandpayPaymentBypass] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$TossBrandpayPaymentBypassToJson(this);
}

/// loadBrandpay 호출시 전달하는 옵션 객체
@JsonSerializable()
class TossBrandpayOptions {
  /// [TossBrandpayOptions] 생성자
  TossBrandpayOptions({this.ui});

  /// JSON에서 [TossBrandpayOptions] 객체로 변환하는 팩토리 메서드
  factory TossBrandpayOptions.fromJson(Map<String, dynamic> json) =>
      _$TossBrandpayOptionsFromJson(json);

  /// UI 옵션 객체
  final TossBrandpayUIOptions? ui;

  /// [TossBrandpayOptions] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$TossBrandpayOptionsToJson(this);
}

/// UI 옵션 객체
@JsonSerializable()
class TossBrandpayUIOptions {
  /// [TossBrandpayUIOptions] 생성자
  TossBrandpayUIOptions({
    this.highlightColor = '#3182f6',
    this.buttonStyle = TossBrandpayButtonStyle.$default,
    this.labels,
    this.navigationBar,
    this.widgetOptions,
  });

  /// JSON에서 [TossBrandpayUIOptions] 객체로 변환하는 팩토리 메서드
  factory TossBrandpayUIOptions.fromJson(Map<String, dynamic> json) =>
      _$TossBrandpayUIOptionsFromJson(json);

  /// UI의 메인 색상 (기본값: "#3182f6")
  final String highlightColor;

  /// 버튼 스타일 ("default" 또는 "full")
  @JsonKey(name: 'buttonStyle')
  final TossBrandpayButtonStyle buttonStyle;

  /// 텍스트 등 라벨 옵션
  final TossBrandpayLabels? labels;

  /// 내비게이션 바 옵션
  final TossBrandpayNavigationBar? navigationBar;

  /// 브랜드페이 위젯 옵션
  final TossBrandpayWidgetOptions? widgetOptions;

  /// [TossBrandpayUIOptions] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$TossBrandpayUIOptionsToJson(this);
}

/// 버튼 스타일 ("default" 또는 "full")
enum TossBrandpayButtonStyle {
  /// 기본 버튼 스타일
  @JsonValue('default')
  $default,

  /// 꽉 차는 버튼 스타일
  @JsonValue('full')
  full,
}

/// 텍스트 등 라벨 옵션
@JsonSerializable()
class TossBrandpayLabels {
  /// [TossBrandpayLabels] 생성자
  TossBrandpayLabels({this.oneTouchPay = '원터치 결제'});

  /// JSON에서 [TossBrandpayLabels] 객체로 변환하는 팩토리 메서드
  factory TossBrandpayLabels.fromJson(Map<String, dynamic> json) =>
      _$TossBrandpayLabelsFromJson(json);

  /// 원터치 결제 대신 노출할 텍스트 (기본값: "원터치 결제")
  final String oneTouchPay;

  /// [TossBrandpayLabels] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$TossBrandpayLabelsToJson(this);
}

/// 내비게이션 바 옵션
@JsonSerializable()
class TossBrandpayNavigationBar {
  /// [TossBrandpayNavigationBar] 생성자
  TossBrandpayNavigationBar({this.visible = true, this.paddingTop});

  /// JSON에서 [TossBrandpayNavigationBar] 객체로 변환하는 팩토리 메서드
  factory TossBrandpayNavigationBar.fromJson(Map<String, dynamic> json) =>
      _$TossBrandpayNavigationBarFromJson(json);

  /// 내비게이션 바 사용 여부 (기본값: true)
  final bool visible;

  /// 내비게이션 바 위쪽 여백 (px 단위)
  final int? paddingTop;

  /// [TossBrandpayNavigationBar] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$TossBrandpayNavigationBarToJson(this);
}

/// 브랜드페이 위젯 옵션
@JsonSerializable()
class TossBrandpayWidgetOptions {
  /// [TossBrandpayWidgetOptions] 생성자
  TossBrandpayWidgetOptions({this.methodType, this.methodId, this.ui});

  /// JSON에서 [TossBrandpayWidgetOptions] 객체로 변환하는 팩토리 메서드
  factory TossBrandpayWidgetOptions.fromJson(Map<String, dynamic> json) =>
      _$TossBrandpayWidgetOptionsFromJson(json);

  /// 위젯에 보여줄 결제 수단 ("카드" 또는 "계좌")
  final TossBrandpayMethodType? methodType;

  /// 기본 결제 수단으로 선택할 결제 수단 ID
  final String? methodId;

  /// 위젯 UI 옵션
  final TossBrandpayWidgetUIOptions? ui;

  /// [TossBrandpayWidgetOptions] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$TossBrandpayWidgetOptionsToJson(this);
}

/// 위젯에 보여줄 결제 수단 ("카드" 또는 "계좌")
enum TossBrandpayMethodType {
  /// 카드
  @JsonValue('카드')
  card,

  /// 계좌
  @JsonValue('계좌')
  account,
}

/// 위젯 UI 옵션
@JsonSerializable()
class TossBrandpayWidgetUIOptions {
  /// [TossBrandpayWidgetUIOptions] 생성자
  TossBrandpayWidgetUIOptions({this.promotionSection});

  /// JSON에서 [TossBrandpayWidgetUIOptions] 객체로 변환하는 팩토리 메서드
  factory TossBrandpayWidgetUIOptions.fromJson(Map<String, dynamic> json) =>
      _$TossBrandpayWidgetUIOptionsFromJson(json);

  /// 프로모션 섹션 옵션
  final TossBrandpayPromotionSection? promotionSection;

  /// [TossBrandpayWidgetUIOptions] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$TossBrandpayWidgetUIOptionsToJson(this);
}

/// 프로모션 섹션 옵션
@JsonSerializable()
class TossBrandpayPromotionSection {
  /// [TossBrandpayPromotionSection] 생성자
  TossBrandpayPromotionSection({this.summary, this.description});

  /// JSON에서 [TossBrandpayPromotionSection] 객체로 변환하는 팩토리 메서드
  factory TossBrandpayPromotionSection.fromJson(Map<String, dynamic> json) =>
      _$TossBrandpayPromotionSectionFromJson(json);

  /// 혜택 배지 영역 옵션
  final TossBrandpayPromotionSummary? summary;

  /// 결제 혜택 상세 설명 옵션
  final TossBrandpayPromotionDescription? description;

  /// [TossBrandpayPromotionSection] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$TossBrandpayPromotionSectionToJson(this);
}

/// 혜택 배지 영역 옵션
@JsonSerializable()
class TossBrandpayPromotionSummary {
  /// [TossBrandpayPromotionSummary] 생성자
  TossBrandpayPromotionSummary({this.visible = true});

  /// JSON에서 [TossBrandpayPromotionSummary] 객체로 변환하는 팩토리 메서드
  factory TossBrandpayPromotionSummary.fromJson(Map<String, dynamic> json) =>
      _$TossBrandpayPromotionSummaryFromJson(json);

  /// 혜택 배지 영역 표시 여부 (기본값: true)
  final bool visible;

  /// [TossBrandpayPromotionSummary] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$TossBrandpayPromotionSummaryToJson(this);
}

/// 결제 혜택 상세 설명 옵션
@JsonSerializable()
class TossBrandpayPromotionDescription {
  /// [TossBrandpayPromotionDescription] 생성자
  TossBrandpayPromotionDescription({
    this.visible = true,
    this.defaultOpen = false,
  });

  /// JSON에서 [TossBrandpayPromotionDescription] 객체로 변환하는 팩토리 메서드
  factory TossBrandpayPromotionDescription.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TossBrandpayPromotionDescriptionFromJson(json);

  /// 결제 혜택 영역 표시 여부 (기본값: true)
  final bool visible;

  /// 상세 설명 기본 오픈 여부 (기본값: false)
  final bool defaultOpen;

  /// [TossBrandpayPromotionDescription] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() =>
      _$TossBrandpayPromotionDescriptionToJson(this);
}
