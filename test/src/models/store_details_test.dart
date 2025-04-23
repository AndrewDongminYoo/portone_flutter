// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

void main() {
  group('StoreDetails', () {
    test('creates instance with all fields null', () {
      final details = StoreDetails();
      expect(details.ceoFullName, isNull);
      expect(details.phoneNumber, isNull);
      expect(details.address, isNull);
      expect(details.zipcode, isNull);
      expect(details.email, isNull);
      expect(details.businessName, isNull);
      expect(details.businessRegistrationNumber, isNull);
      expect(details.storeName, isNull);
      expect(details.storeNameShort, isNull);
      expect(details.storeNameEn, isNull);
      expect(details.storeNameKana, isNull);
      expect(details.openingHours, isNull);
      expect(details.contactName, isNull);
    });

    test('creates instance from JSON', () {
      final json = {
        'ceoFullName': 'John Doe',
        'phoneNumber': '123-456-7890',
        'address': '123 Test St',
        'zipcode': '12345',
        'email': 'test@example.com',
        'businessName': 'Test Business',
        'businessRegistrationNumber': '123-45-67890',
        'storeName': 'Test Store',
        'storeNameShort': 'TS',
        'storeNameEn': 'Test Store EN',
        'storeNameKana': 'テストストア',
        'openingHours': {'open': '09:00', 'close': '18:00'},
        'contactName': 'Support Desk',
      };

      final details = StoreDetails.fromJson(json);
      expect(details.ceoFullName, 'John Doe');
      expect(details.phoneNumber, '123-456-7890');
      expect(details.address, '123 Test St');
      expect(details.zipcode, '12345');
      expect(details.email, 'test@example.com');
      expect(details.businessName, 'Test Business');
      expect(details.businessRegistrationNumber, '123-45-67890');
      expect(details.storeName, 'Test Store');
      expect(details.storeNameShort, 'TS');
      expect(details.storeNameEn, 'Test Store EN');
      expect(details.storeNameKana, 'テストストア');
      expect(details.openingHours?.open, '09:00');
      expect(details.openingHours?.close, '18:00');
      expect(details.contactName, 'Support Desk');
    });

    test('converts to JSON', () {
      final details = StoreDetails(
        ceoFullName: 'John Doe',
        phoneNumber: '123-456-7890',
        address: '123 Test St',
        zipcode: '12345',
        email: 'test@example.com',
        businessName: 'Test Business',
        businessRegistrationNumber: '123-45-67890',
        storeName: 'Test Store',
        storeNameShort: 'TS',
        storeNameEn: 'Test Store EN',
        storeNameKana: 'テストストア',
        openingHours: OpeningHours(open: '09:00', close: '18:00'),
        contactName: 'Support Desk',
      );

      final json = details.toJson();
      expect(json['ceoFullName'], 'John Doe');
      expect(json['phoneNumber'], '123-456-7890');
      expect(json['address'], '123 Test St');
      expect(json['zipcode'], '12345');
      expect(json['email'], 'test@example.com');
      expect(json['businessName'], 'Test Business');
      expect(json['businessRegistrationNumber'], '123-45-67890');
      expect(json['storeName'], 'Test Store');
      expect(json['storeNameShort'], 'TS');
      expect(json['storeNameEn'], 'Test Store EN');
      expect(json['storeNameKana'], 'テストストア');
      expect((json['openingHours'] as Map<String, dynamic>)['open'], '09:00');
      expect((json['openingHours'] as Map<String, dynamic>)['close'], '18:00');
      expect(json['contactName'], 'Support Desk');
    });
  });

  group('OpeningHours', () {
    test('creates instance with null values', () {
      final hours = OpeningHours();
      expect(hours.open, isNull);
      expect(hours.close, isNull);
    });

    test('creates instance from JSON', () {
      final json = {'open': '09:00', 'close': '18:00'};

      final hours = OpeningHours.fromJson(json);
      expect(hours.open, '09:00');
      expect(hours.close, '18:00');
    });

    test('converts to JSON', () {
      final hours = OpeningHours(open: '09:00', close: '18:00');

      final json = hours.toJson();
      expect(json['open'], '09:00');
      expect(json['close'], '18:00');
    });
  });
}
