# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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

[1.0.0]: https://github.com/AndrewDongminYoo/portone_flutter/releases/tag/v1.0.0
[1.0.1]: https://github.com/AndrewDongminYoo/portone_flutter/compare/v1.0.0...v1.0.1
