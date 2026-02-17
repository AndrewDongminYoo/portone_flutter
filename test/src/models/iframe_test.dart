// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

void main() {
  group('Iframe', () {
    test('should create Iframe instance with dim value', () {
      final iframe = Iframe(dim: true);
      expect(iframe.dim, isTrue);
    });

    test('should create Iframe instance with dim false', () {
      final iframe = Iframe(dim: false);
      expect(iframe.dim, isFalse);
    });

    test('should create Iframe instance with null dim value', () {
      final iframe = Iframe();
      expect(iframe.dim, isNull);
    });

    test('should convert Iframe to JSON with dim value', () {
      final iframe = Iframe(dim: true);
      final json = iframe.toJson();
      expect(json, {'dim': true});
    });

    test('should convert Iframe to JSON with dim false', () {
      final iframe = Iframe(dim: false);
      final json = iframe.toJson();
      expect(json, {'dim': false});
    });

    test('should convert Iframe to JSON with null dim value', () {
      final iframe = Iframe();
      final json = iframe.toJson();
      expect(json, <String, dynamic>{});
    });

    test('should create Iframe from JSON with dim value', () {
      final json = {'dim': true};
      final iframe = Iframe.fromJson(json);
      expect(iframe.dim, isTrue);
    });

    test('should create Iframe from JSON with dim false', () {
      final json = {'dim': false};
      final iframe = Iframe.fromJson(json);
      expect(iframe.dim, isFalse);
    });

    test('should create Iframe from JSON with null dim value', () {
      final json = {'dim': null};
      final iframe = Iframe.fromJson(json);
      expect(iframe.dim, isNull);
    });

    test('should create Iframe from empty JSON', () {
      final json = <String, dynamic>{};
      final iframe = Iframe.fromJson(json);
      expect(iframe.dim, isNull);
    });
  });
}
