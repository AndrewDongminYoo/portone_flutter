// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'offer_period.g.dart';

/// 서비스 제공 기간 객체
@JsonSerializable()
class OfferPeriod {
  /// [OfferPeriod] 생성자
  OfferPeriod({
    this.range,
    this.interval,
  });

  /// JSON에서 [OfferPeriod] 객체로 변환하는 팩토리 메서드
  factory OfferPeriod.fromJson(Map<String, dynamic> json) => _$OfferPeriodFromJson(json);

  /// 기간 범위 (from/to 방식)
  final OfferRange? range;

  /// 제공 기간 주기
  ///
  /// 제공 주기 (${int}d | ${int}m | ${int}y 형태로 입력할 수 있습니다.)
  /// 예) 30일 주기 interval: '30d'
  /// 예) 6개월 주기 interval: '6m'
  /// 예) 1년 주기 interval: '1y'
  final String? interval;

  /// [OfferPeriod] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$OfferPeriodToJson(this);
}

/// 기간 범위 객체 (from, to 각각 선택 가능)
@JsonSerializable()
class OfferRange {
  /// [OfferRange] 생성자
  OfferRange({
    this.from,
    this.to,
  });

  /// JSON에서 [OfferRange] 객체로 변환하는 팩토리 메서드
  factory OfferRange.fromJson(Map<String, dynamic> json) => _$OfferRangeFromJson(json);
  final String? from;
  final String? to;

  /// [OfferRange] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$OfferRangeToJson(this);
}
