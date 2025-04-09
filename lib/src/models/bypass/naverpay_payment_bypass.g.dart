// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'naverpay_payment_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NaverpayPaymentBypass _$NaverpayPaymentBypassFromJson(Map<String, dynamic> json) => $checkedCreate(
      'NaverpayPaymentBypass',
      json,
      ($checkedConvert) {
        final val = NaverpayPaymentBypass(
          useCfmYmdt: $checkedConvert('useCfmYmdt', (v) => v as String?),
          productItems: $checkedConvert(
            'productItems',
            (v) => (v as List<dynamic>?)?.map((e) => NaverpayProductItem.fromJson(e as Map<String, dynamic>)).toList(),
          ),
          deliveryFee: $checkedConvert('deliveryFee', (v) => v as num?),
        );
        return val;
      },
    );

Map<String, dynamic> _$NaverpayPaymentBypassToJson(NaverpayPaymentBypass instance) => <String, dynamic>{
      if (instance.useCfmYmdt case final value?) 'useCfmYmdt': value,
      if (instance.productItems?.map((e) => e.toJson()).toList() case final value?) 'productItems': value,
      if (instance.deliveryFee case final value?) 'deliveryFee': value,
    };

NaverpayProductItem _$NaverpayProductItemFromJson(Map<String, dynamic> json) => $checkedCreate(
      'NaverpayProductItem',
      json,
      ($checkedConvert) {
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
      },
    );

Map<String, dynamic> _$NaverpayProductItemToJson(NaverpayProductItem instance) => <String, dynamic>{
      'categoryType': instance.categoryType,
      'categoryId': instance.categoryId,
      'uid': instance.uid,
      'name': instance.name,
      if (instance.payReferrer case final value?) 'payReferrer': value,
      if (instance.startDate case final value?) 'startDate': value,
      if (instance.endDate case final value?) 'endDate': value,
      if (instance.sellerId case final value?) 'sellerId': value,
      'count': instance.count,
      if (instance.subMerchantInfo?.toJson() case final value?) 'subMerchantInfo': value,
    };

NaverpaySubMerchantInfo _$NaverpaySubMerchantInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'NaverpaySubMerchantInfo',
      json,
      ($checkedConvert) {
        final val = NaverpaySubMerchantInfo(
          subMerchantName: $checkedConvert('subMerchantName', (v) => v! as String),
          subMerchantId: $checkedConvert('subMerchantId', (v) => v! as String),
          subMerchantBusinessNo: $checkedConvert('subMerchantBusinessNo', (v) => v! as String),
          subMerchantPayId: $checkedConvert('subMerchantPayId', (v) => v! as String),
          subMerchantTelephoneNo: $checkedConvert('subMerchantTelephoneNo', (v) => v! as String),
          subMerchantCustomerServiceUrl: $checkedConvert('subMerchantCustomerServiceUrl', (v) => v! as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$NaverpaySubMerchantInfoToJson(NaverpaySubMerchantInfo instance) => <String, dynamic>{
      'subMerchantName': instance.subMerchantName,
      'subMerchantId': instance.subMerchantId,
      'subMerchantBusinessNo': instance.subMerchantBusinessNo,
      'subMerchantPayId': instance.subMerchantPayId,
      'subMerchantTelephoneNo': instance.subMerchantTelephoneNo,
      'subMerchantCustomerServiceUrl': instance.subMerchantCustomerServiceUrl,
    };
