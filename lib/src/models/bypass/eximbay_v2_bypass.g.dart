// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eximbay_v2_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EximbayV2Bypass _$EximbayV2BypassFromJson(Map<String, dynamic> json) =>
    EximbayV2Bypass(
      payment: json['payment'] == null
          ? null
          : PaymentInfo.fromJson(json['payment'] as Map<String, dynamic>),
      merchant: json['merchant'] == null
          ? null
          : MerchantInfo.fromJson(json['merchant'] as Map<String, dynamic>),
      tax: json['tax'] == null
          ? null
          : TaxInfo.fromJson(json['tax'] as Map<String, dynamic>),
      surcharge: (json['surcharge'] as List<dynamic>?)
          ?.map((e) => Surcharge.fromJson(e as Map<String, dynamic>))
          .toList(),
      shipTo: json['ship_to'] == null
          ? null
          : AddressInfo.fromJson(json['ship_to'] as Map<String, dynamic>),
      billTo: json['bill_to'] == null
          ? null
          : AddressInfo.fromJson(json['bill_to'] as Map<String, dynamic>),
      settings: json['settings'] == null
          ? null
          : SettingsInfo.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EximbayV2BypassToJson(EximbayV2Bypass instance) =>
    <String, dynamic>{
      'payment': ?instance.payment?.toJson(),
      'merchant': ?instance.merchant?.toJson(),
      'tax': ?instance.tax?.toJson(),
      'surcharge': ?instance.surcharge?.map((e) => e.toJson()).toList(),
      'ship_to': ?instance.shipTo?.toJson(),
      'bill_to': ?instance.billTo?.toJson(),
      'settings': ?instance.settings?.toJson(),
    };

PaymentInfo _$PaymentInfoFromJson(Map<String, dynamic> json) => PaymentInfo(
  paymentMethod: json['payment_method'] as String?,
  multiPaymentMethod: (json['multi_payment_method'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$PaymentInfoToJson(PaymentInfo instance) =>
    <String, dynamic>{
      'payment_method': ?instance.paymentMethod,
      'multi_payment_method': ?instance.multiPaymentMethod,
    };

MerchantInfo _$MerchantInfoFromJson(Map<String, dynamic> json) => MerchantInfo(
  shop: json['shop'] as String?,
  partnerCode: json['partner_code'] as String?,
);

Map<String, dynamic> _$MerchantInfoToJson(MerchantInfo instance) =>
    <String, dynamic>{
      'shop': ?instance.shop,
      'partner_code': ?instance.partnerCode,
    };

TaxInfo _$TaxInfoFromJson(Map<String, dynamic> json) =>
    TaxInfo(receiptStatus: json['receipt_status'] as String?);

Map<String, dynamic> _$TaxInfoToJson(TaxInfo instance) => <String, dynamic>{
  'receipt_status': ?instance.receiptStatus,
};

Surcharge _$SurchargeFromJson(Map<String, dynamic> json) => Surcharge(
  name: json['name'] as String?,
  quantity: json['quantity'] as String?,
  unitPrice: json['unit_price'] as String?,
);

Map<String, dynamic> _$SurchargeToJson(Surcharge instance) => <String, dynamic>{
  'name': ?instance.name,
  'quantity': ?instance.quantity,
  'unit_price': ?instance.unitPrice,
};

AddressInfo _$AddressInfoFromJson(Map<String, dynamic> json) => AddressInfo(
  city: json['city'] as String?,
  country: json['country'] as String?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  phoneNumber: json['phone_number'] as String?,
  postalCode: json['postal_code'] as String?,
  state: json['state'] as String?,
  street1: json['street1'] as String?,
);

Map<String, dynamic> _$AddressInfoToJson(AddressInfo instance) =>
    <String, dynamic>{
      'city': ?instance.city,
      'country': ?instance.country,
      'first_name': ?instance.firstName,
      'last_name': ?instance.lastName,
      'phone_number': ?instance.phoneNumber,
      'postal_code': ?instance.postalCode,
      'state': ?instance.state,
      'street1': ?instance.street1,
    };

SettingsInfo _$SettingsInfoFromJson(Map<String, dynamic> json) => SettingsInfo(
  callFromApp: json['call_from_app'] as String?,
  issuerCountry: json['issuer_country'] as String?,
  virtualaccountExpiryDate: json['virtualaccount_expiry_date'] as String?,
);

Map<String, dynamic> _$SettingsInfoToJson(SettingsInfo instance) =>
    <String, dynamic>{
      'call_from_app': ?instance.callFromApp,
      'issuer_country': ?instance.issuerCountry,
      'virtualaccount_expiry_date': ?instance.virtualaccountExpiryDate,
    };
