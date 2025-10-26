// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toss_brandpay_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TossBrandpayPaymentBypass _$TossBrandpayPaymentBypassFromJson(
  Map<String, dynamic> json,
) => TossBrandpayPaymentBypass(
  brandpayOptions: json['brandpayOptions'] == null
      ? null
      : TossBrandpayOptions.fromJson(
          json['brandpayOptions'] as Map<String, dynamic>,
        ),
  discountCode: json['discountCode'] as String?,
  methodId: json['methodId'] as String?,
);

Map<String, dynamic> _$TossBrandpayPaymentBypassToJson(
  TossBrandpayPaymentBypass instance,
) => <String, dynamic>{
  'brandpayOptions': ?instance.brandpayOptions?.toJson(),
  'discountCode': ?instance.discountCode,
  'methodId': ?instance.methodId,
};

TossBrandpayOptions _$TossBrandpayOptionsFromJson(Map<String, dynamic> json) =>
    TossBrandpayOptions(
      ui: json['ui'] == null
          ? null
          : TossBrandpayUIOptions.fromJson(json['ui'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TossBrandpayOptionsToJson(
  TossBrandpayOptions instance,
) => <String, dynamic>{'ui': ?instance.ui?.toJson()};

TossBrandpayUIOptions _$TossBrandpayUIOptionsFromJson(
  Map<String, dynamic> json,
) => TossBrandpayUIOptions(
  highlightColor: json['highlightColor'] as String? ?? '#3182f6',
  buttonStyle:
      $enumDecodeNullable(
        _$TossBrandpayButtonStyleEnumMap,
        json['buttonStyle'],
      ) ??
      TossBrandpayButtonStyle.$default,
  labels: json['labels'] == null
      ? null
      : TossBrandpayLabels.fromJson(json['labels'] as Map<String, dynamic>),
  navigationBar: json['navigationBar'] == null
      ? null
      : TossBrandpayNavigationBar.fromJson(
          json['navigationBar'] as Map<String, dynamic>,
        ),
  widgetOptions: json['widgetOptions'] == null
      ? null
      : TossBrandpayWidgetOptions.fromJson(
          json['widgetOptions'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$TossBrandpayUIOptionsToJson(
  TossBrandpayUIOptions instance,
) => <String, dynamic>{
  'highlightColor': instance.highlightColor,
  'buttonStyle': _$TossBrandpayButtonStyleEnumMap[instance.buttonStyle],
  'labels': ?instance.labels?.toJson(),
  'navigationBar': ?instance.navigationBar?.toJson(),
  'widgetOptions': ?instance.widgetOptions?.toJson(),
};

const Map<TossBrandpayButtonStyle, String> _$TossBrandpayButtonStyleEnumMap = {
  TossBrandpayButtonStyle.$default: 'default',
  TossBrandpayButtonStyle.full: 'full',
};

TossBrandpayLabels _$TossBrandpayLabelsFromJson(Map<String, dynamic> json) =>
    TossBrandpayLabels(oneTouchPay: json['oneTouchPay'] as String? ?? '원터치 결제');

Map<String, dynamic> _$TossBrandpayLabelsToJson(TossBrandpayLabels instance) =>
    <String, dynamic>{'oneTouchPay': instance.oneTouchPay};

TossBrandpayNavigationBar _$TossBrandpayNavigationBarFromJson(
  Map<String, dynamic> json,
) => TossBrandpayNavigationBar(
  visible: json['visible'] as bool? ?? true,
  paddingTop: (json['paddingTop'] as num?)?.toInt(),
);

Map<String, dynamic> _$TossBrandpayNavigationBarToJson(
  TossBrandpayNavigationBar instance,
) => <String, dynamic>{
  'visible': instance.visible,
  'paddingTop': ?instance.paddingTop,
};

TossBrandpayWidgetOptions _$TossBrandpayWidgetOptionsFromJson(
  Map<String, dynamic> json,
) => TossBrandpayWidgetOptions(
  methodType: $enumDecodeNullable(
    _$TossBrandpayMethodTypeEnumMap,
    json['methodType'],
  ),
  methodId: json['methodId'] as String?,
  ui: json['ui'] == null
      ? null
      : TossBrandpayWidgetUIOptions.fromJson(
          json['ui'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$TossBrandpayWidgetOptionsToJson(
  TossBrandpayWidgetOptions instance,
) => <String, dynamic>{
  'methodType': ?_$TossBrandpayMethodTypeEnumMap[instance.methodType],
  'methodId': ?instance.methodId,
  'ui': ?instance.ui?.toJson(),
};

const Map<TossBrandpayMethodType, String> _$TossBrandpayMethodTypeEnumMap = {
  TossBrandpayMethodType.card: '카드',
  TossBrandpayMethodType.account: '계좌',
};

TossBrandpayWidgetUIOptions _$TossBrandpayWidgetUIOptionsFromJson(
  Map<String, dynamic> json,
) => TossBrandpayWidgetUIOptions(
  promotionSection: json['promotionSection'] == null
      ? null
      : TossBrandpayPromotionSection.fromJson(
          json['promotionSection'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$TossBrandpayWidgetUIOptionsToJson(
  TossBrandpayWidgetUIOptions instance,
) => <String, dynamic>{
  'promotionSection': ?instance.promotionSection?.toJson(),
};

TossBrandpayPromotionSection _$TossBrandpayPromotionSectionFromJson(
  Map<String, dynamic> json,
) => TossBrandpayPromotionSection(
  summary: json['summary'] == null
      ? null
      : TossBrandpayPromotionSummary.fromJson(
          json['summary'] as Map<String, dynamic>,
        ),
  description: json['description'] == null
      ? null
      : TossBrandpayPromotionDescription.fromJson(
          json['description'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$TossBrandpayPromotionSectionToJson(
  TossBrandpayPromotionSection instance,
) => <String, dynamic>{
  'summary': ?instance.summary?.toJson(),
  'description': ?instance.description?.toJson(),
};

TossBrandpayPromotionSummary _$TossBrandpayPromotionSummaryFromJson(
  Map<String, dynamic> json,
) => TossBrandpayPromotionSummary(visible: json['visible'] as bool? ?? true);

Map<String, dynamic> _$TossBrandpayPromotionSummaryToJson(
  TossBrandpayPromotionSummary instance,
) => <String, dynamic>{'visible': instance.visible};

TossBrandpayPromotionDescription _$TossBrandpayPromotionDescriptionFromJson(
  Map<String, dynamic> json,
) => TossBrandpayPromotionDescription(
  visible: json['visible'] as bool? ?? true,
  defaultOpen: json['defaultOpen'] as bool? ?? false,
);

Map<String, dynamic> _$TossBrandpayPromotionDescriptionToJson(
  TossBrandpayPromotionDescription instance,
) => <String, dynamic>{
  'visible': instance.visible,
  'defaultOpen': instance.defaultOpen,
};
