// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/enums/country.dart';

part 'address.g.dart';

/// 주소 정보 객체
@JsonSerializable()
class Address {
  /// [Address] 생성자
  Address({
    this.country,
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.province,
    this.zipcode,
  });

  /// JSON에서 [Address] 객체로 변환하는 팩토리 메서드
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  /// ISO 3166-1 alpha-2 국가 코드
  ///
  /// See: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
  final Country? country;

  /// 일반 주소
  final String? addressLine1;

  /// 상세 주소
  final String? addressLine2;

  /// 도시
  final String? city;

  /// 주/도/시
  final String? province;

  /// 우편번호
  final String? zipcode;

  /// [Address] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
