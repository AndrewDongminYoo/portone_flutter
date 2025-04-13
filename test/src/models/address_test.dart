// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

void main() {
  group('Address', () {
    test('should create empty Address with all fields null', () {
      final address = Address();

      expect(address.country, isNull);
      expect(address.city, isNull);
      expect(address.province, isNull);
      expect(address.addressLine1, isNull);
      expect(address.addressLine2, isNull);
      expect(address.zipcode, isNull);
    });

    test('should create Address with partial fields', () {
      final address = Address(
        country: Country.US,
        city: 'New York',
      );

      expect(address.country, equals(Country.US));
      expect(address.city, equals('New York'));
      expect(address.province, isNull);
      expect(address.addressLine1, isNull);
      expect(address.addressLine2, isNull);
      expect(address.zipcode, isNull);
    });

    test('fromJson should handle minimal json data', () {
      final json = {'country': 'COUNTRY_US', 'city': 'Los Angeles'};

      final address = Address.fromJson(json);

      expect(address.country, equals(Country.US));
      expect(address.city, equals('Los Angeles'));
      expect(address.province, isNull);
    });

    test('toJson should output valid json with partial data', () {
      final address = Address(country: Country.JP, city: 'Tokyo', zipcode: '100-0001');

      final json = address.toJson();

      expect(json['country'], equals('COUNTRY_JP'));
      expect(json['city'], equals('Tokyo'));
      expect(json['zipcode'], equals('100-0001'));
      expect(json['province'], isNull);
      expect(json['addressLine1'], isNull);
      expect(json['addressLine2'], isNull);
    });
  });
}
