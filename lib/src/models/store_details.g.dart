// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreDetails _$StoreDetailsFromJson(Map<String, dynamic> json) => $checkedCreate(
      'StoreDetails',
      json,
      ($checkedConvert) {
        final val = StoreDetails(
          ceoFullName: $checkedConvert('ceoFullName', (v) => v as String?),
          phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
          address: $checkedConvert('address', (v) => v as String?),
          zipcode: $checkedConvert('zipcode', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          businessName: $checkedConvert('businessName', (v) => v as String?),
          businessRegistrationNumber: $checkedConvert('businessRegistrationNumber', (v) => v as String?),
          storeName: $checkedConvert('storeName', (v) => v as String?),
          storeNameShort: $checkedConvert('storeNameShort', (v) => v as String?),
          storeNameEn: $checkedConvert('storeNameEn', (v) => v as String?),
          storeNameKana: $checkedConvert('storeNameKana', (v) => v as String?),
          openingHours: $checkedConvert(
              'openingHours', (v) => v == null ? null : OpeningHours.fromJson(v as Map<String, dynamic>)),
          contactName: $checkedConvert('contactName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$StoreDetailsToJson(StoreDetails instance) => <String, dynamic>{
      if (instance.ceoFullName case final value?) 'ceoFullName': value,
      if (instance.phoneNumber case final value?) 'phoneNumber': value,
      if (instance.address case final value?) 'address': value,
      if (instance.zipcode case final value?) 'zipcode': value,
      if (instance.email case final value?) 'email': value,
      if (instance.businessName case final value?) 'businessName': value,
      if (instance.businessRegistrationNumber case final value?) 'businessRegistrationNumber': value,
      if (instance.storeName case final value?) 'storeName': value,
      if (instance.storeNameShort case final value?) 'storeNameShort': value,
      if (instance.storeNameEn case final value?) 'storeNameEn': value,
      if (instance.storeNameKana case final value?) 'storeNameKana': value,
      if (instance.openingHours?.toJson() case final value?) 'openingHours': value,
      if (instance.contactName case final value?) 'contactName': value,
    };

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) => $checkedCreate(
      'OpeningHours',
      json,
      ($checkedConvert) {
        final val = OpeningHours(
          open: $checkedConvert('open', (v) => v as String?),
          close: $checkedConvert('close', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$OpeningHoursToJson(OpeningHours instance) => <String, dynamic>{
      if (instance.open case final value?) 'open': value,
      if (instance.close case final value?) 'close': value,
    };
