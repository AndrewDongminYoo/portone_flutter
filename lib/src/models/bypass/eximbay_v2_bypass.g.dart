// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eximbay_v2_bypass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EximbayV2Bypass _$EximbayV2BypassFromJson(Map<String, dynamic> json) => $checkedCreate(
      'EximbayV2Bypass',
      json,
      ($checkedConvert) {
        final val = EximbayV2Bypass(
          payment:
              $checkedConvert('payment', (v) => v == null ? null : PaymentInfo.fromJson(v as Map<String, dynamic>)),
          merchant:
              $checkedConvert('merchant', (v) => v == null ? null : MerchantInfo.fromJson(v as Map<String, dynamic>)),
          tax: $checkedConvert('tax', (v) => v == null ? null : TaxInfo.fromJson(v as Map<String, dynamic>)),
          surcharge: $checkedConvert(
            'surcharge',
            (v) => (v as List<dynamic>?)?.map((e) => Surcharge.fromJson(e as Map<String, dynamic>)).toList(),
          ),
          shipTo: $checkedConvert('ship_to', (v) => v == null ? null : AddressInfo.fromJson(v as Map<String, dynamic>)),
          billTo: $checkedConvert('bill_to', (v) => v == null ? null : AddressInfo.fromJson(v as Map<String, dynamic>)),
          settings:
              $checkedConvert('settings', (v) => v == null ? null : SettingsInfo.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'shipTo': 'ship_to', 'billTo': 'bill_to'},
    );

Map<String, dynamic> _$EximbayV2BypassToJson(EximbayV2Bypass instance) => <String, dynamic>{
      if (instance.payment?.toJson() case final value?) 'payment': value,
      if (instance.merchant?.toJson() case final value?) 'merchant': value,
      if (instance.tax?.toJson() case final value?) 'tax': value,
      if (instance.surcharge?.map((e) => e.toJson()).toList() case final value?) 'surcharge': value,
      if (instance.shipTo?.toJson() case final value?) 'ship_to': value,
      if (instance.billTo?.toJson() case final value?) 'bill_to': value,
      if (instance.settings?.toJson() case final value?) 'settings': value,
    };

PaymentInfo _$PaymentInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'PaymentInfo',
      json,
      ($checkedConvert) {
        final val = PaymentInfo(
          paymentMethod: $checkedConvert('payment_method', (v) => v as String?),
          multiPaymentMethod:
              $checkedConvert('multi_payment_method', (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'paymentMethod': 'payment_method', 'multiPaymentMethod': 'multi_payment_method'},
    );

Map<String, dynamic> _$PaymentInfoToJson(PaymentInfo instance) => <String, dynamic>{
      if (instance.paymentMethod case final value?) 'payment_method': value,
      if (instance.multiPaymentMethod case final value?) 'multi_payment_method': value,
    };

MerchantInfo _$MerchantInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'MerchantInfo',
      json,
      ($checkedConvert) {
        final val = MerchantInfo(
          shop: $checkedConvert('shop', (v) => v as String?),
          partnerCode: $checkedConvert('partner_code', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'partnerCode': 'partner_code'},
    );

Map<String, dynamic> _$MerchantInfoToJson(MerchantInfo instance) => <String, dynamic>{
      if (instance.shop case final value?) 'shop': value,
      if (instance.partnerCode case final value?) 'partner_code': value,
    };

TaxInfo _$TaxInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'TaxInfo',
      json,
      ($checkedConvert) {
        final val = TaxInfo(
          receiptStatus: $checkedConvert('receipt_status', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'receiptStatus': 'receipt_status'},
    );

Map<String, dynamic> _$TaxInfoToJson(TaxInfo instance) => <String, dynamic>{
      if (instance.receiptStatus case final value?) 'receipt_status': value,
    };

Surcharge _$SurchargeFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Surcharge',
      json,
      ($checkedConvert) {
        final val = Surcharge(
          name: $checkedConvert('name', (v) => v as String?),
          quantity: $checkedConvert('quantity', (v) => v as String?),
          unitPrice: $checkedConvert('unit_price', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'unitPrice': 'unit_price'},
    );

Map<String, dynamic> _$SurchargeToJson(Surcharge instance) => <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.quantity case final value?) 'quantity': value,
      if (instance.unitPrice case final value?) 'unit_price': value,
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
      if (instance.city case final value?) 'city': value,
      if (instance.country case final value?) 'country': value,
      if (instance.firstName case final value?) 'first_name': value,
      if (instance.lastName case final value?) 'last_name': value,
      if (instance.phoneNumber case final value?) 'phone_number': value,
      if (instance.postalCode case final value?) 'postal_code': value,
      if (instance.state case final value?) 'state': value,
      if (instance.street1 case final value?) 'street1': value,
    };

SettingsInfo _$SettingsInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'SettingsInfo',
      json,
      ($checkedConvert) {
        final val = SettingsInfo(
          callFromApp: $checkedConvert('call_from_app', (v) => v as String?),
          issuerCountry: $checkedConvert('issuer_country', (v) => v as String?),
          virtualaccountExpiryDate: $checkedConvert('virtualaccount_expiry_date', (v) => v as String?),
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
      if (instance.callFromApp case final value?) 'call_from_app': value,
      if (instance.issuerCountry case final value?) 'issuer_country': value,
      if (instance.virtualaccountExpiryDate case final value?) 'virtualaccount_expiry_date': value,
    };
