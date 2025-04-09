// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'inicis_v2_bypass.g.dart';

/// KG이니시스 (PC/모바일) bypass 파라미터 객체
@JsonSerializable()
class InicisV2Bypass {
  InicisV2Bypass({
    this.logoUrl,
    this.logo2nd,
    this.parentemail,
    this.iniSsgpayMdn,
    this.acceptmethod,
    this.pCardOption,
    this.pMname,
    this.pReserved,
  });

  factory InicisV2Bypass.fromJson(Map<String, dynamic> json) => _$InicisV2BypassFromJson(json);

  /// PC용: 결제창에 삽입할 메인 로고 URL
  @JsonKey(name: 'logo_url')
  final String? logoUrl;

  /// PC용: 결제창에 삽입할 서브 로고 URL
  @JsonKey(name: 'logo_2nd')
  final String? logo2nd;

  /// PC용: 보호자 이메일 주소
  final String? parentemail;

  /// PC용: SSGPAY 결제요청 시 PUSH 전송 휴대폰번호
  @JsonKey(name: 'Ini_SSGPAY_MDN')
  final String? iniSsgpayMdn;

  /// PC용: 추가 옵션 배열
  final List<String>? acceptmethod;

  /// 모바일용: 신용카드 우선 선택 옵션
  @JsonKey(name: 'P_CARD_OPTION')
  final String? pCardOption;

  /// 모바일용: 가맹점 이름
  @JsonKey(name: 'P_MNAME')
  final String? pMname;

  /// 모바일용: 추가 옵션 배열
  @JsonKey(name: 'P_RESERVED')
  final List<String>? pReserved;

  Map<String, dynamic> toJson() => _$InicisV2BypassToJson(this);
}
