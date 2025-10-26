// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Customer', json, ($checkedConvert) {
      final val = Customer(
        customerId: $checkedConvert('customerId', (v) => v as String?),
        fullName: $checkedConvert('fullName', (v) => v as String?),
        firstName: $checkedConvert('firstName', (v) => v as String?),
        lastName: $checkedConvert('lastName', (v) => v as String?),
        phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
        email: $checkedConvert('email', (v) => v as String?),
        address: $checkedConvert(
          'address',
          (v) => v == null ? null : Address.fromJson(v as Map<String, dynamic>),
        ),
        gender: $checkedConvert('gender', (v) => v as String?),
        birthYear: $checkedConvert('birthYear', (v) => v as String?),
        birthMonth: $checkedConvert('birthMonth', (v) => v as String?),
        birthDay: $checkedConvert('birthDay', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
  'customerId': ?instance.customerId,
  'fullName': ?instance.fullName,
  'firstName': ?instance.firstName,
  'lastName': ?instance.lastName,
  'phoneNumber': ?instance.phoneNumber,
  'email': ?instance.email,
  'address': ?instance.address?.toJson(),
  'gender': ?instance.gender,
  'birthYear': ?instance.birthYear,
  'birthMonth': ?instance.birthMonth,
  'birthDay': ?instance.birthDay,
};
