// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

void main() {
  group('Popup', () {
    test('should create Popup instance with center value', () {
      final popup = Popup(center: true);
      expect(popup.center, isTrue);
    });

    test('should create Popup instance with null center value', () {
      final popup = Popup();
      expect(popup.center, isNull);
    });

    test('should convert Popup to JSON with center value', () {
      final popup = Popup(center: true);
      final json = popup.toJson();
      expect(json, {'center': true});
    });

    test('should convert Popup to JSON with null center value', () {
      final popup = Popup();
      final json = popup.toJson();
      expect(json, <String, dynamic>{});
    });

    test('should create Popup from JSON with center value', () {
      final json = {'center': true};
      final popup = Popup.fromJson(json);
      expect(popup.center, isTrue);
    });

    test('should create Popup from JSON with null center value', () {
      final json = {'center': null};
      final popup = Popup.fromJson(json);
      expect(popup.center, isNull);
    });

    test('should create Popup from empty JSON', () {
      final json = <String, dynamic>{};
      final popup = Popup.fromJson(json);
      expect(popup.center, isNull);
    });
  });
}
