// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/models/address.dart';

part 'customer.g.dart';

/// 구매자 정보 객체
@JsonSerializable()
class Customer {
  Customer({
    this.customerId,
    this.fullName,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.email,
    this.address,
    this.gender,
    this.birthYear,
    this.birthMonth,
    this.birthDay,
  });

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  /// 구매자 고유 ID (선택)
  final String? customerId;

  /// 구매자 전체 이름 (선택)
  final String? fullName;

  /// 구매자 이름 (선택)
  final String? firstName;

  /// 구매자 성 (선택)
  final String? lastName;

  /// 구매자 연락처 (선택)
  final String? phoneNumber;

  /// 구매자 이메일 (선택)
  final String? email;

  /// 구매자 주소 (선택)
  final Address? address;

  /// 구매자 성별 (선택)
  final String? gender;

  /// 출생년도 (예: "1990", 선택)
  final String? birthYear;

  /// 출생월 (예: "12", 선택)
  final String? birthMonth;

  /// 출생일 (예: "25", 선택)
  final String? birthDay;

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
