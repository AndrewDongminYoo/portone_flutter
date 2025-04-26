// 📦 Package imports:
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/portone_flutter_v2_method_channel.dart';

/// An abstract platform interface for the PortoneFlutterV2 plugin.
///
/// This class defines the core interface for platform-specific implementations
/// of the PortoneFlutterV2 plugin, allowing for cross-platform support.
/// Implementations must extend this class and provide platform-specific
/// method implementations.
abstract class PortoneFlutterV2Platform extends PlatformInterface {
  /// Constructs a PortoneFlutterV2Platform.
  PortoneFlutterV2Platform() : super(token: _token);

  static final Object _token = Object();

  static PortoneFlutterV2Platform _instance = MethodChannelPortoneFlutterV2();

  /// The default instance of [PortoneFlutterV2Platform] to use.
  ///
  /// Defaults to [MethodChannelPortoneFlutterV2].
  static PortoneFlutterV2Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PortoneFlutterV2Platform] when
  /// they register themselves.
  static set instance(PortoneFlutterV2Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Retrieves the current platform version.
  ///
  /// Returns a [Future] that completes with a [String] representing the platform version,
  /// or `null` if the platform version cannot be determined.
  ///
  /// Throws an [UnimplementedError] if the platform-specific implementation is not provided.
  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
