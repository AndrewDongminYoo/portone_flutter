// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferPeriod _$OfferPeriodFromJson(Map<String, dynamic> json) => OfferPeriod(
  range: json['range'] == null
      ? null
      : OfferRange.fromJson(json['range'] as Map<String, dynamic>),
  interval: json['interval'] as String?,
);

Map<String, dynamic> _$OfferPeriodToJson(OfferPeriod instance) =>
    <String, dynamic>{
      'range': ?instance.range?.toJson(),
      'interval': ?instance.interval,
    };

OfferRange _$OfferRangeFromJson(Map<String, dynamic> json) =>
    OfferRange(from: json['from'] as String?, to: json['to'] as String?);

Map<String, dynamic> _$OfferRangeToJson(OfferRange instance) =>
    <String, dynamic>{'from': ?instance.from, 'to': ?instance.to};
