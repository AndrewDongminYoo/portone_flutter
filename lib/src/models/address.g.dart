// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Address',
      json,
      ($checkedConvert) {
        final val = Address(
          country: $checkedConvert(
              'country', (v) => $enumDecodeNullable(_$CountryEnumMap, v),),
          addressLine1: $checkedConvert('addressLine1', (v) => v as String?),
          addressLine2: $checkedConvert('addressLine2', (v) => v as String?),
          city: $checkedConvert('city', (v) => v as String?),
          province: $checkedConvert('province', (v) => v as String?),
          zipcode: $checkedConvert('zipcode', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      if (_$CountryEnumMap[instance.country] case final value?)
        'country': value,
      if (instance.addressLine1 case final value?) 'addressLine1': value,
      if (instance.addressLine2 case final value?) 'addressLine2': value,
      if (instance.city case final value?) 'city': value,
      if (instance.province case final value?) 'province': value,
      if (instance.zipcode case final value?) 'zipcode': value,
    };

const _$CountryEnumMap = {
  Country.KR: 'COUNTRY_KR',
  Country.US: 'COUNTRY_US',
};
