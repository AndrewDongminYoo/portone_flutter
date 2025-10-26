// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kcp_v2_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KcpV2Bypass _$KcpV2BypassFromJson(Map<String, dynamic> json) => KcpV2Bypass(
  shopUserId: json['shop_user_id'] as String,
  skinIndx: json['skin_indx'] as String?,
  siteLogo: json['site_logo'] as String?,
  kcpPayTitle: json['kcp_pay_title'] as String?,
  complexPntYn: json['complexPntYn'] as String?,
  ptMemcorpCd: json['ptMemcorpCd'] as String?,
  dispTaxYn: json['dispTaxYn'] as String?,
  siteName: json['site_name'] as String?,
  deliTerm: json['deliTerm'] as String?,
);

Map<String, dynamic> _$KcpV2BypassToJson(KcpV2Bypass instance) =>
    <String, dynamic>{
      'skin_indx': ?instance.skinIndx,
      'site_logo': ?instance.siteLogo,
      'shop_user_id': instance.shopUserId,
      'kcp_pay_title': ?instance.kcpPayTitle,
      'complexPntYn': ?instance.complexPntYn,
      'ptMemcorpCd': ?instance.ptMemcorpCd,
      'dispTaxYn': ?instance.dispTaxYn,
      'site_name': ?instance.siteName,
      'deliTerm': ?instance.deliTerm,
    };
