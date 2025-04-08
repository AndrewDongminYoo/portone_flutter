// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentRequest _$PaymentRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PaymentRequest',
      json,
      ($checkedConvert) {
        final val = PaymentRequest(
          storeId: $checkedConvert('storeId', (v) => v! as String),
          paymentId: $checkedConvert('paymentId', (v) => v! as String),
          orderName: $checkedConvert('orderName', (v) => v! as String),
          totalAmount:
              $checkedConvert('totalAmount', (v) => (v! as num).toInt()),
          currency: $checkedConvert(
            'currency',
            (v) => $enumDecode(_$PaymentCurrencyEnumMap, v),
          ),
          payMethod: $checkedConvert(
            'payMethod',
            (v) => $enumDecode(_$PaymentPayMethodEnumMap, v),
          ),
          channelKey: $checkedConvert('channelKey', (v) => v as String?),
          channelGroupId:
              $checkedConvert('channelGroupId', (v) => v as String?),
          taxFreeAmount:
              $checkedConvert('taxFreeAmount', (v) => (v as num?)?.toInt()),
          vatAmount: $checkedConvert('vatAmount', (v) => (v as num?)?.toInt()),
          customer: $checkedConvert(
            'customer',
            (v) =>
                v == null ? null : Customer.fromJson(v as Map<String, dynamic>),
          ),
          customerId: $checkedConvert('customerId', (v) => v as String?),
          fullName: $checkedConvert('fullName', (v) => v as String?),
          firstName: $checkedConvert('firstName', (v) => v as String?),
          lastName: $checkedConvert('lastName', (v) => v as String?),
          phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          address: $checkedConvert(
            'address',
            (v) =>
                v == null ? null : Address.fromJson(v as Map<String, dynamic>),
          ),
          mobile: $checkedConvert(
            'mobile',
            (v) => $enumDecodeNullable(_$WindowTypeEnumMap, v),
          ),
          redirectUrl: $checkedConvert('redirectUrl', (v) => v as String?),
          noticeUrls: $checkedConvert(
            'noticeUrls',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          confirmUrl: $checkedConvert('confirmUrl', (v) => v as String?),
          appScheme: $checkedConvert('appScheme', (v) => v as String?),
          isEscrow: $checkedConvert('isEscrow', (v) => v as bool? ?? false),
          products: $checkedConvert(
            'products',
            (v) => (v as List<dynamic>?)
                ?.map(
                  (e) => ProductDetail.fromJson(e as Map<String, dynamic>),
                )
                .toList(),
          ),
          locale: $checkedConvert(
            'locale',
            (v) => $enumDecodeNullable(_$PaymentLocaleEnumMap, v),
          ),
          customData:
              $checkedConvert('customData', (v) => v as Map<String, dynamic>?),
          expiredTime: $checkedConvert('expiredTime', (v) => v as String?),
          cashReceiptTradeOption: $checkedConvert(
            'cashReceiptTradeOption',
            (v) => $enumDecodeNullable(_$CashReceiptTradeOptionEnumMap, v),
          ),
          offerPeriod: $checkedConvert(
            'offerPeriod',
            (v) => v == null
                ? null
                : OfferPeriod.fromJson(v as Map<String, dynamic>),
          ),
          kakaopay: $checkedConvert(
            'kakaopay',
            (v) => v == null
                ? null
                : KakaopayPaymentBypass.fromJson(v as Map<String, dynamic>),
          ),
          tosspayments: $checkedConvert(
            'tosspayments',
            (v) => v == null
                ? null
                : TosspaymentsPaymentBypass.fromJson(
                    v as Map<String, dynamic>,
                  ),
          ),
          tosspayV2: $checkedConvert(
            'tosspay_v2',
            (v) => v == null
                ? null
                : TosspayV2PaymentBypass.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'tosspayV2': 'tosspay_v2'},
    );

Map<String, dynamic> _$PaymentRequestToJson(PaymentRequest instance) =>
    <String, dynamic>{
      'storeId': instance.storeId,
      'paymentId': instance.paymentId,
      'orderName': instance.orderName,
      'totalAmount': instance.totalAmount,
      'currency': _$PaymentCurrencyEnumMap[instance.currency],
      'payMethod': _$PaymentPayMethodEnumMap[instance.payMethod],
      if (instance.channelKey case final value?) 'channelKey': value,
      if (instance.channelGroupId case final value?) 'channelGroupId': value,
      if (instance.taxFreeAmount case final value?) 'taxFreeAmount': value,
      if (instance.vatAmount case final value?) 'vatAmount': value,
      if (instance.customer?.toJson() case final value?) 'customer': value,
      if (instance.customerId case final value?) 'customerId': value,
      if (instance.fullName case final value?) 'fullName': value,
      if (instance.firstName case final value?) 'firstName': value,
      if (instance.lastName case final value?) 'lastName': value,
      if (instance.phoneNumber case final value?) 'phoneNumber': value,
      if (instance.email case final value?) 'email': value,
      if (instance.address?.toJson() case final value?) 'address': value,
      if (_$WindowTypeEnumMap[instance.mobile] case final value?)
        'mobile': value,
      if (instance.redirectUrl case final value?) 'redirectUrl': value,
      if (instance.noticeUrls case final value?) 'noticeUrls': value,
      if (instance.confirmUrl case final value?) 'confirmUrl': value,
      if (instance.appScheme case final value?) 'appScheme': value,
      'isEscrow': instance.isEscrow,
      if (instance.products?.map((e) => e.toJson()).toList() case final value?)
        'products': value,
      if (_$PaymentLocaleEnumMap[instance.locale] case final value?)
        'locale': value,
      if (instance.customData case final value?) 'customData': value,
      if (instance.expiredTime case final value?) 'expiredTime': value,
      if (_$CashReceiptTradeOptionEnumMap[instance.cashReceiptTradeOption]
          case final value?)
        'cashReceiptTradeOption': value,
      if (instance.offerPeriod?.toJson() case final value?)
        'offerPeriod': value,
      if (instance.kakaopay?.toJson() case final value?) 'kakaopay': value,
      if (instance.tosspayments?.toJson() case final value?)
        'tosspayments': value,
      if (instance.tosspayV2?.toJson() case final value?) 'tosspay_v2': value,
    };

const _$PaymentCurrencyEnumMap = {
  PaymentCurrency.KRW: 'CURRENCY_KRW',
  PaymentCurrency.USD: 'CURRENCY_USD',
  PaymentCurrency.EUR: 'CURRENCY_EUR',
  PaymentCurrency.JPY: 'CURRENCY_JPY',
  PaymentCurrency.CNY: 'CURRENCY_CNY',
};

const _$PaymentPayMethodEnumMap = {
  PaymentPayMethod.CARD: 'CARD',
  PaymentPayMethod.VIRTUAL_ACCOUNT: 'VIRTUAL_ACCOUNT',
  PaymentPayMethod.TRANSFER: 'TRANSFER',
  PaymentPayMethod.MOBILE: 'MOBILE',
  PaymentPayMethod.GIFT_CERTIFICATE: 'GIFT_CERTIFICATE',
  PaymentPayMethod.EASY_PAY: 'EASY_PAY',
  PaymentPayMethod.PAYPAL: 'PAYPAL',
};

const _$WindowTypeEnumMap = {
  WindowType.IFRAME: 'IFRAME',
  WindowType.POPUP: 'POPUP',
  WindowType.REDIRECTION: 'REDIRECTION',
  WindowType.UI: 'UI',
};

const _$PaymentLocaleEnumMap = {
  PaymentLocale.KO_KR: 'KO_KR',
  PaymentLocale.EN_US: 'EN_US',
};

const _$CashReceiptTradeOptionEnumMap = {
  CashReceiptTradeOption.CULTURE: 'CULTURE',
  CashReceiptTradeOption.GENERAL: 'GENERAL',
  CashReceiptTradeOption.PUBLIC_TP: 'PUBLIC_TP',
};
