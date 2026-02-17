// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paypal_v2_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaypalV2Bypass _$PaypalV2BypassFromJson(Map<String, dynamic> json) =>
    PaypalV2Bypass(
      purchaseUnits: (json['purchase_units'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      payer: json['payer'] as Map<String, dynamic>?,
      paymentSource: json['payment_source'] as Map<String, dynamic>?,
      additionalData: (json['additional_data'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$PaypalV2BypassToJson(PaypalV2Bypass instance) =>
    <String, dynamic>{
      'purchase_units': ?instance.purchaseUnits,
      'payer': ?instance.payer,
      'payment_source': ?instance.paymentSource,
      'additional_data': ?instance.additionalData,
    };
