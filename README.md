# PortOne Flutter V2

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A Flutter package for integrating PortOne V2 payment service in your app.

> **Important Note:** This is an independent open-source project and is not officially affiliated with PortOne. This package is maintained by the community for the community.

## Features

- Easy integration with PortOne V2 payment gateway
- Support for various payment methods via PortOne's browser SDK
- AppScheme handling for payment callbacks
- Customizable UI with support for initial loading widget
- Comprehensive error handling

## Installation 💻

**❗ Requirements: [Flutter SDK][flutter_install_link] installed on your machine.**

Add to your `pubspec.yaml`:

```yaml
dependencies:
  portone_flutter_v2: ^1.0.0
```

Or install via command line:

```sh
flutter pub add portone_flutter_v2
```

## Usage

### Basic Implementation

```dart
import 'package:flutter/material.dart';
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

void main() {
  runApp(const MyApp());
}

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Create payment request
    final paymentRequest = PaymentRequest(
      storeId: 'your_store_id',  // PortOne store ID
      paymentId: 'order_12345',  // Your unique order ID
      orderName: 'Premium Subscription',
      totalAmount: 10000,
      currency: PaymentCurrency.krw,
      payMethod: PaymentPayMethod.card,
      appScheme: 'yourappscheme',  // Your app's URL scheme
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Payment')),
      body: PortonePayment(
        data: paymentRequest,
        initialChild: const Center(child: CircularProgressIndicator()),
        callback: (result) {
          // Handle successful payment
          print('Payment successful: ${result.toJson()}');
          Navigator.pop(context, result);
        },
        onError: (error) {
          // Handle payment error
          print('Payment error: $error');
          Navigator.pop(context, null);
        },
      ),
    );
  }
}

```

### Handling Payment Response

```dart
// Navigate to payment screen and wait for result
final result = await Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const PaymentScreen()),
);

if (result != null) {
  // Payment was successful
  final response = result as PaymentResponse;
  // Process successful payment
} else {
  // Payment failed or was cancelled
}

```

## Supported Payment Methods

This package supports various payment methods available through PortOne, including:

- Credit/Debit Cards
- Virtual Accounts
- Mobile Payments
- And more depending on your PortOne configuration

Check the `PaymentPayMethod` enum for all supported methods.

## Example Project

See the `/example` folder for a complete implementation.

## Contributing 🤝

We welcome contributions from the community! This is an independent open-source project and we're looking for developers interested in making online payments in Flutter apps easier.

Ways to contribute:

- Report bugs and suggest features
- Improve documentation
- Submit pull requests for bug fixes and new features
- Spread the word and help others use this package

Please read our contributing guidelines before submitting a PR.

## License

This project is licensed under the MIT License - see the [LICENSE][license_link] file for details.

---

## Running Tests 🧪

```sh
flutter test
```

For code coverage:

```sh
flutter test --coverage
genhtml coverage/lcov.info -o coverage/
open coverage/index.html
```

[flutter_install_link]: https://docs.flutter.dev/get-started/install
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
