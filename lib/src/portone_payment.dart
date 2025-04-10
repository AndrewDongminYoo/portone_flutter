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
import 'package:url_launcher/url_launcher.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/models/payment_request.dart';
import 'package:portone_flutter_v2/src/models/payment_response.dart';

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
  const PortonePayment({
    required this.data,
    required this.callback,
    required this.onError,
    super.key,
    this.appBar,
    this.logger = _defaultLog,
    this.initialChild,
    this.gestureRecognizers,
  });

  /// Optional app bar to be displayed at the top of the widget.
  final PreferredSizeWidget? appBar;

  /// Payment information used to initiate the payment process.
  final PaymentRequest data;

  /// Error callback that is invoked when a JavaScript error occurs.
  final void Function(Object? error) onError;

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
  State<PortonePayment> createState() => _PortonePaymentState();
}

class _PortonePaymentState extends State<PortonePayment> {
  final handlerName = 'portoneError';
  final contentType = 'text/html';

  InAppWebViewController? controller;

  int _stackIndex = 0;

  late final AppLinks _appLinks;
  StreamSubscription<Uri>? _appLinkSub;

  @override
  void initState() {
    super.initState();
    if (widget.data.redirectUrl == null) {
      _appLinks = AppLinks();
      _appLinkSub = _appLinks.uriLinkStream.listen(
        (Uri? uri) {
          if (uri != null && uri.scheme == widget.data.appScheme) {
            try {
              final paymentResponse = PaymentResponse.fromJson(uri.queryParameters);
              widget.logger('AppLinks callback received: $uri');
              widget.callback(paymentResponse);
            } catch (error, stackTrace) {
              widget.logger('Error processing app link', error: error, stackTrace: stackTrace);
              widget.onError(error);
            }
          }
        },
        onError: (Object? err) {
          widget.logger('AppLinks subscription error: $err');
          widget.onError(err);
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
    widget.logger(jsonEncode(widget.data.toJson()));
    final appScheme = widget.data.appScheme;
    final paymentData = widget.data.toJson();
    if (paymentData['redirectUrl'] == null) {
      paymentData['redirectUrl'] = '$appScheme://portone';
    }

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
          if (!mounted) {
            return;
          }
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
              widget.initialChild ?? Container(),
              InAppWebView(
                gestureRecognizers: widget.gestureRecognizers,
                initialSettings: InAppWebViewSettings(
                  useShouldOverrideUrlLoading: true,
                  resourceCustomSchemes: ['intent'],
                ),
                onWebViewCreated: (InAppWebViewController created) async {
                  controller = created;
                  controller!.addJavaScriptHandler(
                    handlerName: handlerName,
                    callback: (List<dynamic> data) async {
                      widget.logger('PortOne SDK ERROR: $data');
                      widget.logger('PortOne SDK Error type: ${data.first.runtimeType}');
                      try {
                        widget.onError(data.first as Object?);
                      } catch (error, stackTrace) {
                        widget.logger('Error Occurred', error: error, stackTrace: stackTrace);
                        widget.onError(error);
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
                  return CustomSchemeResponse(contentType: contentType, data: Uint8List(0));
                },
                onLoadStop: (controller, Uri? url) async {
                  if (mounted) {
                    setState(() {
                      _stackIndex = 1;
                    });
                  }
                },
                shouldOverrideUrlLoading: (InAppWebViewController controller, NavigationAction navigateAction) async {
                  final url = navigateAction.request.url;
                  widget.logger('Navigation action request uri: ${url!.uriValue}');

                  if (url.uriValue.scheme == 'http' || url.uriValue.scheme == 'https') {
                    return NavigationActionPolicy.ALLOW;
                  } else if (url.uriValue.scheme == appScheme) {
                    try {
                      final paymentResponse = PaymentResponse.fromJson(url.queryParameters);
                      widget.callback(paymentResponse);
                    } catch (exception, stackTrace) {
                      widget.logger('Error Occurred', error: exception, stackTrace: stackTrace);
                      widget.onError(exception);
                    }
                    return NavigationActionPolicy.CANCEL;
                  } else if (url.uriValue.scheme == 'intent') {
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
                      widget.onError(error);
                    }
                    return NavigationActionPolicy.CANCEL;
                  } else {
                    if (await canLaunchUrl(url.uriValue)) {
                      await launchUrl(url.uriValue);
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
}
