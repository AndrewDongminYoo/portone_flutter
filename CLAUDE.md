# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This Flutter package was created to offer seamless integration for PortOne's V2 payment process by implementing a WebView wrapper for the PortOne.browser SDK's `PortOne.requestPayment` method. This project was developed to overcome the limitations of PortOne's outdated Flutter SDK (v1) and its insufficient documentation. **Note:** This package is not directly affiliated with PortOne or endorsed by them—it merely leverages their existing browser SDK to provide a developer-friendly integration solution.

## Build Commands

### Development

- Run dev mode: `flutter run`
- Format code: `dart run import_sorter:main -e && dart format .`
- Fix code: `dart fix --apply`
- Generate code: `dart run build_runner build --delete-conflicting-outputs`
- Bootstrap project: `dart run build_runner build --delete-conflicting-outputs && dart format . && dart run import_sorter:main -e`

### Testing

- Run all tests: `flutter test --test-randomize-ordering-seed random`
- Run single test: `flutter test test/path/to/test_file.dart`
- Generate coverage: `flutter test --coverage --test-randomize-ordering-seed random`
- View coverage report: `genhtml coverage/lcov.info -o coverage/ && open coverage/index.html`

### Maintenance

- Clean & reinstall: `flutter clean && flutter pub get && flutter pub get --directory example/ && dart run build_runner build --delete-conflicting-outputs`
- Upgrade dependencies: `flutter upgrade --force && flutter pub upgrade --major-versions`

## Architecture

### Core Components

**PortonePayment Widget** (`lib/src/portone_payment.dart`)

- Main widget implementing payment flow using `InAppWebView`
- Uses `IndexedStack` to show loading state (`initialChild`) until web view loads
- Intercepts URL navigations to detect payment completion
- Constructs HTML dynamically with PortOne browser SDK

**PaymentRequest Model** (`lib/src/models/payment_request.dart`)

- Data class for payment initialization
- Validates PG company and payment method compatibility in constructor
- Throws `ArgumentError` if `payMethod` is not supported by the chosen `PGCompany`

**PG Company Validation** (`lib/src/helpers/supported_methods.dart`)

- `PaymentSupportedMethods` extension maps each PG company to supported payment methods
- Ensures type-safe payment method selection
- Prevents runtime errors from invalid PG/method combinations

**Bypass Models** (`lib/src/models/bypass/`)

- PG-specific configuration objects for advanced customization
- Each PG company has its own bypass model (e.g., `NiceV2PaymentBypass`, `TosspaymentsPaymentBypass`)

### Payment Flow

1. User creates `PaymentRequest` with required parameters
2. `PortonePayment` widget constructs HTML with PortOne SDK
3. `InAppWebView` loads payment page
4. User completes payment in third-party app/web
5. Redirect URL is intercepted to extract payment result
6. `callback` is invoked with `PaymentResponse` or `onError` is called

## Style Guidelines

- Line length: 80 characters (default line length)
- Use strict-casts, strict-inference, and strict-raw-types
- Import sorting: Use `import_sorter` with emojis (🐦 Flutter, 📦 Package, 🌎 Project)
- Linting: Follows very_good_analysis (main) and flutter_lints (example)
- Types: Use explicitly typed variables and parameters
- Test coverage: Write unit tests for all functionality
- Avoid unused variables, imports, and elements (treated as errors)
- Naming: Use camelCase for variables/methods, PascalCase for classes
- Prefer single quotes for strings
- Require trailing commas for multi-line parameters

## Code Generation

- Uses `json_serializable` with `explicit_to_json: true` and `include_if_null: false`
- Uses `mockito` for generating mocks in tests
- Generated files have `.g.dart` extension and should not be edited manually
- Run `dart run build_runner build --delete-conflicting-outputs` after modifying models
