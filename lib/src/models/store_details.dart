// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'store_details.g.dart';

/// 상점 정보
///
/// KSNET 카카오페이의 경우 필수 입력
/// (신)나이스페이의 경우 매출 전표에 표기 할 용도로 선택 입력
/// 이니시스 일본결제의 경우 JPPG(gmoPayment) 결제의 상점정보로 사용되거나
/// 편의점 결제 시 영수증 표시 정보로 사용됨.
@JsonSerializable()
class StoreDetails {
  /// 기본 생성자
  StoreDetails({
    this.ceoFullName,
    this.phoneNumber,
    this.address,
    this.zipcode,
    this.email,
    this.businessName,
    this.businessRegistrationNumber,
    this.storeName,
    this.storeNameShort,
    this.storeNameEn,
    this.storeNameKana,
    this.openingHours,
    this.contactName,
  });

  /// JSON에서 [StoreDetails] 객체 생성
  /// JSON에서 [StoreDetails] 객체로 변환하는 팩토리 메서드
  factory StoreDetails.fromJson(Map<String, dynamic> json) =>
      _$StoreDetailsFromJson(json);

  /// 상점 대표자 이름
  final String? ceoFullName;

  /// 상점 연락처
  final String? phoneNumber;

  /// 상점 주소
  final String? address;

  /// 상점 우편번호
  final String? zipcode;

  /// 상점 이메일
  final String? email;

  /// 상점 사업자 명
  final String? businessName;

  /// 상점 사업자 등록 번호
  final String? businessRegistrationNumber;

  /// 상점명
  final String? storeName;

  /// 상점명 약어
  final String? storeNameShort;

  /// 상점명 영문
  final String? storeNameEn;

  /// 상점명 후리카나 (일본어 읽는법 표기)
  final String? storeNameKana;

  /// 상점 영업시간 (HH:mm)
  final OpeningHours? openingHours;

  /// 상점 연락처 정보 이름 (ex: 문의창구, 연락처, 지원창구)
  final String? contactName;

  /// [StoreDetails] 객체를 JSON으로 변환
  /// [StoreDetails] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$StoreDetailsToJson(this);
}

/// 상점 영업시간 정보
@JsonSerializable()
class OpeningHours {
  /// 기본 생성자
  OpeningHours({this.open, this.close});

  /// JSON에서 [OpeningHours] 객체 생성
  /// JSON에서 [OpeningHours] 객체로 변환하는 팩토리 메서드
  factory OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursFromJson(json);

  /// 영업 시작 시간 (HH:mm)
  final String? open;

  /// 영업 종료 시간 (HH:mm)
  final String? close;

  /// [OpeningHours] 객체를 JSON으로 변환
  /// [OpeningHours] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$OpeningHoursToJson(this);
}
