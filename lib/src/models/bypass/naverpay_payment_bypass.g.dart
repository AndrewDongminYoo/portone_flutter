// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'naverpay_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NaverpayPaymentBypass _$NaverpayPaymentBypassFromJson(
  Map<String, dynamic> json,
) => NaverpayPaymentBypass(
  useCfmYmdt: json['useCfmYmdt'] as String?,
  productItems: (json['productItems'] as List<dynamic>?)
      ?.map((e) => NaverpayProductItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  deliveryFee: json['deliveryFee'] as num?,
);

Map<String, dynamic> _$NaverpayPaymentBypassToJson(
  NaverpayPaymentBypass instance,
) => <String, dynamic>{
  'useCfmYmdt': ?instance.useCfmYmdt,
  'productItems': ?instance.productItems?.map((e) => e.toJson()).toList(),
  'deliveryFee': ?instance.deliveryFee,
};

NaverpayProductItem _$NaverpayProductItemFromJson(Map<String, dynamic> json) =>
    NaverpayProductItem(
      categoryType: json['categoryType'] as String,
      categoryId: json['categoryId'] as String,
      uid: json['uid'] as String,
      name: json['name'] as String,
      count: (json['count'] as num).toInt(),
      payReferrer: json['payReferrer'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      sellerId: json['sellerId'] as String?,
      subMerchantInfo: json['subMerchantInfo'] == null
          ? null
          : NaverpaySubMerchantInfo.fromJson(
              json['subMerchantInfo'] as Map<String, dynamic>,
            ),
    );

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
) => NaverpaySubMerchantInfo(
  subMerchantName: json['subMerchantName'] as String,
  subMerchantId: json['subMerchantId'] as String,
  subMerchantBusinessNo: json['subMerchantBusinessNo'] as String,
  subMerchantPayId: json['subMerchantPayId'] as String,
  subMerchantTelephoneNo: json['subMerchantTelephoneNo'] as String,
  subMerchantCustomerServiceUrl:
      json['subMerchantCustomerServiceUrl'] as String,
);

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
