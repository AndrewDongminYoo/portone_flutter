# Migration Guide: `portone_flutter_v2` → `portone_flutter`

The official [`portone_flutter`](https://pub.dev/packages/portone_flutter) package added V2 support in v1.0.0.

This guide covers the breaking changes you need to address when migrating from `portone_flutter_v2`.

---

## 1. Minimum SDK Requirements

The official package requires higher SDK versions than this package.

|          | `portone_flutter_v2` | `portone_flutter` |
| -------- | -------------------- | ----------------- |
| Dart SDK | `^3.9.0`             | `^3.10.0`         |
| Flutter  | `>=3.35.1`           | `>=3.38.1`        |

Upgrade Flutter before starting the migration:

```bash
flutter upgrade
```

---

## 2. Dependency

**`pubspec.yaml`**

```yaml
# Before
dependencies:
  portone_flutter_v2: ^1.4.0

# After
dependencies:
  portone_flutter: ^1.0.0
```

---

## 3. Import Path

```dart
// Before
import 'package:portone_flutter_v2/portone_flutter_v2.dart';

// After
import 'package:portone_flutter/portone_flutter.dart';
```

The official package exposes V2 symbols from the top-level library. Sub-path imports
(e.g., `portone_flutter/v2/...`) are implementation details — use only the top-level import.

---

## 4. Widget: `PortonePayment`

The widget name is the same, but the error handling API changed.

### Before — two separate callbacks

```dart
PortonePayment(
  data: paymentRequest,
  initialChild: const Center(child: CircularProgressIndicator()),
  callback: (PaymentResponse result) {
    // called on success
    Navigator.pop(context, result);
  },
  onError: (Object? error) {
    // called on failure
    Navigator.pop(context, null);
  },
)
```

### After — single callback, error detected via `code` field

```dart
PortonePayment(
  data: paymentRequest,
  initialChild: const Center(child: CircularProgressIndicator()),
  callback: (PaymentResponse result) {
    if (result.code != null) {
      // Payment failed — result.message contains the human-readable reason
      Navigator.pop(context, null);
    } else {
      // Payment succeeded
      Navigator.pop(context, result);
    }
  },
)
```

> The `onError` parameter no longer exists. All terminal states (success **and** failure)
> are delivered through `callback`.

---

## 5. `PaymentRequest` — field changes

Most fields are identical. The breaking changes are:

### 5a. `pg` field removed — use `channelKey` only

```dart
// Before — PGCompany drove validation; channelKey was optional
PaymentRequest(
  storeId: 'store-...',
  paymentId: paymentId,
  orderName: 'Flutter Course',
  totalAmount: 15000,
  currency: Currency.KRW,
  payMethod: PaymentPayMethod.card,
  appScheme: 'yourappscheme',
  pg: PGCompany.niceV2,           // ← removed
  channelKey: 'channel-key-...',
)

// After — channelKey is the sole identifier for the payment channel
PaymentRequest(
  storeId: 'store-...',
  paymentId: paymentId,
  orderName: 'Flutter Course',
  totalAmount: 15000,
  currency: Currency.KRW,
  payMethod: PaymentPayMethod.CARD,
  appScheme: 'yourappscheme',
  channelKey: 'channel-key-...',  // required in practice
)
```

`PGCompany` no longer exists in the official package. Client-side PG/payMethod compatibility
validation (which this package performed in the `PaymentRequest` constructor) is not present
in the official package.

### 5b. `PaymentPayMethod` enum values: camelCase → SCREAMING_SNAKE_CASE

The enum name is the same, but the member names changed to match the PortOne JS SDK conventions.

| `portone_flutter_v2`                | `portone_flutter`                    |
| ----------------------------------- | ------------------------------------ |
| `PaymentPayMethod.card`             | `PaymentPayMethod.CARD`              |
| `PaymentPayMethod.virtualAccount`   | `PaymentPayMethod.VIRTUAL_ACCOUNT`   |
| `PaymentPayMethod.transfer`         | `PaymentPayMethod.TRANSFER`          |
| `PaymentPayMethod.mobile`           | `PaymentPayMethod.MOBILE`            |
| `PaymentPayMethod.giftCertificate`  | `PaymentPayMethod.GIFT_CERTIFICATE`  |
| `PaymentPayMethod.easyPay`          | `PaymentPayMethod.EASY_PAY`          |
| `PaymentPayMethod.convenienceStore` | `PaymentPayMethod.CONVENIENCE_STORE` |

---

## 6. `PaymentResponse` — what stays the same

The response shape is compatible. Fields you likely use are unchanged:

| Field             | Notes                                                       |
| ----------------- | ----------------------------------------------------------- |
| `paymentId`       | Unchanged                                                   |
| `transactionType` | Unchanged                                                   |
| `transactionId`   | Unchanged (JSON key `txId`)                                 |
| `code`            | Unchanged — `null` on success, error code string on failure |
| `message`         | Unchanged                                                   |
| `pgCode`          | Unchanged                                                   |
| `pgMessage`       | Unchanged                                                   |

---

## 7. Platform configuration

The Android `<queries>` and iOS `LSApplicationQueriesSchemes` entries are identical.
No changes needed to `AndroidManifest.xml` or `Info.plist`.

---

## 8. Quick checklist

- [ ] Upgrade Flutter to ≥3.38.1 and Dart to ≥3.10.0
- [ ] Replace `portone_flutter_v2` with `portone_flutter` in `pubspec.yaml`, then `flutter pub get`
- [ ] Update all import statements
- [ ] Replace `PaymentCurrency.*` with `Currency.*`
- [ ] Replace `PaymentPayMethod.<camelCase>` with `PaymentPayMethod.<SCREAMING_SNAKE_CASE>`
- [ ] Remove `pg: PGCompany.*` arguments from every `PaymentRequest` constructor call
- [ ] Remove `onError:` from every `PortonePayment` widget; merge error handling into `callback:`
