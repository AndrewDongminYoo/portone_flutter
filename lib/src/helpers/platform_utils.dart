// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

/// The platform that user interaction should adapt to target.
/// Provides utility methods for detecting the current [TargetPlatform].
sealed class PlatformUtil {
  /// The [TargetPlatform] that matches the platform on which the framework is currently executing.
  static TargetPlatform get current => defaultTargetPlatform;

  /// A a boolean which is true if the application is running on the web
  static bool get isWeb => kIsWeb && !isIOS && !isAndroid && !isWindows && !isMacOS && !isLinux;

  /// Whether the operating system is a version of [iOS](https://en.wikipedia.org/wiki/IOS).
  static bool get isIOS => current == TargetPlatform.iOS;

  /// Whether the operating system is a version of [Android](https://en.wikipedia.org/wiki/Android_%28operating_system%29).
  static bool get isAndroid => current == TargetPlatform.android;

  /// Whether the operating system is a version of [Microsoft Windows](https://en.wikipedia.org/wiki/Microsoft_Windows).
  static bool get isWindows => current == TargetPlatform.windows;

  /// Whether the operating system is a version of [macOS](https://en.wikipedia.org/wiki/MacOS).
  static bool get isMacOS => current == TargetPlatform.macOS;

  /// Whether the operating system is a version of [Linux](https://en.wikipedia.org/wiki/Linux).
  ///
  /// This value is `false` if the operating system is a specialized version of Linux that identifies itself by a different name.
  static bool get isLinux => current == TargetPlatform.linux;
}
