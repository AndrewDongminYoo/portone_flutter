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

  /// JSON에서 [Customer] 객체로 변환하는 팩토리 메서드
  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);

  /// 구매자 고유 ID
  ///
  final String? customerId;

  /// 구매자 전체 이름
  ///
  /// fullName과 firstName / lastName이 모두 입력된 경우 fullName으로 기록됩니다.
  final String? fullName;

  /// 구매자 이름
  ///
  /// firstName을 입력하는 경우 lastName도 필수로 입력해야 합니다. fullName이 없고, firstName과 lastName이 존재하는 경우 {firstName} {lastName}으로 저장됩니다.
  final String? firstName;

  /// 구매자 성
  ///
  /// lastName을 입력하는 경우 firstName도 필수로 입력해야 합니다.
  final String? lastName;

  /// 구매자 연락처
  final String? phoneNumber;

  /// 구매자 이메일 주소
  ///
  /// 유효한 이메일 주소를 입력해주세요.
  final String? email;

  /// 구매자 주소 정보
  final Address? address;

  /// 구매자 성별
  final String? gender;

  /// 구매자 출생년도 (예: "1990")
  final String? birthYear;

  /// 구매자 출생월 (예: "12")
  final String? birthMonth;

  /// 구매자 출생일 (예: "25")
  final String? birthDay;

  /// [Customer] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
