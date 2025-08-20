// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'naverpay_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NaverpayPaymentBypass _$NaverpayPaymentBypassFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('NaverpayPaymentBypass', json, ($checkedConvert) {
  final val = NaverpayPaymentBypass(
    useCfmYmdt: $checkedConvert('useCfmYmdt', (v) => v as String?),
    productItems: $checkedConvert(
      'productItems',
      (v) => (v as List<dynamic>?)?.map((e) => NaverpayProductItem.fromJson(e as Map<String, dynamic>)).toList(),
    ),
    deliveryFee: $checkedConvert('deliveryFee', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$NaverpayPaymentBypassToJson(
  NaverpayPaymentBypass instance,
) => <String, dynamic>{
  'useCfmYmdt': ?instance.useCfmYmdt,
  'productItems': ?instance.productItems?.map((e) => e.toJson()).toList(),
  'deliveryFee': ?instance.deliveryFee,
};

NaverpayProductItem _$NaverpayProductItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('NaverpayProductItem', json, ($checkedConvert) {
      final val = NaverpayProductItem(
        categoryType: $checkedConvert('categoryType', (v) => v! as String),
        categoryId: $checkedConvert('categoryId', (v) => v! as String),
        uid: $checkedConvert('uid', (v) => v! as String),
        name: $checkedConvert('name', (v) => v! as String),
        count: $checkedConvert('count', (v) => (v! as num).toInt()),
        payReferrer: $checkedConvert('payReferrer', (v) => v as String?),
        startDate: $checkedConvert('startDate', (v) => v as String?),
        endDate: $checkedConvert('endDate', (v) => v as String?),
        sellerId: $checkedConvert('sellerId', (v) => v as String?),
        subMerchantInfo: $checkedConvert(
          'subMerchantInfo',
          (v) => v == null ? null : NaverpaySubMerchantInfo.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$NaverpayProductItemToJson(
  NaverpayProductItem instance,
) => <String, dynamic>{
  'categoryType': instance.categoryType,
  'categoryId': instance.categoryId,
  'uid': instance.uid,
  'name': instance.name,
  'payReferrer': ?instance.payReferrer,
  'startDate': ?instance.startDate,
  'endDate': ?instance.endDate,
  'sellerId': ?instance.sellerId,
  'count': instance.count,
  'subMerchantInfo': ?instance.subMerchantInfo?.toJson(),
};

NaverpaySubMerchantInfo _$NaverpaySubMerchantInfoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('NaverpaySubMerchantInfo', json, ($checkedConvert) {
  final val = NaverpaySubMerchantInfo(
    subMerchantName: $checkedConvert('subMerchantName', (v) => v! as String),
    subMerchantId: $checkedConvert('subMerchantId', (v) => v! as String),
    subMerchantBusinessNo: $checkedConvert(
      'subMerchantBusinessNo',
      (v) => v! as String,
    ),
    subMerchantPayId: $checkedConvert('subMerchantPayId', (v) => v! as String),
    subMerchantTelephoneNo: $checkedConvert(
      'subMerchantTelephoneNo',
      (v) => v! as String,
    ),
    subMerchantCustomerServiceUrl: $checkedConvert(
      'subMerchantCustomerServiceUrl',
      (v) => v! as String,
    ),
  );
  return val;
});

Map<String, dynamic> _$NaverpaySubMerchantInfoToJson(
  NaverpaySubMerchantInfo instance,
) => <String, dynamic>{
  'subMerchantName': instance.subMerchantName,
  'subMerchantId': instance.subMerchantId,
  'subMerchantBusinessNo': instance.subMerchantBusinessNo,
  'subMerchantPayId': instance.subMerchantPayId,
  'subMerchantTelephoneNo': instance.subMerchantTelephoneNo,
  'subMerchantCustomerServiceUrl': instance.subMerchantCustomerServiceUrl,
};
