# PortOne Flutter V2

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

A robust Flutter package enabling seamless integration of the PortOne V2 payment gateway into Flutter applications. Designed for simplicity and flexibility, it leverages PortOne's browser SDK, providing an intuitive payment workflow directly within your app using Flutter's InAppWebView.

> **Important Note:** This is a community-maintained package and is not officially affiliated with PortOne.

## 📦 Key Features

- **Integrated Payment Flow:**
  Simplified embedding of PortOne's payment gateway via a customizable WebView interface.

- **Flexible Payment Gateway Selection:**
  Choose your payment gateway (`PGCompany`) when constructing the `PaymentRequest` to tailor behavior and supported methods.

- **PayMethod Validation:**
  Ensures that the selected `payMethod` is supported by the chosen `PGCompany`, throwing a clear error if not.

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
  portone_flutter_v2: ^1.0.5
```

Or via command line:

```bash
flutter pub add portone_flutter_v2
```

### Platform Configuration

#### Android (`AndroidManifest.xml`)

> From version 1.1.0 onwards, the manifest-merger plugin for the Flutter plugin is used, so you don't need to add it manually.

<details>
<summary>Android (<code>AndroidManifest.xml</code>)</summary>

Ensure your app requests internet permission and declares package visibility for payment-related apps:

```xml
<uses-permission android:name="android.permission.INTERNET" />

<queries>
  <!-- EASY_PAY -->
  <package android:name="com.kftc.bankpay.android" /> <!-- 뱅크페이 -->
  <package android:name="com.nhnent.payapp" /> <!-- 페이코 -->
  <package android:name="com.lottemembers.android" /> <!-- LPAY -->
  <package android:name="com.ssg.serviceapp.android.egiftcertificate" /> <!-- SSGPAY -->
  <package android:name="com.inicis.kpay" /> <!-- KPAY -->
  <package android:name="com.tmoney.tmpay" /> <!-- 티머니페이 -->
  <package android:name="viva.republica.toss" /> <!-- 토스페이 -->
  <package android:name="com.samsung.android.spay" /> <!-- 삼성페이 -->
  <package android:name="com.kakao.talk" /> <!-- 카카오페이 -->
  <package android:name="com.nhn.android.search" /> <!-- 네이버 -->
  <package android:name="com.mysmilepay.app" /> <!-- 스마일페이 -->
  <!-- CARD -->
  <package android:name="kvp.jjy.MispAndroid320" /> <!-- ISP페이북 -->
  <package android:name="com.kbcard.cxh.appcard" /> <!-- KBPay -->
  <package android:name="com.kbstar.reboot" /> <!-- liiv -->
  <package android:name="com.kbstar.kbbank" /> <!-- liiv -->
  <package android:name="com.samsung.android.spaylite" /> <!-- 삼성페이니 -->
  <package android:name="com.nhnent.payapp" /> <!-- 페이코 -->
  <package android:name="com.lge.lgpay" /> <!-- 엘지페이 -->
  <package android:name="com.hanaskcard.paycla" /> <!-- 하나 -->
  <package android:name="kr.co.hanamembers.hmscustomer" /> <!-- 하나멤버스 -->
  <package android:name="com.hanaskcard.rocomo.potal" /> <!-- 하나공인인증 -->
  <package android:name="kr.co.citibank.citimobile" /> <!-- 씨티모바일 -->
  <package android:name="com.lcacApp" /> <!-- 롯데 -->
  <package android:name="kr.co.samsungcard.mpocket" /> <!-- 삼성 -->
  <package android:name="com.shcard.smartpay" /> <!-- 신한 -->
  <package android:name="com.shinhancard.smartshinhan" /> <!-- 신한(ARS/일반/smart) -->
  <package android:name="com.shinhan.smartcaremgr" /> <!-- 신한 SOL -->
  <package android:name="com.hyundaicard.appcard" /> <!-- 현대 -->
  <package android:name="nh.smart.nhallonepay" /> <!-- 농협 -->
  <package android:name="nh.smart.card" /> <!-- 농협 -->
  <package android:name="net.ib.android.smcard" /> <!-- 삼성 모니모 -->
  <package android:name="kr.co.citibank.citimobile" /> <!-- 씨티 -->
  <package android:name="com.wooricard.smartapp" /> <!-- 우리WON카드 -->
  <package android:name="com.wooribank.smart.npib" /> <!-- 우리WON뱅킹 -->
  <!-- SECURITY -->
  <package android:name="com.TouchEn.mVaccine.webs" /> <!-- TouchEn -->
  <package android:name="com.ahnlab.v3mobileplus" /> <!-- V3 -->
  <package android:name="kr.co.shiftworks.vguardweb" /> <!-- vguard -->
  <!-- CERTIFICATE -->
  <package android:name="com.hanaskcard.rocomo.potal" /> <!-- 하나 -->
  <package android:name="com.lumensoft.touchenappfree" /> <!-- 현대 -->
  <!-- TRANSFER -->
  <package android:name="com.kftc.bankpay.android" /> <!-- 뱅크페이 -->
  <package android:name="kr.co.kfcc.mobilebank" /> <!-- MG 새마을금고 -->
  <package android:name="com.nh.cashcardapp" /> <!-- 뱅크페이 -->
  <package android:name="com.knb.psb" /> <!-- BNK경남은행 -->
  <package android:name="com.lguplus.paynow" /> <!-- 페이나우 -->
  <package android:name="com.kbankwith.smartbank" /> <!-- 케이뱅크 -->
  <!-- GLOBAL -->
  <package android:name="com.eg.android.AlipayGphone" /> <!-- 페이나우 -->
  <!-- ETC -->
  <package android:name="com.sktelecom.tauth" /> <!-- SKT PASS -->
  <package android:name="com.lguplus.smartotp" /> <!-- LGU PASS -->
  <package android:name="com.kt.ktauth" /> <!-- KT PASS -->
  <package android:name="kr.danal.app.damoum" /> <!-- 다날 다모음 -->
  <package android:name="com.shinhan.sbanking" /> <!-- 신한 SOL뱅크 -->
</queries>
```

</details>

#### iOS (`Info.plist`)

Declare URL schemes for deep linking and payment apps:

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

Here’s how to create a `PaymentRequest` with a specific PG company and pay method:

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
      orderName: 'Flutter Course',
      totalAmount: 15000,
      currency: PaymentCurrency.KRW,
      channelKey: 'channel-key-00000000-0000-0000-0000-000000000000',
      payMethod: PaymentPayMethod.card,
      appScheme: 'yourappscheme',  // Your app's URL scheme
      pg: PGCompany.niceV2, // specify PG company (Optional)
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

### Handling the Payment Result

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

## 🧩 Supported Payment Methods per PG Company

If you try an unsupported combination, e.g., `PGCompany.niceV2` with `PaymentPayMethod.convenienceStore`, the constructor will throw an `ArgumentError`:

```dart
test('throws ArgumentError when pg does not support given payMethod', () {
  expect(
    () => PaymentRequest(
      storeId: 'store-00000000-0000-0000-0000-000000000000',
      paymentId: 'payment-unsupported',
      orderName: 'Unsupported Method',
      totalAmount: 500,
      currency: PaymentCurrency.KRW,
      payMethod: PaymentPayMethod.convenienceStore, // niceV2 에는 없음
      appScheme: 'portoneTest',
      pg: PGCompany.niceV2, // niceV2 의 methods 에 convenienceStore 가 없음
    ),
    throwsA(
      isA<ArgumentError>()
          .having(
            (e) => e.name,
            'error name',
            'payMethod',
          )
          .having(
            (e) => e.message,
            'error message',
            contains('지원되지 않는 결제수단입니다'),
          ),
    ),
  );
});
```

See [`PaymentSupportedMethods`](./lib/src/helpers/supported_methods.dart) extension for details. Example for `niceV2

```dart
...
  List<PaymentPayMethod> get methods {
    return switch (this) {
      // https://developers.portone.io/opi/ko/integration/pg/v2/nice-v2?v=v2
      PGCompany.niceV2 => <PaymentPayMethod>[
          PaymentPayMethod.card,
          PaymentPayMethod.transfer,
          PaymentPayMethod.virtualAccount,
          PaymentPayMethod.mobile,
          PaymentPayMethod.easyPay,
          PaymentPayMethod.giftCertificate,
        ],
...
```

Use this list to verify supported methods before creating a request, or rely on built-in validation.

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
