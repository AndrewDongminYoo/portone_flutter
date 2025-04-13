// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

void main() {
  group('OfferPeriod', () {
    test('should create OfferPeriod with interval', () {
      final offerPeriod = OfferPeriod(interval: '30d');
      expect(offerPeriod.interval, equals('30d'));
      expect(offerPeriod.range, isNull);
    });

    test('should create OfferPeriod with range', () {
      final range = OfferRange(
        from: '2024-01-01',
        to: '2024-12-31',
      );
      final offerPeriod = OfferPeriod(range: range);

      expect(offerPeriod.range?.from, equals('2024-01-01'));
      expect(offerPeriod.range?.to, equals('2024-12-31'));
      expect(offerPeriod.interval, isNull);
    });

    test('should correctly serialize and deserialize OfferPeriod with interval', () {
      final original = OfferPeriod(interval: '6m');
      final json = original.toJson();
      final deserialized = OfferPeriod.fromJson(json);

      expect(deserialized.interval, equals('6m'));
      expect(deserialized.range, isNull);
    });

    test('should correctly serialize and deserialize OfferPeriod with range', () {
      final range = OfferRange(from: '2024-01-01', to: '2024-12-31');
      final original = OfferPeriod(range: range);
      final json = original.toJson();
      final deserialized = OfferPeriod.fromJson(json);

      expect(deserialized.range?.from, equals('2024-01-01'));
      expect(deserialized.range?.to, equals('2024-12-31'));
    });
  });

  group('OfferRange', () {
    test('should create OfferRange with only from date', () {
      final range = OfferRange(from: '2024-01-01');
      expect(range.from, equals('2024-01-01'));
      expect(range.to, isNull);
    });

    test('should create OfferRange with only to date', () {
      final range = OfferRange(to: '2024-12-31');
      expect(range.to, equals('2024-12-31'));
      expect(range.from, isNull);
    });

    test('should correctly serialize and deserialize OfferRange', () {
      final original = OfferRange(
        from: '2024-01-01',
        to: '2024-12-31',
      );
      final json = original.toJson();
      final deserialized = OfferRange.fromJson(json);

      expect(deserialized.from, equals('2024-01-01'));
      expect(deserialized.to, equals('2024-12-31'));
    });

    test('should handle empty OfferRange', () {
      final range = OfferRange();
      expect(range.from, isNull);
      expect(range.to, isNull);

      final json = range.toJson();
      final deserialized = OfferRange.fromJson(json);

      expect(deserialized.from, isNull);
      expect(deserialized.to, isNull);
    });
  });
}
