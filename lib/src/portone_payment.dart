// 🎯 Dart imports:
import 'dart:async';
import 'dart:convert';
import 'dart:developer' show log;

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// 📦 Package imports:
import 'package:app_links/app_links.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/helpers/error_handler.dart';
import 'package:portone_flutter_v2/src/models/payment_request.dart';
import 'package:portone_flutter_v2/src/models/payment_response.dart';
import 'package:portone_flutter_v2/src/validators/webview_error_use_case.dart';

/// Default logger function using [log].
void _defaultLog(String message, {Object? error, StackTrace? stackTrace}) {
  log(message, error: error, stackTrace: stackTrace, name: 'portone');
}

/// A widget that implements the PortOne v2 payment process using an [InAppWebView].
///
/// This widget uses an [IndexedStack] to initially display a placeholder widget ([initialChild])
/// instead of a blank white screen. Once the webpage is fully loaded (as indicated by the
/// [InAppWebView]'s `onLoadStop` callback), the [IndexedStack] displays the actual web view.
///
/// The widget requires a [PaymentRequest] ([data]) to initialize the payment process using
/// PortOne's browser SDK. Optionally, [onError] can be provided for error handling, and [callback]
/// will be invoked with query parameters when a payment result is received.
///
/// The [gestureRecognizers] parameter allows customization of which gestures are forwarded
/// to the web view, which is especially useful when the widget is nested in scrollable containers.
///
/// See also:
///  - [InAppWebView] from flutter_inappwebview
class PortonePayment extends StatefulWidget {
  /// Creates a [PortonePayment] widget.
  ///
  /// The [data] parameter must provide the necessary payment information.
  /// The [initialChild] is an optional widget displayed while the web view is loading.
  PortonePayment({
    required this.data,
    required this.callback,
    required Function onError,
    super.key,
    this.appBar,
    this.logger = _defaultLog,
    this.initialChild,
    this.gestureRecognizers,
  }) : onError = PortoneErrorHandler(onError);

  /// Optional app bar to be displayed at the top of the widget.
  final PreferredSizeWidget? appBar;

  /// Payment information used to initiate the payment process.
  final PaymentRequest data;

  /// Error callback that is invoked when a JavaScript error occurs.
  final PortoneErrorHandler onError;

  /// Callback invoked with the payment result parameters.
  final void Function(PaymentResponse result) callback;

  /// Logger function for debugging purposes.
  final void Function(String message, {Object? error, StackTrace? stackTrace}) logger;

  /// An optional widget displayed while the web content is loading.
  final Widget? initialChild;

  /// Set of gesture recognizers that determine which gestures are forwarded to the web view.
  ///
  /// This is useful when embedding the web view in other gesture-sensitive widgets such as
  /// [ListView], [PageView], or custom gesture detectors.
  ///
  /// For example, if vertical drag gestures inside a [ListView] should be recognized by the web
  /// view, you can add a [VerticalDragGestureRecognizer] to this set.
  ///
  /// By default (if null or empty), the web view will only receive pointer events for gestures
  /// that are not claimed by any other widgets.
  final Set<Factory<OneSequenceGestureRecognizer>>? gestureRecognizers;

  @override
  PortonePaymentState createState() => PortonePaymentState();
}

/// State class for the [PortonePayment] widget that manages the payment process flow.
///
/// This public state class encapsulates the core logic required to initiate and handle the
/// PortOne v2 payment process using an embedded [InAppWebView]. It is designed to facilitate
/// testing by exposing internal behaviors while remaining responsible for:
///
/// - Generating and loading HTML that invokes PortOne’s browser SDK for processing the payment.
/// - Managing the [InAppWebView] lifecycle including loading events, JavaScript handlers,
///   and navigation actions.
/// - Handling deep link callbacks using [AppLinks] when no explicit [PaymentRequest.redirectUrl] is provided.
/// - Intercepting and processing URL navigations to capture payment responses or errors:
///   - Allowing normal HTTP/HTTPS navigations.
///   - Capturing the custom app scheme redirections to extract payment result parameters.
///   - Parsing and launching intent URLs according to the provided scheme information.
/// - Propagating errors encountered during the payment flow via the provided [PortonePayment.onError] callback.
///
/// **Note:** This class is declared public primarily to support more granular testing of internal
/// logic and web view interactions without compromising encapsulation in production builds.
///
/// See also:
///  - [PortonePayment]
///  - [InAppWebView] from the flutter_inappwebview package.
@visibleForTesting
class PortonePaymentState extends State<PortonePayment> {
  /// Callback function name for JavaScript error handling.
  final handlerName = 'portoneError';

  /// MIME type for the HTML content loaded into the web view.
  final contentType = 'text/html';

  /// Controller for managing the embedded [InAppWebView].
  InAppWebViewController? controller;

  /// Current index of Stacked Widgets
  int _stackIndex = 0;

  /// App links handler.
  late final AppLinks _appLinks;

  /// Stream for receiving all incoming URI events as [Uri].
  StreamSubscription<Uri>? _appLinkSub;

  /// Every time `shouldOverrideUrlLoading` is called, the URL is stored in [_redirectedUrls],
  /// and when an actual error occurs, you can create a stack trace containing this URL history using
  /// [StackTrace.fromString] and pass it on, allowing users to use it for debugging as is.
  final List<Uri> _redirectedUrls = [];

  @override
  void initState() {
    super.initState();
    if (widget.data.redirectUrl == null) {
      _appLinks = AppLinks();
      _appLinkSub = _appLinks.uriLinkStream.listen(
        (Uri? uri) {
          if (uri != null && uri.scheme == widget.data.appScheme) {
            // Copy original parameters
            final params = Map<String, String>.from(uri.queryParameters);
            try {
              final paymentResponse = PaymentResponse.fromJson(params);
              widget.logger('AppLinks callback received: $uri');
              _handleSuccess(paymentResponse);
            } on CheckedFromJsonException catch (e, st) {
              // Debug logging: missing keys, full map, stack trace
              widget.logger(
                '❌ PaymentResponse.fromJson failed!\n'
                '  Incoming params: $params\n'
                '  Error message: ${e.message}\n'
                '  Missing key: txId or malformed value?',
                error: e.innerError ?? e,
                stackTrace: e.innerStack ?? st,
              );
              _handleError(e, st);
            } catch (error, stackTrace) {
              widget.logger('Error processing app link', error: error, stackTrace: stackTrace);
              _handleError(error, stackTrace);
            }
          }
        },
        onError: (Object error, StackTrace stackTrace) {
          widget.logger('AppLinks subscription error', error: error, stackTrace: stackTrace);
          _handleError(error, stackTrace);
        },
      );
    }
  }

  @override
  void dispose() {
    _appLinkSub?.cancel();
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final paymentData = Map<String, dynamic>.from(widget.data.toJson());
    widget.logger(jsonEncode(paymentData));
    final appScheme = widget.data.appScheme;

    paymentData['appScheme'] = '$appScheme://';

    final html = '''
<!doctype html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="https://cdn.portone.io/v2/browser-sdk.js"></script>
    <script>
      window.addEventListener("flutterInAppWebViewPlatformReady", () => {
        PortOne.requestPayment(${jsonEncode(paymentData)}).catch((err) =>
          window.flutter_inappwebview.callHandler("$handlerName", err.message),
        );
      });
    </script>
  </head>
  <body></body>
</html>

''';

    return Scaffold(
      appBar: widget.appBar,
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, Object? result) async {
          if (!mounted) return;
          if (controller != null && await controller!.canGoBack()) {
            await controller!.goBack();
          } else {
            SchedulerBinding.instance.addPostFrameCallback((_) {
              if (mounted && Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
            });
          }
        },
        child: SafeArea(
          child: IndexedStack(
            index: _stackIndex,
            children: [
              widget.initialChild ?? const Center(child: CircularProgressIndicator()),
              InAppWebView(
                gestureRecognizers: widget.gestureRecognizers,
                initialSettings: InAppWebViewSettings(
                  javaScriptCanOpenWindowsAutomatically: true,
                  allowsLinkPreview: false,
                  allowsInlineMediaPlayback: true,
                  useShouldOverrideUrlLoading: true,
                  useOnLoadResource: true,
                  useOnDownloadStart: true,
                  resourceCustomSchemes: ['intent'],
                  contentBlockers: [],
                ),
                onWebViewCreated: (InAppWebViewController created) async {
                  controller = created;
                  controller!.addJavaScriptHandler(
                    handlerName: handlerName,
                    callback: (List<dynamic> arguments) async {
                      try {
                        widget.logger('PortOne SDK ERROR: $arguments');
                        final portoneError = arguments.first;
                        widget.logger('PortOne SDK Error type: ${portoneError.runtimeType}');
                        _handleError(portoneError as Object?);
                      } catch (error, stackTrace) {
                        widget.logger('Error Occurred', error: error, stackTrace: stackTrace);
                        _handleError(error, stackTrace);
                      }
                    },
                  );
                  await controller!.loadData(
                    mimeType: contentType,
                    data: html,
                    baseUrl: WebUri('https://flutter-sdk-content.portone.io/'),
                  );
                },
                onLoadResourceWithCustomScheme: (InAppWebViewController controller, WebResourceRequest resource) async {
                  await controller.stopLoading();
                  return null;
                },
                onLoadStop: (controller, Uri? url) async {
                  if (mounted) {
                    setState(() {
                      _stackIndex = 1;
                    });
                  }
                },
                onReceivedError:
                    (InAppWebViewController controller, WebResourceRequest request, WebResourceError error) {
                  if (WebviewErrorUseCase.shouldIgnore(error, isMainFrame: request.isForMainFrame)) {
                    widget.logger('Ignored WebView error: ${error.type} ${error.description}');
                    return;
                  }

                  widget.logger('onReceivedError (main frame)', error: error);
                  _handleError(error);
                },
                onReceivedHttpError:
                    (InAppWebViewController controller, WebResourceRequest request, WebResourceResponse errorResponse) {
                  final statusCode = errorResponse.statusCode;
                  if (statusCode == null) {
                    widget.logger('Ignored HTTP error unknown status code: ${request.url}');
                    return;
                  }

                  // 요청이 메인 프레임의 문서를 가져오기 위해 이루어진 것이 아니면 무시
                  if (!(request.isForMainFrame ?? false)) {
                    widget.logger('Ignored HTTP error on subresource: ${request.url} → $statusCode');
                    return;
                  }

                  if (statusCode >= 400) {
                    widget.logger('onReceivedHttpError (main frame $statusCode): ${request.url}');
                    final exception = Exception('HTTP $statusCode: ${errorResponse.reasonPhrase}');
                    _handleError(exception);
                  }
                },
                shouldOverrideUrlLoading: (InAppWebViewController controller, NavigationAction navigateAction) async {
                  final url = navigateAction.request.url;
                  if (url == null) return NavigationActionPolicy.CANCEL;

                  final uriValue = url.uriValue;
                  _redirectedUrls.add(uriValue);
                  widget.logger('Navigation action request uri: $uriValue');

                  if (uriValue.scheme == 'http' || uriValue.scheme == 'https') {
                    return NavigationActionPolicy.ALLOW;
                  } else if (uriValue.scheme == appScheme) {
                    try {
                      final paymentResponse = PaymentResponse.fromJson(url.queryParameters);
                      _handleSuccess(paymentResponse);
                    } catch (exception, stackTrace) {
                      widget.logger('Error Occurred', error: exception, stackTrace: stackTrace);
                      _handleError(exception, stackTrace);
                    }
                    return NavigationActionPolicy.CANCEL;
                  } else if (uriValue.scheme == 'intent') {
                    try {
                      // Retrieve the raw URL string.
                      final rawUri = url.rawValue;
                      // Split the URL using '#' as the delimiter (e.g., "intent://..." and "Intent;scheme=...;end").
                      final parts = rawUri.split('#');
                      if (parts.length != 2) {
                        throw const FormatException('Invalid intent URL format: missing fragment');
                      }
                      final baseUriStr = parts[0]; // e.g., "intent://some_path"
                      final fragment = parts[1]; // e.g., "Intent;scheme=https;package=com.example;end"

                      // Remove the "Intent;" prefix if present.
                      var fragmentContent = fragment;
                      const intentPrefix = 'Intent;';
                      if (fragmentContent.startsWith(intentPrefix)) {
                        fragmentContent = fragmentContent.substring(intentPrefix.length);
                      }

                      // Split each parameter using ';' as delimiter and create key-value pairs.
                      final paramsList = fragmentContent.split(';');
                      final params = <String, String>{};
                      for (final param in paramsList) {
                        if (param.isNotEmpty && param.contains('=')) {
                          final keyValue = param.split('=');
                          params[keyValue[0]] = keyValue[1];
                        }
                      }

                      // Extract the required 'scheme' parameter.
                      final redirectScheme = params['scheme'];
                      if (redirectScheme == null) {
                        throw const FormatException('Scheme parameter not found in intent URL');
                      }

                      // Safely parse the base URI and replace its scheme.
                      final baseUri = Uri.parse(baseUriStr);
                      final redirectUri = baseUri.replace(scheme: redirectScheme);

                      // Validate and launch the redirection URI.
                      if (await canLaunchUrl(redirectUri)) {
                        await launchUrl(redirectUri);
                      }
                    } catch (error, stackTrace) {
                      widget.logger('Intent URL parsing error', error: error, stackTrace: stackTrace);
                      _handleError(error, stackTrace);
                    }
                    return NavigationActionPolicy.CANCEL;
                  } else {
                    try {
                      await launchUrl(uriValue, mode: LaunchMode.externalApplication);
                    } catch (error, stack) {
                      widget.logger('Failed to launch external url: $uriValue', error: error, stackTrace: stack);
                    }
                    return NavigationActionPolicy.CANCEL;
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Handle errors from the WebView.
  void _handleError(Object? error, [StackTrace? stackTrace]) {
    widget.onError(error, stackTrace ?? StackTrace.fromString(_redirectedUrls.join('\n\tthen ')));
    _redirectedUrls.clear();
  }

  /// Handle successful payment response.
  void _handleSuccess(PaymentResponse paymentResponse) {
    widget.callback(paymentResponse);
    _redirectedUrls.clear();
  }
}
