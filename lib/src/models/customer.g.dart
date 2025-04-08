// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Customer',
      json,
      ($checkedConvert) {
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
      },
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      if (instance.customerId case final value?) 'customerId': value,
      if (instance.fullName case final value?) 'fullName': value,
      if (instance.firstName case final value?) 'firstName': value,
      if (instance.lastName case final value?) 'lastName': value,
      if (instance.phoneNumber case final value?) 'phoneNumber': value,
      if (instance.email case final value?) 'email': value,
      if (instance.address?.toJson() case final value?) 'address': value,
      if (instance.gender case final value?) 'gender': value,
      if (instance.birthYear case final value?) 'birthYear': value,
      if (instance.birthMonth case final value?) 'birthMonth': value,
      if (instance.birthDay case final value?) 'birthDay': value,
    };
