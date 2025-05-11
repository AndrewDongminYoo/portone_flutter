// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/helpers/url_normalizer.dart';

void main() {
  group('NormalizedUrl', () {
    test('should handle empty redirectUrl with custom appScheme', () {
      final result = NormalizedUrl(appScheme: 'myapp');

      expect(result.appScheme, equals('myapp'));
      expect(result.redirectUrl, equals('myapp://complete'));
    });

    test('should handle custom redirectUrl with path', () {
      final result = NormalizedUrl(
        appScheme: 'ignored',
        redirectUrl: 'https://example.com/callback',
      );

      expect(result.appScheme, equals('ignored'));
      expect(result.redirectUrl, equals('https://example.com/callback'));
    });

    test('should append default path to redirectUrl without path', () {
      final result = NormalizedUrl(
        redirectUrl: 'https://example.com',
      );

      expect(result.appScheme, equals('https'));
      expect(result.redirectUrl, equals('https://example.com/complete'));
    });

    test('should use custom default path', () {
      final result = NormalizedUrl(
        appScheme: 'myapp',
        defaultPath: 'callback',
      );

      expect(result.appScheme, equals('myapp'));
      expect(result.redirectUrl, equals('myapp://callback'));
    });

    test('should handle whitespace in inputs', () {
      final result = NormalizedUrl(
        appScheme: '  myapp  ',
        redirectUrl: '  https://example.com  ',
      );

      expect(result.appScheme, equals('myapp'));
      expect(result.redirectUrl, equals('https://example.com/complete'));
    });

    test('should handle null inputs gracefully', () {
      final result = NormalizedUrl(
        // ignore: avoid_redundant_argument_values
        appScheme: null,
        // ignore: avoid_redundant_argument_values
        redirectUrl: null,
      );

      expect(result.appScheme, equals('portone'));
      expect(result.redirectUrl, equals('portone://complete'));
    });

    test('should preserve query parameters in redirectUrl', () {
      final result = NormalizedUrl(
        redirectUrl: 'https://example.com?param=value',
      );

      expect(result.appScheme, equals('https'));
      expect(result.redirectUrl, equals('https://example.com/complete?param=value'));
    });

    test('should preserve fragments in redirectUrl', () {
      final result = NormalizedUrl(
        redirectUrl: 'https://example.com#fragment',
      );

      expect(result.appScheme, equals('https'));
      expect(result.redirectUrl, equals('https://example.com/complete#fragment'));
    });
  });
}
