// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'offer_period.g.dart';

/// 서비스 제공 기간 객체
@JsonSerializable()
class OfferPeriod {
  OfferPeriod({this.range, this.interval});

  factory OfferPeriod.fromJson(Map<String, dynamic> json) =>
      _$OfferPeriodFromJson(json);

  /// 기간 범위 (from/to 방식)
  final OfferRange? range;

  /// 제공 주기 (예: "30d", "6m", "1y")
  final String? interval;

  Map<String, dynamic> toJson() => _$OfferPeriodToJson(this);
}

/// 기간 범위 객체 (from, to 각각 선택 가능)
@JsonSerializable()
class OfferRange {
  OfferRange({this.from, this.to});

  factory OfferRange.fromJson(Map<String, dynamic> json) =>
      _$OfferRangeFromJson(json);
  final String? from;
  final String? to;

  Map<String, dynamic> toJson() => _$OfferRangeToJson(this);
}
