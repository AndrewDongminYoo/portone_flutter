// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

void main() {
  group('Customer', () {
    test('should create Customer with all fields null', () {
      final customer = Customer();

      expect(customer.customerId, isNull);
      expect(customer.fullName, isNull);
      expect(customer.firstName, isNull);
      expect(customer.lastName, isNull);
      expect(customer.phoneNumber, isNull);
      expect(customer.email, isNull);
      expect(customer.address, isNull);
      expect(customer.gender, isNull);
      expect(customer.birthYear, isNull);
      expect(customer.birthMonth, isNull);
      expect(customer.birthDay, isNull);
    });

    test('should create Customer with all fields populated', () {
      final address = Address(
        country: Country.KR,
        city: 'Seoul',
        province: 'Seoul',
        addressLine1: 'Street 1',
        addressLine2: 'Street 2',
        zipcode: '12345',
      );

      final customer = Customer(
        customerId: 'cust_123',
        firstName: 'John',
        lastName: 'Doe',
        phoneNumber: '01012345678',
        email: 'john@example.com',
        address: address,
        gender: 'male',
        birthYear: '1990',
        birthMonth: '12',
        birthDay: '25',
      );

      expect(customer.customerId, equals('cust_123'));
      expect(customer.firstName, equals('John'));
      expect(customer.lastName, equals('Doe'));
      expect(customer.phoneNumber, equals('01012345678'));
      expect(customer.email, equals('john@example.com'));
      expect(customer.address, equals(address));
      expect(customer.gender, equals('male'));
      expect(customer.birthYear, equals('1990'));
      expect(customer.birthMonth, equals('12'));
      expect(customer.birthDay, equals('25'));
    });

    test('fromJson should correctly deserialize Customer object', () {
      final json = {
        'customerId': 'cust_123',
        'fullName': 'John Doe',
        'phoneNumber': '01012345678',
        'email': 'john@example.com',
        'address': {
          'country': 'COUNTRY_KR',
          'city': 'Seoul',
          'province': 'Seoul',
          'addressLine1': 'Street 1',
          'addressLine2': 'Street 2',
          'zipcode': '12345',
        },
        'gender': 'male',
        'birthYear': '1990',
        'birthMonth': '12',
        'birthDay': '25',
      };

      final customer = Customer.fromJson(json);

      expect(customer.customerId, equals('cust_123'));
      expect(customer.fullName, equals('John Doe'));
      expect(customer.address?.country, equals(Country.KR));
      expect(customer.address?.city, equals('Seoul'));
    });

    test('toJson should correctly serialize Customer object', () {
      final customer = Customer(
        customerId: 'cust_123',
        fullName: 'John Doe',
        email: 'john@example.com',
        address: Address(country: Country.KR, city: 'Seoul'),
      );

      final json = customer.toJson();

      expect(json['customerId'], equals('cust_123'));
      expect(json['fullName'], equals('John Doe'));
      expect(json['email'], equals('john@example.com'));
      expect(
        (json['address'] as Map<String, dynamic>)['country'],
        equals('COUNTRY_KR'),
      );
      expect(
        (json['address'] as Map<String, dynamic>)['city'],
        equals('Seoul'),
      );
    });

    test('should handle partial customer information', () {
      final customer = Customer(
        customerId: 'cust_123',
        firstName: 'John',
        lastName: 'Doe',
      );

      expect(customer.customerId, equals('cust_123'));
      expect(customer.firstName, equals('John'));
      expect(customer.lastName, equals('Doe'));
      expect(customer.fullName, isNull);
      expect(customer.email, isNull);
    });
  });
}
