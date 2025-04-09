// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'toss_brandpay_payment_bypass.g.dart';

/// 토스 브랜드페이 bypass 파라미터 객체
@JsonSerializable()
class TossBrandpayPaymentBypass {
  TossBrandpayPaymentBypass({
    this.brandpayOptions,
    this.discountCode,
    this.methodId,
  });

  factory TossBrandpayPaymentBypass.fromJson(Map<String, dynamic> json) => _$TossBrandpayPaymentBypassFromJson(json);

  /// loadBrandpay 호출시 전달하는 옵션 객체
  final TossBrandpayOptions? brandpayOptions;

  /// 카드사 할인코드
  final String? discountCode;

  /// 등록되어 있는 결제수단 중 바로 결제할 때 사용되는 ID
  final String? methodId;

  Map<String, dynamic> toJson() => _$TossBrandpayPaymentBypassToJson(this);
}

@JsonSerializable()
class TossBrandpayOptions {
  TossBrandpayOptions({
    this.ui,
  });

  factory TossBrandpayOptions.fromJson(Map<String, dynamic> json) => _$TossBrandpayOptionsFromJson(json);

  /// UI 옵션 객체
  final TossBrandpayUIOptions? ui;

  Map<String, dynamic> toJson() => _$TossBrandpayOptionsToJson(this);
}

@JsonSerializable()
class TossBrandpayUIOptions {
  TossBrandpayUIOptions({
    this.highlightColor = '#3182f6',
    this.buttonStyle = TossBrandpayButtonStyle.$default,
    this.labels,
    this.navigationBar,
    this.widgetOptions,
  });

  factory TossBrandpayUIOptions.fromJson(Map<String, dynamic> json) => _$TossBrandpayUIOptionsFromJson(json);

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

  Map<String, dynamic> toJson() => _$TossBrandpayUIOptionsToJson(this);
}

enum TossBrandpayButtonStyle {
  @JsonValue('default')
  $default,
  @JsonValue('full')
  full,
}

@JsonSerializable()
class TossBrandpayLabels {
  TossBrandpayLabels({this.oneTouchPay = '원터치 결제'});

  factory TossBrandpayLabels.fromJson(Map<String, dynamic> json) => _$TossBrandpayLabelsFromJson(json);

  /// 원터치 결제 대신 노출할 텍스트 (기본값: "원터치 결제")
  final String oneTouchPay;

  Map<String, dynamic> toJson() => _$TossBrandpayLabelsToJson(this);
}

@JsonSerializable()
class TossBrandpayNavigationBar {
  TossBrandpayNavigationBar({
    this.visible = true,
    this.paddingTop,
  });

  factory TossBrandpayNavigationBar.fromJson(Map<String, dynamic> json) => _$TossBrandpayNavigationBarFromJson(json);

  /// 내비게이션 바 사용 여부 (기본값: true)
  final bool visible;

  /// 내비게이션 바 위쪽 여백 (px 단위)
  final int? paddingTop;

  Map<String, dynamic> toJson() => _$TossBrandpayNavigationBarToJson(this);
}

@JsonSerializable()
class TossBrandpayWidgetOptions {
  TossBrandpayWidgetOptions({
    this.methodType,
    this.methodId,
    this.ui,
  });

  factory TossBrandpayWidgetOptions.fromJson(Map<String, dynamic> json) => _$TossBrandpayWidgetOptionsFromJson(json);

  /// 위젯에 보여줄 결제 수단 ("카드" 또는 "계좌")
  final TossBrandpayMethodType? methodType;

  /// 기본 결제 수단으로 선택할 결제 수단 ID
  final String? methodId;

  /// 위젯 UI 옵션
  final TossBrandpayWidgetUIOptions? ui;

  Map<String, dynamic> toJson() => _$TossBrandpayWidgetOptionsToJson(this);
}

enum TossBrandpayMethodType {
  @JsonValue('카드')
  card,
  @JsonValue('계좌')
  account,
}

@JsonSerializable()
class TossBrandpayWidgetUIOptions {
  TossBrandpayWidgetUIOptions({
    this.promotionSection,
  });

  factory TossBrandpayWidgetUIOptions.fromJson(Map<String, dynamic> json) =>
      _$TossBrandpayWidgetUIOptionsFromJson(json);

  /// 프로모션 섹션 옵션
  final TossBrandpayPromotionSection? promotionSection;

  Map<String, dynamic> toJson() => _$TossBrandpayWidgetUIOptionsToJson(this);
}

@JsonSerializable()
class TossBrandpayPromotionSection {
  TossBrandpayPromotionSection({
    this.summary,
    this.description,
  });

  factory TossBrandpayPromotionSection.fromJson(Map<String, dynamic> json) =>
      _$TossBrandpayPromotionSectionFromJson(json);

  /// 혜택 배지 영역 옵션
  final TossBrandpayPromotionSummary? summary;

  /// 결제 혜택 상세 설명 옵션
  final TossBrandpayPromotionDescription? description;

  Map<String, dynamic> toJson() => _$TossBrandpayPromotionSectionToJson(this);
}

@JsonSerializable()
class TossBrandpayPromotionSummary {
  TossBrandpayPromotionSummary({
    this.visible = true,
  });

  factory TossBrandpayPromotionSummary.fromJson(Map<String, dynamic> json) =>
      _$TossBrandpayPromotionSummaryFromJson(json);

  /// 혜택 배지 영역 표시 여부 (기본값: true)
  final bool visible;

  Map<String, dynamic> toJson() => _$TossBrandpayPromotionSummaryToJson(this);
}

@JsonSerializable()
class TossBrandpayPromotionDescription {
  TossBrandpayPromotionDescription({
    this.visible = true,
    this.defaultOpen = false,
  });

  factory TossBrandpayPromotionDescription.fromJson(Map<String, dynamic> json) =>
      _$TossBrandpayPromotionDescriptionFromJson(json);

  /// 결제 혜택 영역 표시 여부 (기본값: true)
  final bool visible;

  /// 상세 설명 기본 오픈 여부 (기본값: false)
  final bool defaultOpen;

  Map<String, dynamic> toJson() => _$TossBrandpayPromotionDescriptionToJson(this);
}
