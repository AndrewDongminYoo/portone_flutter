// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eximbay_v2_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EximbayV2Bypass _$EximbayV2BypassFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('EximbayV2Bypass', json, ($checkedConvert) {
  final val = EximbayV2Bypass(
    payment: $checkedConvert(
      'payment',
      (v) => v == null ? null : PaymentInfo.fromJson(v as Map<String, dynamic>),
    ),
    merchant: $checkedConvert(
      'merchant',
      (v) => v == null ? null : MerchantInfo.fromJson(v as Map<String, dynamic>),
    ),
    tax: $checkedConvert(
      'tax',
      (v) => v == null ? null : TaxInfo.fromJson(v as Map<String, dynamic>),
    ),
    surcharge: $checkedConvert(
      'surcharge',
      (v) => (v as List<dynamic>?)?.map((e) => Surcharge.fromJson(e as Map<String, dynamic>)).toList(),
    ),
    shipTo: $checkedConvert(
      'ship_to',
      (v) => v == null ? null : AddressInfo.fromJson(v as Map<String, dynamic>),
    ),
    billTo: $checkedConvert(
      'bill_to',
      (v) => v == null ? null : AddressInfo.fromJson(v as Map<String, dynamic>),
    ),
    settings: $checkedConvert(
      'settings',
      (v) => v == null ? null : SettingsInfo.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
}, fieldKeyMap: const {'shipTo': 'ship_to', 'billTo': 'bill_to'});

Map<String, dynamic> _$EximbayV2BypassToJson(EximbayV2Bypass instance) => <String, dynamic>{
  'payment': ?instance.payment?.toJson(),
  'merchant': ?instance.merchant?.toJson(),
  'tax': ?instance.tax?.toJson(),
  'surcharge': ?instance.surcharge?.map((e) => e.toJson()).toList(),
  'ship_to': ?instance.shipTo?.toJson(),
  'bill_to': ?instance.billTo?.toJson(),
  'settings': ?instance.settings?.toJson(),
};

PaymentInfo _$PaymentInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'PaymentInfo',
  json,
  ($checkedConvert) {
    final val = PaymentInfo(
      paymentMethod: $checkedConvert('payment_method', (v) => v as String?),
      multiPaymentMethod: $checkedConvert(
        'multi_payment_method',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'paymentMethod': 'payment_method',
    'multiPaymentMethod': 'multi_payment_method',
  },
);

Map<String, dynamic> _$PaymentInfoToJson(PaymentInfo instance) => <String, dynamic>{
  'payment_method': ?instance.paymentMethod,
  'multi_payment_method': ?instance.multiPaymentMethod,
};

MerchantInfo _$MerchantInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MerchantInfo', json, ($checkedConvert) {
      final val = MerchantInfo(
        shop: $checkedConvert('shop', (v) => v as String?),
        partnerCode: $checkedConvert('partner_code', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'partnerCode': 'partner_code'});

Map<String, dynamic> _$MerchantInfoToJson(MerchantInfo instance) => <String, dynamic>{
  'shop': ?instance.shop,
  'partner_code': ?instance.partnerCode,
};

TaxInfo _$TaxInfoFromJson(Map<String, dynamic> json) => $checkedCreate('TaxInfo', json, ($checkedConvert) {
  final val = TaxInfo(
    receiptStatus: $checkedConvert('receipt_status', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'receiptStatus': 'receipt_status'});

Map<String, dynamic> _$TaxInfoToJson(TaxInfo instance) => <String, dynamic>{
  'receipt_status': ?instance.receiptStatus,
};

Surcharge _$SurchargeFromJson(Map<String, dynamic> json) => $checkedCreate('Surcharge', json, ($checkedConvert) {
  final val = Surcharge(
    name: $checkedConvert('name', (v) => v as String?),
    quantity: $checkedConvert('quantity', (v) => v as String?),
    unitPrice: $checkedConvert('unit_price', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'unitPrice': 'unit_price'});

Map<String, dynamic> _$SurchargeToJson(Surcharge instance) => <String, dynamic>{
  'name': ?instance.name,
  'quantity': ?instance.quantity,
  'unit_price': ?instance.unitPrice,
};

AddressInfo _$AddressInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'AddressInfo',
  json,
  ($checkedConvert) {
    final val = AddressInfo(
      city: $checkedConvert('city', (v) => v as String?),
      country: $checkedConvert('country', (v) => v as String?),
      firstName: $checkedConvert('first_name', (v) => v as String?),
      lastName: $checkedConvert('last_name', (v) => v as String?),
      phoneNumber: $checkedConvert('phone_number', (v) => v as String?),
      postalCode: $checkedConvert('postal_code', (v) => v as String?),
      state: $checkedConvert('state', (v) => v as String?),
      street1: $checkedConvert('street1', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'firstName': 'first_name',
    'lastName': 'last_name',
    'phoneNumber': 'phone_number',
    'postalCode': 'postal_code',
  },
);

Map<String, dynamic> _$AddressInfoToJson(AddressInfo instance) => <String, dynamic>{
  'city': ?instance.city,
  'country': ?instance.country,
  'first_name': ?instance.firstName,
  'last_name': ?instance.lastName,
  'phone_number': ?instance.phoneNumber,
  'postal_code': ?instance.postalCode,
  'state': ?instance.state,
  'street1': ?instance.street1,
};

SettingsInfo _$SettingsInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'SettingsInfo',
  json,
  ($checkedConvert) {
    final val = SettingsInfo(
      callFromApp: $checkedConvert('call_from_app', (v) => v as String?),
      issuerCountry: $checkedConvert('issuer_country', (v) => v as String?),
      virtualaccountExpiryDate: $checkedConvert(
        'virtualaccount_expiry_date',
        (v) => v as String?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'callFromApp': 'call_from_app',
    'issuerCountry': 'issuer_country',
    'virtualaccountExpiryDate': 'virtualaccount_expiry_date',
  },
);

Map<String, dynamic> _$SettingsInfoToJson(SettingsInfo instance) => <String, dynamic>{
  'call_from_app': ?instance.callFromApp,
  'issuer_country': ?instance.issuerCountry,
  'virtualaccount_expiry_date': ?instance.virtualaccountExpiryDate,
};
