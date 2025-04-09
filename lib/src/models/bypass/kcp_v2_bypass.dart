// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'kcp_v2_bypass.g.dart';

/// NHN KCP bypass 파라미터 객체
@JsonSerializable()
class KcpV2Bypass {
  KcpV2Bypass({
    required this.shopUserId,
    this.skinIndx,
    this.siteLogo,
    this.kcpPayTitle,
    this.complexPntYn,
    this.ptMemcorpCd,
    this.dispTaxYn,
    this.siteName,
    this.deliTerm,
  });

  factory KcpV2Bypass.fromJson(Map<String, dynamic> json) => _$KcpV2BypassFromJson(json);

  /// 카드 결제 시 skin index
  @JsonKey(name: 'skin_indx')
  final String? skinIndx;

  /// 결제창에 삽입할 로고 (PC용)
  @JsonKey(name: 'site_logo')
  final String? siteLogo;

  /// 상점 사용자 ID (필수)
  @JsonKey(name: 'shop_user_id')
  final String shopUserId;

  /// 결제창 제목
  @JsonKey(name: 'kcp_pay_title')
  final String? kcpPayTitle;

  /// 포인트 복합 결제 여부 ("Y" 또는 "N")
  final String? complexPntYn;

  /// 포인트 가맹점 코드
  final String? ptMemcorpCd;

  /// 현금영수증 노출 여부 ("Y", "N", "R", ...)
  final String? dispTaxYn;

  /// 고객사 상호명
  @JsonKey(name: 'site_name')
  final String? siteName;

  /// 에스크로 배송 예상 소요일
  final String? deliTerm;

  Map<String, dynamic> toJson() => _$KcpV2BypassToJson(this);
}
