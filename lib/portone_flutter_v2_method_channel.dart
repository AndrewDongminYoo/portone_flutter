// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/portone_flutter_v2_platform_interface.dart';

/// An implementation of [PortoneFlutterV2Platform] that uses method channels.
class MethodChannelPortoneFlutterV2 extends PortoneFlutterV2Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('portone_flutter_v2');

  @override
  Future<String?> getPlatformVersion() async {
    return methodChannel.invokeMethod<String>('getPlatformVersion');
  }
}
