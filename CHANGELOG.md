# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.3.0] - 2026-02-18

### Added

- Added **Triple-A** PG company support for cryptocurrency payments
  - New `PGCompany.tripleA` enum variant
  - New `TripleABypass` model with support for payer proof of identity, shipping cost, shipping discount, and tax cost parameters
  - Payment method mapping for Triple-A (supports card payments)
  - Localization strings for Triple-A in English and Korean
- Added `forceRedirect` field to `PaymentRequest` model
  - Allows forcing redirect behavior even when the result would normally be resolved as a promise
  - Useful for consistent payment completion handling in WebView environments
- Added **PayPal V2** bypass support
  - New `PaypalV2Bypass` model with flexible structure for purchase units, payer info, payment source, and additional data
  - Uses `Map<String, dynamic>` for complex nested structures to maintain flexibility with PayPal API
- Added **Iframe** configuration support
  - New `Iframe` model for customizing iframe-based payment windows
  - `dim` property to control payment window background transparency
  - Integrated into `PaymentRequest` for iframe payment window customization

### Changed

- Updated `PaymentBypass` model to include `tripleA` and `paypalV2` fields
- Enhanced documentation alignment with official PortOne V2 browser SDK specification

## [1.2.1] - 2025-10-26

### Changed

- Returned `PortoneLocalizationsEn` and `PortoneLocalizationsKo` as `const` instances to keep the localization delegates immutable and avoid unnecessary allocations when switching locales.
- Adopted Dart's default 80-character `page_width` across `analysis_options.yaml`, `.trunk/trunk.yaml`, the formatter scripts, and CI, then reformatted the package and example sources so they match the new style guide.
- Re-aligned the `json_serializable` builder configuration (including disabling `checked`) and regenerated all model `.g.dart` files to remove redundant runtime guards and shrink the generated code.
- Updated the primary and example dependencies to their latest stable releases (`url_launcher` 6.3.2, `go_router` 16.3.0, `build_runner` 2.10.1, `json_serializable` 6.11.1, `mockito` 5.5.1, `very_good_analysis` 10.0.0) and quieted the upgrade scripts to reduce noise during maintenance.
- Expanded `.pubignore` so IDE metadata, documentation artifacts, helper scripts, and the platform-specific `example` folders are excluded from the published package, keeping the archive leaner.

### Fixed

- Removed the upper bound from the Flutter SDK constraint (`flutter: ">=3.35.1"`) to comply with `dart pub publish` validation and allow future Flutter releases without republishing.

### Removed

- Breaking: `PortonePayment`'s state class is now private (`_PortonePaymentState`), so consuming apps must interact with the widget exclusively through the public `PortonePayment` API and callbacks.

## [1.2.0] - 2025-08-20

### Added

- Introduced a `PlatformUtil` class to provide utility methods for detecting the current target platform (Web, iOS, Android, Windows, macOS, Linux).

### Changed

- Reformatted all Dart files with the new Dart version (3.9.0) format rules.
- Updated SDK (3.9.0) and Flutter version (3.35.1) constraints to reflect current compatibility requirements.
- Updated example app iOS deployment target to iOS 13.

### Fixed

- Improved intent URL handling and error management within the payment flow, adding robust error catching, parsing, and fallback support.
- Ensured app market links (e.g., Google Play) are opened externally on Android for a better user experience.
- Upgrade `very_good_analysis` for better error analyzing

## [1.1.0] - 2025-05-12

### Added

- Added `redirectUrl` property to the `PaymentRequest` model in both the example app and the tests.
- Introduced a `NormalizedUrl` utility class for normalizing deep‐link redirect URLs and custom app schemes, preserving query parameters and fragments and handling null or whitespace inputs.
- Integrated the `NormalizedUrl` utility into `PortonePayment` to generate a normalized `redirectUrl` and `appScheme` for the `InAppWebView`, passing the normalized `redirectUrl` to `paymentData` and adding `appScheme` to `resourceCustomSchemes`.

### Changed

- Removed unused export files (`helpers.dart` and `l10n.dart`); updated the import in `payment_request.dart` to directly import `supported_methods.dart`; and updated the exports in `portone_flutter_v2.dart` to export individual files.
- Simplified the `PopScope` condition in `PortonePaymentState` by using a null‐aware `controller?.canGoBack() ?? false` check.
- Removed the default assignment of `redirectUrl` within the `PortonePayment` widget; `redirectUrl` must now be provided explicitly.

### Fixed

- Handled potential `CheckedFromJsonException` in `PaymentResponse.fromJson` by adding a try‐catch, detailed logging (including incoming parameters, missing keys, and stack trace), improved scheme matching with a `case` pattern, and routed errors through `_handleError`.
- Wrapped `launchUrl` calls in try‐catch, logged any errors, and enforced `LaunchMode.externalApplication` to ensure URLs open in an external application.
- Prevented the `InAppWebView` from loading custom schemes by calling `controller.stopLoading()` and returning `null` in `onLoadResourceWithCustomScheme`.
- Removed a redundant `txId` fix in the Kakao Pay iOS AppLinks callback and enhanced `InAppWebView` settings: enabled `javaScriptCanOpenWindowsAutomatically`, disabled `allowsLinkPreview`, enabled `allowsInlineMediaPlayback`, enabled `useOnLoadResource` and `useOnDownloadStart`, allowed the `intent` scheme, and cleared `contentBlockers`.

### Removed

- Removed the `app_links` dependency and all associated deep‐link handling code from `PortonePayment` (including `AppLinks` instance, stream subscription, and related logic), updated `pubspec.yaml`, `README.md`, and `example/ios/Podfile.lock`.

## [1.0.11] - 2025-05-10

### Changed

- Correct txId parameter for Kakao Pay iOS AppLinks callback - where the `txId` parameter was missing in the AppLinks callback from Kakao Pay on iOS, while the `tid` parameter was present.
- Adding a `try-catch` block around the `PaymentResponse.fromJson` call to catch `CheckedFromJsonException`.

## [1.0.10] - 2025-05-07

### Added

- Introduces the `WebviewErrorUseCase` class to centralize the logic for determining which `WebResourceError` cases can be safely ignored during the PortOne payment flow in a WebView.
  - The `WebviewErrorUseCase.shouldIgnore` method consults a predefined set of rules to determine if an error can be safely ignored based on its type and description. This helps to prevent unnecessary error handling for benign WebView errors that do not affect the payment process, such as cancelled navigations, host lookup failures, and network timeouts.
  - The `onReceivedError` callback in `PortonePaymentState` is updated to use the `WebviewErrorUseCase.shouldIgnore` method to filter out ignorable errors, improving the robustness and clarity of the error handling logic.

## [1.0.9] - 2025-05-03

### Fixed

- Prevents unnecessary error handling for `WebResourceError` types with `UNKNOWN` errors and a description containing 'WebKitErrorDomain'. These errors are often non-critical and can be safely ignored.

## [1.0.8] - 2025-04-30

### Added

- Added a null check for `errorResponse.statusCode` to prevent errors when the status code is not available. If the status code is null, the error is logged and ignored.
- Added a check to ignore HTTP errors that occur on subresource requests (i.e., requests that are not for the main frame document). This prevents unnecessary error handling for resources like images or stylesheets that may fail to load. The URL and status code of the ignored error are logged.

### Changed

- Replaced the default `Container()` in the `IndexedStack` with a `Center` widget containing a `CircularProgressIndicator`. This ensures that a loading indicator is displayed to the user while the WebView is being initialized, providing visual feedback and preventing a perceived delay.

- Introduced a new `_handleSuccess` method to encapsulate the logic for handling successful payment responses. This method calls the `widget.callback` with the `paymentResponse` and clears the `_redirectedUrls` list.

- Replaced direct calls to `widget.callback` with calls to `_handleSuccess` in the app link and URL override handling logic.

### Fixed

- Improved logging messages to provide more context about the type of HTTP error being handled or ignored.
- Ensured that `_redirectedUrls` is cleared in `_handleError` to prevent memory leaks and ensure a clean state for subsequent payment attempts.
- Added a check to ignore errors that occur on subresource requests (i.e., requests that are not for the main frame document). This prevents unnecessary error handling for resources like images or stylesheets that may fail to load.
- Added checks to ignore specific `WebResourceError` types:
  - `UNKNOWN` errors with a description containing 'WebKitErrorDomain' are ignored, as these are often non-critical.
  - `CANCELLED` errors with a description containing 'NSURLErrorDomain' are ignored, as these represent cancelled navigations.

## [1.0.7] - 2025-04-28

### Added

- Introduces the `PortoneErrorHandler` class to provide a flexible way to handle error callbacks.
- Added `_redirectedUrls` to track redirected URLs during WebView navigation. This list is used to generate a stack trace if an error occurs, providing a history of navigation events leading to the error.

### Changed

- Modified the `onError` parameter in the `PortonePayment` constructor to accept a `PortoneErrorHandler` instance.
- Ensured that errors originating from the PortOne SDK, WebView errors, and navigation errors include stack traces when invoking the error callback.
- Introduced the `_handleError` method to centralize error reporting, ensuring that both the error object and a stack trace (either the current stack trace or one generated from `_redirectedUrls`) are consistently passed to the `widget.onError` callback.
- Added null safety check for url in `shouldOverrideUrlLoading` to prevent errors when the URL is null.

## [1.0.6] - 2025-04-27

### Added

- Added `onReceivedError` callback to capture and propagate `WebResourceError` objects via the `widget.onError` handler.
- Added `onReceivedHttpError` callback to capture and propagate `WebResourceResponse` objects via the `widget.onError` handler.

### Changed

- Modified payment data processing to directly include the `appScheme` in the payment data map.
- Removed the conditional logic for setting `retAppScheme` specifically for Toss Payments, as it's no longer required.
- Updated paymentData to be a mutable map to allow modification.

## [1.0.5] - 2025-04-26

- Added `portone_flutter_v2.podspec` for CocoaPods integration.
- Created `PrivacyInfo.xcprivacy` to declare the app's privacy practices.
- Added `ios/Runner.xcodeproj/project.pbxproj` to unmanaged files in `.metadata` to prevent template overwrites.

## [1.0.4] - 2025-04-26

### Added

- Updated the supported payment methods section in the README to reflect the new PG Company specific support.
- Enable the Android plugin so that the app has the schema without modifying the manifest separately, and declare the external app schema (including <queries> for package visibility) in the plugin manifest.

## [1.0.3] - 2025-04-26

### Added

- Added `pg` field to the `PaymentRequest` model, accepting a `PGCompany` enum to specify the payment gateway.
- Updated the `PaymentRequest.fromJson` factory method to handle the new `pg` field.
- Added `PGCompany` enum to represent supported PG companies.
- Added conditional logic to include the `retAppScheme` parameter when using the Tosspayments PG for redirect handling.

### Changed

- Introduced validation in the `PaymentRequest` constructor to ensure the selected `payMethod` is supported by the specified `PGCompany`.
- Throws an `ArgumentError` when an unsupported `payMethod` is provided, with a clear error message listing the supported methods.
- Added unit tests verifying that an `ArgumentError` is thrown for unsupported `payMethod` cases and that object creation succeeds for supported cases.
- Removed `includeToJson: false` annotation from the `pg` field in the `PaymentRequest` model. (If still present, please remove.)

## [1.0.2] - 2025-04-25

### Added

- Added unit tests for most of model classes

### Changed

- Exposes the `PortonePaymentState` class as public and adds comprehensive documentation to facilitate testing and improve understanding of the payment process.
- Sets a default `redirectUrl` in the `paymentData` if it is null.
- Adds `retAppScheme` to the `paymentData` for compatibility with Tosspayments' TossPay, as it requires this parameter.

## [1.0.1] - 2025-04-12

### Added

- Added `PaymentCurrency` enum with support for a wide range of currencies based on ISO 4217.
- Added Missing documentation for all public members to improve code readability and maintainability.

### Changed

- Translated the CHANGELOG from Korean to English.
- Converted enum values in `CashReceiptTradeOption` to snake case for consistency.

## [1.0.0] - 2025-04-11

### Added

- Initial integration of PortOne V2 payment service
- Implementation of payment process using the `PortonePayment` widget
- Support for multiple payment methods (credit card, virtual account, easy-pay, etc.)
- Implementation of payment request model (`PaymentRequest`) and payment response model (`PaymentResponse`)
- Added `PGCompany` enumeration to support various PG companies
- Added `PaymentSupportedMethods` extension for checking supported payment methods per PG company
- Functionality for handling payment callbacks via app schemes
- Option to configure payment window type (iframe, popup)
- Multilingual support (Korean, English)
- Localization support for PG company names
- Support for multiple currencies (according to the ISO 4217 standard)
- Support for country information (according to the ISO 3166-1 alpha-2 standard)
- Added bypass parameter support for each PG company:
  - e.g., KakaoPay, Toss Payments, Toss Pay V2, KSNET, Smartro V2, Naver Pay, etc.
- Support for transmitting additional information such as custom data, store information, and shipping address
- Error handling and logging functionality

### Changed

- Renamed class from `PortOnePayment` to `PortonePayment` for consistency

### Fixed

- Improved handling of intent URL processing
- Improved payment response processing via app scheme
- Modified field type in PaymentRequest model (changed `isEscrow` to nullable)
- Changed `paypal` to `convenienceStore` in the `PaymentPayMethod` enumeration

[1.3.0]: https://github.com/AndrewDongminYoo/portone_flutter/compare/1.2.1...1.3.0
[1.2.1]: https://github.com/AndrewDongminYoo/portone_flutter/compare/v1.2.0...v1.2.1
[1.2.0]: https://github.com/AndrewDongminYoo/portone_flutter/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/AndrewDongminYoo/portone_flutter/compare/v1.0.11...v1.1.0
[1.0.11]: https://github.com/AndrewDongminYoo/portone_flutter/compare/v1.0.10...v1.0.11
[1.0.10]: https://github.com/AndrewDongminYoo/portone_flutter/compare/v1.0.9...v1.0.10
[1.0.9]: https://github.com/AndrewDongminYoo/portone_flutter/compare/v1.0.8...v1.0.9
[1.0.8]: https://github.com/AndrewDongminYoo/portone_flutter/compare/v1.0.7...v1.0.8
[1.0.7]: https://github.com/AndrewDongminYoo/portone_flutter/compare/v1.0.6...v1.0.7
[1.0.6]: https://github.com/AndrewDongminYoo/portone_flutter/compare/v1.0.5...v1.0.6
[1.0.5]: https://github.com/AndrewDongminYoo/portone_flutter/compare/1.0.4...1.0.5
[1.0.4]: https://github.com/AndrewDongminYoo/portone_flutter/compare/1.0.3...1.0.4
[1.0.3]: https://github.com/AndrewDongminYoo/portone_flutter/compare/1.0.2...1.0.3
[1.0.2]: https://github.com/AndrewDongminYoo/portone_flutter/compare/1.0.1...1.0.2
[1.0.1]: https://github.com/AndrewDongminYoo/portone_flutter/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/AndrewDongminYoo/portone_flutter/releases/tag/v1.0.0
