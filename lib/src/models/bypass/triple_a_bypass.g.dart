// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triple_a_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripleABypass _$TripleABypassFromJson(Map<String, dynamic> json) =>
    TripleABypass(
      payerPoi: json['payer_poi'] as String?,
      shippingCost: (json['shipping_cost'] as num?)?.toInt(),
      shippingDiscount: (json['shipping_discount'] as num?)?.toInt(),
      taxCost: (json['tax_cost'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TripleABypassToJson(TripleABypass instance) =>
    <String, dynamic>{
      'payer_poi': ?instance.payerPoi,
      'shipping_cost': ?instance.shippingCost,
      'shipping_discount': ?instance.shippingDiscount,
      'tax_cost': ?instance.taxCost,
    };
