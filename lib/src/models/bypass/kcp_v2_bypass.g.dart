// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kcp_v2_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KcpV2Bypass _$KcpV2BypassFromJson(Map<String, dynamic> json) => $checkedCreate(
  'KcpV2Bypass',
  json,
  ($checkedConvert) {
    final val = KcpV2Bypass(
      shopUserId: $checkedConvert('shop_user_id', (v) => v! as String),
      skinIndx: $checkedConvert('skin_indx', (v) => v as String?),
      siteLogo: $checkedConvert('site_logo', (v) => v as String?),
      kcpPayTitle: $checkedConvert('kcp_pay_title', (v) => v as String?),
      complexPntYn: $checkedConvert('complexPntYn', (v) => v as String?),
      ptMemcorpCd: $checkedConvert('ptMemcorpCd', (v) => v as String?),
      dispTaxYn: $checkedConvert('dispTaxYn', (v) => v as String?),
      siteName: $checkedConvert('site_name', (v) => v as String?),
      deliTerm: $checkedConvert('deliTerm', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'shopUserId': 'shop_user_id',
    'skinIndx': 'skin_indx',
    'siteLogo': 'site_logo',
    'kcpPayTitle': 'kcp_pay_title',
    'siteName': 'site_name',
  },
);

Map<String, dynamic> _$KcpV2BypassToJson(KcpV2Bypass instance) => <String, dynamic>{
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
