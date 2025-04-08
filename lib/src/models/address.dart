// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/enums/country.dart';

part 'address.g.dart';

/// 주소 정보 객체
@JsonSerializable()
class Address {
  Address({
    this.country,
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.province,
    this.zipcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  /// ISO 3166-1 alpha-2 국가 코드
  final Country? country;

  /// 일반 주소
  final String? addressLine1;

  /// 상세 주소
  final String? addressLine2;

  /// 도시 (선택)
  final String? city;

  /// 주/도/시 (선택)
  final String? province;

  /// 우편번호 (선택)
  final String? zipcode;

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
