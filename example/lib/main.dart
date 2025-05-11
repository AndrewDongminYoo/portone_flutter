// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

/// This sample app demonstrates how to integrate the PortOne V2 payment process
/// using the [PortonePayment] widget provided in the package.
///
/// Note:
/// - This package is a wrapper around PortOne's browser SDK function `PortOne.requestPayment`,
///   and is not directly affiliated with PortOne.
/// - The example shows a simple two-screen flow:
///   1. A home screen ([PayNowScreen]) that initiates a payment request.
///   2. A payment screen ([PaymentScreen]) that displays the payment process in a WebView.
///   3. A result screen ([ResultScreen]) that shows the outcome of the payment process.
/// - Navigation is handled using [GoRouter], allowing for deep linking and route management.
void main() => runApp(const MyApp());

/// Global router configuration for the sample application.
///
/// The route structure is defined as follows:
/// - '/' maps to [PayNowScreen] (the home screen).
/// - '/payment' maps to [PaymentScreen] and expects a [PaymentRequest] passed via extra data.
/// - '/result' maps to [ResultScreen] and expects a [PaymentResponse] passed via extra data.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const PayNowScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'payment',
          name: 'payment',
          builder: (BuildContext context, GoRouterState state) {
            final paymentRequest = state.extra as PaymentRequest;
            return PaymentScreen(paymentRequest: paymentRequest);
          },
        ),
        GoRoute(
          path: 'result',
          name: 'result',
          builder: (BuildContext context, GoRouterState state) {
            final paymentResponse = state.extra as PaymentResponse;
            return ResultScreen(paymentResponse: paymentResponse);
          },
        ),
      ],
    ),
  ],
);

/// The root widget of the application.
///
/// Uses [MaterialApp.router] to wire up the router configuration.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp] instance.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'PortOne Payment Sample',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

/// The home screen that provides a button to initiate a payment.
///
/// This screen creates a [PaymentRequest] object and navigates to the
/// [PaymentScreen] when the "Go to the Payment screen" button is pressed.
class PayNowScreen extends StatelessWidget {
  /// Constructs a [PayNowScreen] instance.
  const PayNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pay Now')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Generate a unique payment ID using the current timestamp.
            final paymentId = 'payment_${DateTime.now().millisecondsSinceEpoch}';
            // Create a PaymentRequest with example data.
            final payment = PaymentRequest(
              storeId: 'store-00000000-0000-0000-0000-000000000000',
              paymentId: paymentId,
              orderName: '주문명',
              totalAmount: 1000,
              currency: PaymentCurrency.KRW,
              channelKey: 'channel-key-00000000-0000-0000-0000-000000000000',
              payMethod: PaymentPayMethod.card,
              appScheme: 'portone',
              redirectUrl: 'portone://payments',
            );
            // Navigate to the PaymentScreen, passing the PaymentRequest as extra data.
            context.push('/payment', extra: payment);
          },
          child: const Text('Go to the Payment screen'),
        ),
      ),
    );
  }
}

/// The payment screen that embeds the [PortonePayment] widget.
///
/// This screen displays the payment process inside a WebView.
/// Upon receiving the payment result callback, it navigates to the [ResultScreen].
class PaymentScreen extends StatelessWidget {
  /// Constructs a [PaymentScreen] instance.
  ///
  /// The [paymentRequest] parameter is required to initiate the payment.
  const PaymentScreen({super.key, required this.paymentRequest});

  /// The payment request data to be used in the payment process.
  final PaymentRequest paymentRequest;

  @override
  Widget build(BuildContext context) {
    return PortonePayment(
      appBar: AppBar(title: const Text('Payment Screen')),
      data: paymentRequest,
      initialChild: Center(
        child: ElevatedButton(
          onPressed: () {
            // Allow users to cancel the payment process and go back to the home screen.
            context.go('/');
          },
          child: const Text('Go Back'),
        ),
      ),
      // The callback is invoked when a payment result is received.
      callback: (PaymentResponse response) async {
        // Navigate to the result screen with the payment response.
        context.push('/result', extra: response);
      },
      // Error handling: display a SnackBar in case of an error.
      onError: (Object? error) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.toString())));
      },
    );
  }
}

/// The result screen that displays the outcome of the payment process.
///
/// It converts the [PaymentResponse] into a readable JSON format and displays
/// each key-value pair in a list format.
class ResultScreen extends StatelessWidget {
  /// Constructs a [ResultScreen] instance.
  ///
  /// The [paymentResponse] parameter contains the result of the payment.
  const ResultScreen({super.key, required this.paymentResponse});

  /// The payment response data received after the payment process.
  final PaymentResponse paymentResponse;

  @override
  Widget build(BuildContext context) {
    final resultData = paymentResponse.toJson();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Result'),
        automaticallyImplyLeading: false,
        leading: IconButton(icon: const Icon(Icons.home), onPressed: () => context.go('/')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Display all key-value pairs from the payment response.
        child: ListView.builder(
          itemCount: resultData.length,
          itemBuilder: (context, index) {
            final key = resultData.keys.elementAt(index);
            return Padding(
              key: ValueKey(key),
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$key: ', style: const TextStyle(fontWeight: FontWeight.bold)),
                  Expanded(child: Text(resultData[key].toString(), softWrap: true)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
