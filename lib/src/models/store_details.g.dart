// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreDetails _$StoreDetailsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StoreDetails', json, ($checkedConvert) {
      final val = StoreDetails(
        ceoFullName: $checkedConvert('ceoFullName', (v) => v as String?),
        phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
        address: $checkedConvert('address', (v) => v as String?),
        zipcode: $checkedConvert('zipcode', (v) => v as String?),
        email: $checkedConvert('email', (v) => v as String?),
        businessName: $checkedConvert('businessName', (v) => v as String?),
        businessRegistrationNumber: $checkedConvert(
          'businessRegistrationNumber',
          (v) => v as String?,
        ),
        storeName: $checkedConvert('storeName', (v) => v as String?),
        storeNameShort: $checkedConvert('storeNameShort', (v) => v as String?),
        storeNameEn: $checkedConvert('storeNameEn', (v) => v as String?),
        storeNameKana: $checkedConvert('storeNameKana', (v) => v as String?),
        openingHours: $checkedConvert(
          'openingHours',
          (v) => v == null ? null : OpeningHours.fromJson(v as Map<String, dynamic>),
        ),
        contactName: $checkedConvert('contactName', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$StoreDetailsToJson(StoreDetails instance) => <String, dynamic>{
  'ceoFullName': ?instance.ceoFullName,
  'phoneNumber': ?instance.phoneNumber,
  'address': ?instance.address,
  'zipcode': ?instance.zipcode,
  'email': ?instance.email,
  'businessName': ?instance.businessName,
  'businessRegistrationNumber': ?instance.businessRegistrationNumber,
  'storeName': ?instance.storeName,
  'storeNameShort': ?instance.storeNameShort,
  'storeNameEn': ?instance.storeNameEn,
  'storeNameKana': ?instance.storeNameKana,
  'openingHours': ?instance.openingHours?.toJson(),
  'contactName': ?instance.contactName,
};

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) =>
    $checkedCreate('OpeningHours', json, ($checkedConvert) {
      final val = OpeningHours(
        open: $checkedConvert('open', (v) => v as String?),
        close: $checkedConvert('close', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$OpeningHoursToJson(OpeningHours instance) => <String, dynamic>{
  'open': ?instance.open,
  'close': ?instance.close,
};
