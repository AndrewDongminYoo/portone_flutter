// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreDetails _$StoreDetailsFromJson(Map<String, dynamic> json) => StoreDetails(
  ceoFullName: json['ceoFullName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  address: json['address'] as String?,
  zipcode: json['zipcode'] as String?,
  email: json['email'] as String?,
  businessName: json['businessName'] as String?,
  businessRegistrationNumber: json['businessRegistrationNumber'] as String?,
  storeName: json['storeName'] as String?,
  storeNameShort: json['storeNameShort'] as String?,
  storeNameEn: json['storeNameEn'] as String?,
  storeNameKana: json['storeNameKana'] as String?,
  openingHours: json['openingHours'] == null
      ? null
      : OpeningHours.fromJson(json['openingHours'] as Map<String, dynamic>),
  contactName: json['contactName'] as String?,
);

Map<String, dynamic> _$StoreDetailsToJson(StoreDetails instance) =>
    <String, dynamic>{
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

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) => OpeningHours(
  open: json['open'] as String?,
  close: json['close'] as String?,
);

Map<String, dynamic> _$OpeningHoursToJson(OpeningHours instance) =>
    <String, dynamic>{'open': ?instance.open, 'close': ?instance.close};
