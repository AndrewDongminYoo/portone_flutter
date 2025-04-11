// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

/// This sample app shows an app with two screens.
///
/// The first route '/' is mapped to [PayNowScreen], and the second route
/// '/payment' is mapped to [PaymentScreen].
///
/// The buttons use context.go() to navigate to each destination. On mobile
/// devices, each destination is deep-linkable and on the web, can be navigated
/// to using the address bar.
void main() => runApp(const MyApp());

/// The route configuration.
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

/// The main app.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}

/// The home screen
class PayNowScreen extends StatelessWidget {
  /// Constructs a [PayNowScreen]
  const PayNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pay Now')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final paymentId = 'payment_${DateTime.now().millisecondsSinceEpoch}';
            final payment = PaymentRequest(
              storeId: 'store-00000000-0000-0000-0000-000000000000',
              paymentId: paymentId,
              orderName: '주문명',
              totalAmount: 1000,
              currency: PaymentCurrency.KRW,
              channelKey: 'channel-key-00000000-0000-0000-0000-000000000000',
              payMethod: PaymentPayMethod.card,
              appScheme: 'portone',
            );

            context.push('/payment', extra: payment);
          },
          child: const Text('Go to the Payment screen'),
        ),
      ),
    );
  }
}

/// The payment screen
class PaymentScreen extends StatelessWidget {
  /// Constructs a [PaymentScreen]
  const PaymentScreen({super.key, required this.paymentRequest});

  final PaymentRequest paymentRequest;

  @override
  Widget build(BuildContext context) {
    return PortonePayment(
      appBar: AppBar(title: const Text('Payment Screen')),
      data: paymentRequest,
      initialChild: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/');
          },
          child: const Text('Go Back'),
        ),
      ),
      callback: (PaymentResponse response) async {
        context.push('/result', extra: response);
      },
      onError: (Object? error) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.toString())));
      },
    );
  }
}

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.paymentResponse});

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
