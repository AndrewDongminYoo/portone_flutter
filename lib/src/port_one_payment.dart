// 🎯 Dart imports:
import 'dart:convert';
import 'dart:typed_data';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// 📦 Package imports:
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

// 🌎 Project imports:
import 'package:portone_flutter_v2/src/models/payment_request.dart';
import 'package:portone_flutter_v2/src/models/payment_response.dart';

/// A widget that implements the PortOne v2 payment process using a [InAppWebView].
///
/// This widget uses an [IndexedStack] to initially show a placeholder widget ([initialChild])
/// instead of a blank white screen. Once the web page has been fully loaded (as indicated
/// by the [InAppWebView]'s `onLoadStop` callback), the [IndexedStack] switches its view
/// to display the actual web view.
///
/// The widget requires a [PaymentRequest] ([data]) to initialize the payment process using
/// PortOne's browser SDK. Optionally, [onError] can be provided to handle errors, and [callback]
/// will be invoked with query parameters when a payment result is received. A [Logger] may be
/// passed for debugging purposes.
///
/// See also:
///  - [InAppWebView] from flutter_inappwebview
class PortOnePayment extends StatefulWidget {
  /// Creates a [PortOnePayment] widget.
  ///
  /// The [data] parameter must be provided with the necessary payment information.
  /// The [initialChild] is an optional widget that is displayed while the web view is loading.
  const PortOnePayment({
    required this.data,
    required this.callback,
    required this.onError,
    super.key,
    this.appBar,
    this.logger,
    this.initialChild,
  });

  /// Optional app bar to be displayed on top of the widget.
  final PreferredSizeWidget? appBar;

  /// Payment information used to start the payment process.
  final PaymentRequest data;

  /// Error callback which is invoked when a JavaScript error occurs.
  final void Function(Object? error) onError;

  /// Callback invoked with the payment result parameters.
  final void Function(PaymentResponse result) callback;

  /// Optional logger for debugging.
  final Logger? logger;

  /// An optional widget to display while the web content is loading.
  final Widget? initialChild;

  @override
  State<PortOnePayment> createState() => _PortOnePaymentState();
}

class _PortOnePaymentState extends State<PortOnePayment> {
  final handlerName = 'portoneError';
  final contentType = 'text/html';

  late InAppWebViewController? controller;

  int _stackIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final html = '''
<!doctype html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="https://cdn.portone.io/v2/browser-sdk.js"></script>
    <script>
      window.addEventListener("flutterInAppWebViewPlatformReady", () => {
        PortOne.requestPayment(${jsonEncode(widget.data.toJson())}).catch((err) =>
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
                initialSettings: InAppWebViewSettings(
                  useShouldOverrideUrlLoading: true,
                  resourceCustomSchemes: ['intent'],
                ),
                onWebViewCreated: (InAppWebViewController created) async {
                  controller = created;
                  controller!.addJavaScriptHandler(
                    handlerName: handlerName,
                    callback: (List<dynamic> data) async {
                      widget.logger?.e(data.first.runtimeType);
                      try {
                        widget.onError(data.first as Object?);
                      } catch (error) {
                        widget.logger?.e('Error Occurred', error: error);
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
                  widget.logger?.i('navigation action request uri: ${url!.uriValue}');
                  switch (url!.uriValue.scheme) {
                    case 'http':
                    case 'https':
                      return NavigationActionPolicy.ALLOW;
                    case 'portone':
                      try {
                        final paymentResponse = PaymentResponse.fromJson(url.queryParameters);
                        widget.callback(paymentResponse);
                      } catch (exception) {
                        widget.logger?.e('Error Occurred', error: exception);
                        widget.onError(exception);
                      }
                      return NavigationActionPolicy.CANCEL;
                    case 'intent':
                      final uri = url.rawValue;
                      final firstColon = uri.indexOf(':');
                      final firstHash = uri.indexOf('#');
                      final hashParams = uri.substring(firstHash + 1).split(';');
                      String? scheme;
                      for (final param in hashParams) {
                        final keyValue = param.split('=');
                        if (keyValue.elementAtOrNull(0) == 'scheme') {
                          scheme = keyValue[1];
                        }
                      }
                      final redirect = '$scheme${uri.substring(firstColon, firstHash)}';
                      if (await canLaunchUrlString(redirect)) {
                        await launchUrlString(redirect);
                      }
                      return NavigationActionPolicy.CANCEL;
                    default:
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
