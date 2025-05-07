// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

/// A utility class that determines which [WebResourceError] cases
/// can be safely ignored during the PortOne payment flow in a WebView.
///
/// This class centralizes the logic for ignoring benign WebView errors
/// that do not affect the payment process, such as cancelled navigations,
/// host lookup failures, and network timeouts.
///
/// Example:
/// ```dart
/// if (WebviewErrorUseCase.shouldIgnore(error, isMainFrame: request.isForMainFrame ?? false)) {
///   logger('Ignored WebView error: ${error.type}');
/// } else {
///   handleError(error);
/// }
/// ```
class WebviewErrorUseCase {
  /// A mapping of [WebResourceErrorType] to optional [Pattern]s.
  ///
  /// If the error type is present as a key, the corresponding error
  /// will be ignored. If a [Pattern] is provided, the error's
  /// description must match the pattern to be ignored.
  @visibleForTesting
  static final Map<WebResourceErrorType, Pattern?> ignoreRules = {
    // Cancellation by user or system (e.g. NSURLErrorDomain code -999)
    WebResourceErrorType.CANCELLED: RegExp('NSURLErrorDomain'),
    // WebKit frame load interruptions (e.g. code 102)
    WebResourceErrorType.UNKNOWN: RegExp('WebKitErrorDomain'),
    // DNS lookup failures (e.g. ERR_NAME_NOT_RESOLVED)
    WebResourceErrorType.HOST_LOOKUP: RegExp('ERR_NAME_NOT_RESOLVED'),
    // Connection timeout on Android, iOS, macOS
    WebResourceErrorType.TIMEOUT: null,

    // Future network-related errors that can be ignored
    WebResourceErrorType.CANNOT_CONNECT_TO_HOST: null,
    WebResourceErrorType.NOT_CONNECTED_TO_INTERNET: null,
    WebResourceErrorType.NETWORK_CONNECTION_LOST: null,

    // iOS/macOS App Transport Security restrictions
    WebResourceErrorType.APP_TRANSPORT_SECURITY_REQUIRES_SECURE_CONNECTION: null,
  };

  /// Determines whether a given [WebResourceError] can be ignored.
  ///
  /// Non-main frame errors are always ignored. For main frame errors,
  /// this method consults [ignoreRules]:
  /// - If a [Pattern] is provided, the error's description must match
  ///   the pattern to be ignored.
  /// - If the error type key exists without a pattern, all errors of
  ///   that type are ignored.
  ///
  /// Returns `true` if the error can be safely ignored, `false` otherwise.
  ///
  /// - [error]: the [WebResourceError] thrown by the WebView.
  /// - [isMainFrame]: indicates whether the error occurred on the main frame.
  ///
  /// See also:
  ///  - [WebResourceErrorType] in flutter_inappwebview package.
  static bool shouldIgnore(WebResourceError error, {required bool? isMainFrame}) {
    // Ignore all sub-frame errors
    if (!(isMainFrame ?? false)) return true;

    final pattern = ignoreRules[error.type];
    if (pattern != null) {
      return pattern.allMatches(error.description).isNotEmpty;
    }

    // Ignore all errors whose type is listed as a key
    return ignoreRules.containsKey(error.type);
  }
}
