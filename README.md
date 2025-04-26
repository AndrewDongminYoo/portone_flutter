# PortOne Flutter V2

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

A robust Flutter package enabling seamless integration of the PortOne V2 payment gateway into Flutter applications. Designed for simplicity and flexibility, it leverages PortOne's browser SDK, providing an intuitive payment workflow directly within your app using Flutter's InAppWebView.

> **Important Note:** This is a community-maintained package and is not officially affiliated with PortOne.

## 📦 Key Features

- **Integrated Payment Flow:**
  Simplified embedding of PortOne's payment gateway via a customizable WebView interface.

- **Flexible Payment Methods:**
  Supports all major payment methods provided by PortOne (credit/debit cards, virtual accounts, mobile payments, etc.).

- **Deep-Link Handling:**
  Automatic deep-link handling for payment completion callbacks using custom app schemes.

- **Customizable UI:**
  Easily configure your loading state UI and customize the payment experience.

- **Comprehensive Error Management:**
  Provides clear error handling through callbacks for debugging and user feedback.

## 🚀 Getting Started

### Installation 💻

**❗ Requirements: [Flutter SDK][flutter_install_link] installed on your machine.**

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  portone_flutter_v2: ^1.0.3
```

Or via command line:

```bash
flutter pub add portone_flutter_v2
```

### Platform Configuration

#### Android (`AndroidManifest.xml`):

Ensure your app requests internet permission and declares package visibility for payment-related apps:

```xml
<uses-permission android:name="android.permission.INTERNET" />

<queries>
  <!-- Include other required payment apps -->
  <package android:name="com.ahnlab.v3mobileplus" />
  <package android:name="com.eg.android.AlipayGphone" />
  <package android:name="com.hanaskcard.paycla" />
  <package android:name="com.hyundaicard.appcard" />
  <package android:name="com.kakao.talk" />
  <package android:name="com.kakaobank.channel" />
  <package android:name="com.kbcard.cxh.appcard" />
  <package android:name="com.kbstar.kbbank" />
  <package android:name="com.kbstar.reboot" />
  <package android:name="com.kftc.bankpay.android" />
  <package android:name="com.kt.ktauth" />
  <package android:name="com.lcacApp" />
  <package android:name="com.lguplus.smartotp" />
  <package android:name="com.lottemembers.android" />
  <package android:name="com.nhn.android.search" />
  <package android:name="com.nhnent.payapp" />
  <package android:name="com.samsung.android.spay" />
  <package android:name="com.shcard.smartpay" />
  <package android:name="com.shinhan.sbanking" />
  <package android:name="com.shinhan.smartcaremgr" />
  <package android:name="com.sktelecom.tauth" />
  <package android:name="com.tencent.mm" />
  <package android:name="com.wooribank.smart.npib" />
  <package android:name="com.wooricard.smartapp" />
  <package android:name="jp.naver.line.android" />
  <package android:name="kr.co.citibank.citimobile" />
  <package android:name="kr.co.samsungcard.mpocket" />
  <package android:name="kr.co.shiftworks.vguardweb" />
  <package android:name="kvp.jjy.MispAndroid320" />
  <package android:name="net.ib.android.smcard" />
  <package android:name="nh.smart.card" />
  <package android:name="nh.smart.nhallonepay" />
  <package android:name="viva.republica.toss" />
</queries>
```

#### iOS (`Info.plist`):

Add required URL schemes for payments and deep linking:

```xml
<key>LSApplicationQueriesSchemes</key>
<array>
  <!-- Include payment-related schemes you need -->
  <string>alipays</string>
  <string>ansimclickipcollect</string>
  <string>ansimclickscard</string>
  <string>chaipayment</string>
  <string>citicardappkr</string>
  <string>citimobileapp</string>
  <string>citispay</string>
  <string>cloudpay</string>
  <string>com.wooricard.wcard</string>
  <string>hanamopmoasign</string>
  <string>hanawalletmembers</string>
  <string>hdcardappcardansimclick</string>
  <string>hyundaicardappcardid</string>
  <string>ispmobile</string>
  <string>itms-apps</string>
  <string>kakaobank</string>
  <string>kakaokompassauth</string>
  <string>kakaolink</string>
  <string>kakaoplus</string>
  <string>kakaotalk</string>
  <string>kb-acp</string>
  <string>kb-auth</string>
  <string>kb-screen</string>
  <string>kbbank</string>
  <string>kftc-bankpay</string>
  <string>ktauthexternalcall</string>
  <string>lguthepay-xpay</string>
  <string>liivbank</string>
  <string>line</string>
  <string>lmslpay</string>
  <string>lotteappcard</string>
  <string>lottesmartpay</string>
  <string>lpayapp</string>
  <string>mailto</string>
  <string>monimopay</string>
  <string>monimopayauth</string>
  <string>mpocket.online.ansimclick</string>
  <string>naversearchthirdlogin</string>
  <string>newliiv</string>
  <string>newsmartpib</string>
  <string>NewSmartPib</string>
  <string>nhallonepayansimclick</string>
  <string>nhappcardansimclick</string>
  <string>nonghyupcardansimclick</string>
  <string>payco</string>
  <string>samsungpay</string>
  <string>scardcertiapp</string>
  <string>shinhan-sr-ansimclick-lpay</string>
  <string>shinhan-sr-ansimclick-mola</string>
  <string>shinhan-sr-ansimclick-naverpay</string>
  <string>shinhan-sr-ansimclick-payco</string>
  <string>shinhan-sr-ansimclick</string>
  <string>shinsegaeeasypayment</string>
  <string>smailapp</string>
  <string>smhyundaiansimclick</string>
  <string>sms</string>
  <string>smshinhanansimclick</string>
  <string>supertoss</string>
  <string>tauthlink</string>
  <string>ukbanksmartbanknonloginpay</string>
  <string>upluscorporation</string>
  <string>v3mobileplusweb</string>
  <string>vguardstart</string>
  <string>weixin</string>
  <string>wooripay</string>
</array>

<key>CFBundleURLTypes</key>
<array>
  <dict>
    <key>CFBundleTypeRole</key>
    <string>Editor</string>
    <key>CFBundleURLSchemes</key>
    <array>
      <!-- PaymentRequest.appScheme -->
      <string>yourappscheme</string>
    </array>
  </dict>
</array>
```

Replace `yourappscheme` with your application's custom scheme used for deep-linking.

## 🔧 Usage Example

Here’s a concise example demonstrating how to implement the payment flow:

```dart
import 'package:flutter/material.dart';

import 'package:portone_flutter_v2/portone_flutter_v2.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key, required this.paymentId});
  final String paymentId;

  @override
  Widget build(BuildContext context) {
    final paymentRequest = PaymentRequest(
      storeId: 'store-00000000-0000-0000-0000-000000000000',
      paymentId: paymentId,
      orderName: 'Product Name',
      totalAmount: 10000,
      currency: PaymentCurrency.KRW,
      channelKey: 'channel-key-00000000-0000-0000-0000-000000000000',
      payMethod: PaymentPayMethod.card,
      appScheme: 'yourappscheme',  // Your app's URL scheme
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Make a Payment')),
      body: PortonePayment(
        data: paymentRequest,
        initialChild: const Center(child: CircularProgressIndicator()),
        callback: (PaymentResponse result) {
          // Handle successful payment
          debugPrint('Payment Success: ${result.toJson()}');
          Navigator.pop(context, result);
        },
        onError: (Object? error) {
          // Handle payment error
          debugPrint('Payment Error: $error');
          Navigator.pop(context, null);
        },
      ),
    );
  }
}

```

### Handling the Payment Result:

```dart
// Navigate to payment screen and wait for result
final result = await Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const PaymentScreen()),
);

if (result != null) {
  // Payment succeeded
  final response = result as PaymentResponse;
  debugPrint('Transaction successful: ${response.paymentId}');
} else {
  // Payment failed or was cancelled
  debugPrint('Payment was cancelled or encountered an error.');
}

```

## 🔍 Package Internal Logic

Internally, this package:

- Uses `flutter_inappwebview` to embed PortOne's browser SDK securely.
- Dynamically constructs and loads the payment initiation HTML with user-provided payment details.
- Implements deep-link callbacks using custom URL schemes (`appScheme`) via `app_links`.
- Manages redirects and payment results by intercepting URL navigations and intents, offering a streamlined mobile payment experience.

## 🧩 Supported Payment Methods

The package supports multiple payment methods via PortOne's V2 SDK:

- ✅ Credit/Debit Cards
- ✅ Virtual Account Transfers
- ✅ Mobile Payment Platforms (e.g., Samsung Pay, KakaoPay, Toss, etc.)

Check `PaymentPayMethod` enum in the package for detailed options.

## 📂 Example App

Check the `/example` directory for a fully-functional integration demo with detailed implementation steps.

## 🤝 Contributing

Your contributions can enhance this open-source project. You can help by:

- Reporting issues or suggesting enhancements.
- Improving documentation and clarity.
- Submitting pull requests for bug fixes or additional features.

See the contributing guidelines before opening pull requests.

## 🧪 Testing & Code Coverage

Execute unit tests:

```bash
flutter test --test-randomize-ordering-seed random
```

For detailed coverage reports:

```bash
flutter test --coverage --test-randomize-ordering-seed random
genhtml coverage/lcov.info -o coverage/
open coverage/index.html
```

## 📜 License

MIT License - see [LICENSE][license_link].

---

[flutter_install_link]: https://docs.flutter.dev/get-started/install
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
