// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
  customerId: json['customerId'] as String?,
  fullName: json['fullName'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  email: json['email'] as String?,
  address: json['address'] == null
      ? null
      : Address.fromJson(json['address'] as Map<String, dynamic>),
  gender: json['gender'] as String?,
  birthYear: json['birthYear'] as String?,
  birthMonth: json['birthMonth'] as String?,
  birthDay: json['birthDay'] as String?,
);

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
