// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferPeriod _$OfferPeriodFromJson(Map<String, dynamic> json) => $checkedCreate('OfferPeriod', json, ($checkedConvert) {
  final val = OfferPeriod(
    range: $checkedConvert(
      'range',
      (v) => v == null ? null : OfferRange.fromJson(v as Map<String, dynamic>),
    ),
    interval: $checkedConvert('interval', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$OfferPeriodToJson(OfferPeriod instance) => <String, dynamic>{
  'range': ?instance.range?.toJson(),
  'interval': ?instance.interval,
};

OfferRange _$OfferRangeFromJson(Map<String, dynamic> json) => $checkedCreate('OfferRange', json, ($checkedConvert) {
  final val = OfferRange(
    from: $checkedConvert('from', (v) => v as String?),
    to: $checkedConvert('to', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$OfferRangeToJson(OfferRange instance) => <String, dynamic>{
  'from': ?instance.from,
  'to': ?instance.to,
};
