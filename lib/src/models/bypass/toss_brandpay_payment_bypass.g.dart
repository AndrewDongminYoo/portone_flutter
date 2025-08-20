// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toss_brandpay_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TossBrandpayPaymentBypass _$TossBrandpayPaymentBypassFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TossBrandpayPaymentBypass', json, ($checkedConvert) {
  final val = TossBrandpayPaymentBypass(
    brandpayOptions: $checkedConvert(
      'brandpayOptions',
      (v) => v == null ? null : TossBrandpayOptions.fromJson(v as Map<String, dynamic>),
    ),
    discountCode: $checkedConvert('discountCode', (v) => v as String?),
    methodId: $checkedConvert('methodId', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$TossBrandpayPaymentBypassToJson(
  TossBrandpayPaymentBypass instance,
) => <String, dynamic>{
  'brandpayOptions': ?instance.brandpayOptions?.toJson(),
  'discountCode': ?instance.discountCode,
  'methodId': ?instance.methodId,
};

TossBrandpayOptions _$TossBrandpayOptionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TossBrandpayOptions', json, ($checkedConvert) {
      final val = TossBrandpayOptions(
        ui: $checkedConvert(
          'ui',
          (v) => v == null ? null : TossBrandpayUIOptions.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$TossBrandpayOptionsToJson(
  TossBrandpayOptions instance,
) => <String, dynamic>{'ui': ?instance.ui?.toJson()};

TossBrandpayUIOptions _$TossBrandpayUIOptionsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TossBrandpayUIOptions', json, ($checkedConvert) {
  final val = TossBrandpayUIOptions(
    highlightColor: $checkedConvert(
      'highlightColor',
      (v) => v as String? ?? '#3182f6',
    ),
    buttonStyle: $checkedConvert(
      'buttonStyle',
      (v) => $enumDecodeNullable(_$TossBrandpayButtonStyleEnumMap, v) ?? TossBrandpayButtonStyle.$default,
    ),
    labels: $checkedConvert(
      'labels',
      (v) => v == null ? null : TossBrandpayLabels.fromJson(v as Map<String, dynamic>),
    ),
    navigationBar: $checkedConvert(
      'navigationBar',
      (v) => v == null ? null : TossBrandpayNavigationBar.fromJson(v as Map<String, dynamic>),
    ),
    widgetOptions: $checkedConvert(
      'widgetOptions',
      (v) => v == null ? null : TossBrandpayWidgetOptions.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

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
    $checkedCreate('TossBrandpayLabels', json, ($checkedConvert) {
      final val = TossBrandpayLabels(
        oneTouchPay: $checkedConvert(
          'oneTouchPay',
          (v) => v as String? ?? '원터치 결제',
        ),
      );
      return val;
    });

Map<String, dynamic> _$TossBrandpayLabelsToJson(TossBrandpayLabels instance) => <String, dynamic>{
  'oneTouchPay': instance.oneTouchPay,
};

TossBrandpayNavigationBar _$TossBrandpayNavigationBarFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TossBrandpayNavigationBar', json, ($checkedConvert) {
  final val = TossBrandpayNavigationBar(
    visible: $checkedConvert('visible', (v) => v as bool? ?? true),
    paddingTop: $checkedConvert('paddingTop', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$TossBrandpayNavigationBarToJson(
  TossBrandpayNavigationBar instance,
) => <String, dynamic>{
  'visible': instance.visible,
  'paddingTop': ?instance.paddingTop,
};

TossBrandpayWidgetOptions _$TossBrandpayWidgetOptionsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TossBrandpayWidgetOptions', json, ($checkedConvert) {
  final val = TossBrandpayWidgetOptions(
    methodType: $checkedConvert(
      'methodType',
      (v) => $enumDecodeNullable(_$TossBrandpayMethodTypeEnumMap, v),
    ),
    methodId: $checkedConvert('methodId', (v) => v as String?),
    ui: $checkedConvert(
      'ui',
      (v) => v == null ? null : TossBrandpayWidgetUIOptions.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

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
) => $checkedCreate('TossBrandpayWidgetUIOptions', json, ($checkedConvert) {
  final val = TossBrandpayWidgetUIOptions(
    promotionSection: $checkedConvert(
      'promotionSection',
      (v) => v == null ? null : TossBrandpayPromotionSection.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$TossBrandpayWidgetUIOptionsToJson(
  TossBrandpayWidgetUIOptions instance,
) => <String, dynamic>{
  'promotionSection': ?instance.promotionSection?.toJson(),
};

TossBrandpayPromotionSection _$TossBrandpayPromotionSectionFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TossBrandpayPromotionSection', json, ($checkedConvert) {
  final val = TossBrandpayPromotionSection(
    summary: $checkedConvert(
      'summary',
      (v) => v == null ? null : TossBrandpayPromotionSummary.fromJson(v as Map<String, dynamic>),
    ),
    description: $checkedConvert(
      'description',
      (v) => v == null
          ? null
          : TossBrandpayPromotionDescription.fromJson(
              v as Map<String, dynamic>,
            ),
    ),
  );
  return val;
});

Map<String, dynamic> _$TossBrandpayPromotionSectionToJson(
  TossBrandpayPromotionSection instance,
) => <String, dynamic>{
  'summary': ?instance.summary?.toJson(),
  'description': ?instance.description?.toJson(),
};

TossBrandpayPromotionSummary _$TossBrandpayPromotionSummaryFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TossBrandpayPromotionSummary', json, ($checkedConvert) {
  final val = TossBrandpayPromotionSummary(
    visible: $checkedConvert('visible', (v) => v as bool? ?? true),
  );
  return val;
});

Map<String, dynamic> _$TossBrandpayPromotionSummaryToJson(
  TossBrandpayPromotionSummary instance,
) => <String, dynamic>{'visible': instance.visible};

TossBrandpayPromotionDescription _$TossBrandpayPromotionDescriptionFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TossBrandpayPromotionDescription', json, ($checkedConvert) {
  final val = TossBrandpayPromotionDescription(
    visible: $checkedConvert('visible', (v) => v as bool? ?? true),
    defaultOpen: $checkedConvert('defaultOpen', (v) => v as bool? ?? false),
  );
  return val;
});

Map<String, dynamic> _$TossBrandpayPromotionDescriptionToJson(
  TossBrandpayPromotionDescription instance,
) => <String, dynamic>{
  'visible': instance.visible,
  'defaultOpen': instance.defaultOpen,
};
