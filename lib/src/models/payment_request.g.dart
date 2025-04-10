// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentRequest _$PaymentRequestFromJson(Map<String, dynamic> json) => $checkedCreate(
      'PaymentRequest',
      json,
      ($checkedConvert) {
        final val = PaymentRequest(
          storeId: $checkedConvert('storeId', (v) => v! as String),
          paymentId: $checkedConvert('paymentId', (v) => v! as String),
          orderName: $checkedConvert('orderName', (v) => v! as String),
          totalAmount: $checkedConvert('totalAmount', (v) => (v! as num).toInt()),
          currency: $checkedConvert('currency', (v) => $enumDecode(_$PaymentCurrencyEnumMap, v)),
          payMethod: $checkedConvert('payMethod', (v) => $enumDecode(_$PaymentPayMethodEnumMap, v)),
          appScheme: $checkedConvert('appScheme', (v) => v! as String),
          channelKey: $checkedConvert('channelKey', (v) => v as String?),
          channelGroupId: $checkedConvert('channelGroupId', (v) => v as String?),
          taxFreeAmount: $checkedConvert('taxFreeAmount', (v) => (v as num?)?.toInt()),
          vatAmount: $checkedConvert('vatAmount', (v) => (v as num?)?.toInt()),
          customer: $checkedConvert('customer', (v) => v == null ? null : Customer.fromJson(v as Map<String, dynamic>)),
          windowType:
              $checkedConvert('windowType', (v) => v == null ? null : WindowTypes.fromJson(v as Map<String, dynamic>)),
          redirectUrl: $checkedConvert('redirectUrl', (v) => v as String?),
          noticeUrls: $checkedConvert('noticeUrls', (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          confirmUrl: $checkedConvert('confirmUrl', (v) => v as String?),
          isEscrow: $checkedConvert('isEscrow', (v) => v as bool?),
          products: $checkedConvert(
            'products',
            (v) => (v as List<dynamic>?)?.map((e) => ProductDetail.fromJson(e as Map<String, dynamic>)).toList(),
          ),
          locale: $checkedConvert('locale', (v) => $enumDecodeNullable(_$PaymentLocaleEnumMap, v)),
          customData: $checkedConvert(
            'customData',
            (v) => (v as Map<String, dynamic>?)?.map(
              (k, e) => MapEntry(k, e as String),
            ),
          ),
          isCulturalExpense: $checkedConvert('isCulturalExpense', (v) => v as bool?),
          bypass:
              $checkedConvert('bypass', (v) => v == null ? null : PaymentBypass.fromJson(v as Map<String, dynamic>)),
          country: $checkedConvert('country', (v) => $enumDecodeNullable(_$CountryEnumMap, v)),
          productType: $checkedConvert('productType', (v) => $enumDecodeNullable(_$ProductTypeEnumMap, v)),
          expiredTime: $checkedConvert('expiredTime', (v) => v as String?),
          cashReceiptTradeOption:
              $checkedConvert('cashReceiptTradeOption', (v) => $enumDecodeNullable(_$CashReceiptTradeOptionEnumMap, v)),
          offerPeriod:
              $checkedConvert('offerPeriod', (v) => v == null ? null : OfferPeriod.fromJson(v as Map<String, dynamic>)),
          storeDetails: $checkedConvert(
            'storeDetails',
            (v) => v == null ? null : StoreDetails.fromJson(v as Map<String, dynamic>),
          ),
          shippingAddress:
              $checkedConvert('shippingAddress', (v) => v == null ? null : Address.fromJson(v as Map<String, dynamic>)),
          promotionId: $checkedConvert('promotionId', (v) => v as String?),
          popup: $checkedConvert('popup', (v) => v == null ? null : Popup.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$PaymentRequestToJson(PaymentRequest instance) => <String, dynamic>{
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
      if (instance.windowType?.toJson() case final value?) 'windowType': value,
      if (instance.redirectUrl case final value?) 'redirectUrl': value,
      if (instance.noticeUrls case final value?) 'noticeUrls': value,
      if (instance.confirmUrl case final value?) 'confirmUrl': value,
      'appScheme': instance.appScheme,
      if (instance.isEscrow case final value?) 'isEscrow': value,
      if (instance.products?.map((e) => e.toJson()).toList() case final value?) 'products': value,
      if (instance.isCulturalExpense case final value?) 'isCulturalExpense': value,
      if (_$PaymentLocaleEnumMap[instance.locale] case final value?) 'locale': value,
      if (instance.customData case final value?) 'customData': value,
      if (instance.expiredTime case final value?) 'expiredTime': value,
      if (instance.bypass?.toJson() case final value?) 'bypass': value,
      if (_$CountryEnumMap[instance.country] case final value?) 'country': value,
      if (_$ProductTypeEnumMap[instance.productType] case final value?) 'productType': value,
      if (_$CashReceiptTradeOptionEnumMap[instance.cashReceiptTradeOption] case final value?)
        'cashReceiptTradeOption': value,
      if (instance.offerPeriod?.toJson() case final value?) 'offerPeriod': value,
      if (instance.storeDetails?.toJson() case final value?) 'storeDetails': value,
      if (instance.shippingAddress?.toJson() case final value?) 'shippingAddress': value,
      if (instance.promotionId case final value?) 'promotionId': value,
      if (instance.popup?.toJson() case final value?) 'popup': value,
    };

const _$PaymentCurrencyEnumMap = {
  PaymentCurrency.KRW: 'CURRENCY_KRW',
  PaymentCurrency.USD: 'CURRENCY_USD',
  PaymentCurrency.EUR: 'CURRENCY_EUR',
  PaymentCurrency.JPY: 'CURRENCY_JPY',
  PaymentCurrency.CNY: 'CURRENCY_CNY',
  PaymentCurrency.VND: 'CURRENCY_VND',
  PaymentCurrency.THB: 'CURRENCY_THB',
  PaymentCurrency.SGD: 'CURRENCY_SGD',
  PaymentCurrency.AUD: 'CURRENCY_AUD',
  PaymentCurrency.HKD: 'CURRENCY_HKD',
  PaymentCurrency.AED: 'CURRENCY_AED',
  PaymentCurrency.AFN: 'CURRENCY_AFN',
  PaymentCurrency.ALL: 'CURRENCY_ALL',
  PaymentCurrency.AMD: 'CURRENCY_AMD',
  PaymentCurrency.ANG: 'CURRENCY_ANG',
  PaymentCurrency.AOA: 'CURRENCY_AOA',
  PaymentCurrency.ARS: 'CURRENCY_ARS',
  PaymentCurrency.AWG: 'CURRENCY_AWG',
  PaymentCurrency.AZN: 'CURRENCY_AZN',
  PaymentCurrency.BAM: 'CURRENCY_BAM',
  PaymentCurrency.BBD: 'CURRENCY_BBD',
  PaymentCurrency.BDT: 'CURRENCY_BDT',
  PaymentCurrency.BGN: 'CURRENCY_BGN',
  PaymentCurrency.BHD: 'CURRENCY_BHD',
  PaymentCurrency.BIF: 'CURRENCY_BIF',
  PaymentCurrency.BMD: 'CURRENCY_BMD',
  PaymentCurrency.BND: 'CURRENCY_BND',
  PaymentCurrency.BOB: 'CURRENCY_BOB',
  PaymentCurrency.BOV: 'CURRENCY_BOV',
  PaymentCurrency.BRL: 'CURRENCY_BRL',
  PaymentCurrency.BSD: 'CURRENCY_BSD',
  PaymentCurrency.BTN: 'CURRENCY_BTN',
  PaymentCurrency.BWP: 'CURRENCY_BWP',
  PaymentCurrency.BYN: 'CURRENCY_BYN',
  PaymentCurrency.BZD: 'CURRENCY_BZD',
  PaymentCurrency.CAD: 'CURRENCY_CAD',
  PaymentCurrency.CDF: 'CURRENCY_CDF',
  PaymentCurrency.CHE: 'CURRENCY_CHE',
  PaymentCurrency.CHF: 'CURRENCY_CHF',
  PaymentCurrency.CHW: 'CURRENCY_CHW',
  PaymentCurrency.CLF: 'CURRENCY_CLF',
  PaymentCurrency.CLP: 'CURRENCY_CLP',
  PaymentCurrency.COP: 'CURRENCY_COP',
  PaymentCurrency.COU: 'CURRENCY_COU',
  PaymentCurrency.CRC: 'CURRENCY_CRC',
  PaymentCurrency.CUC: 'CURRENCY_CUC',
  PaymentCurrency.CUP: 'CURRENCY_CUP',
  PaymentCurrency.CVE: 'CURRENCY_CVE',
  PaymentCurrency.CZK: 'CURRENCY_CZK',
  PaymentCurrency.DJF: 'CURRENCY_DJF',
  PaymentCurrency.DKK: 'CURRENCY_DKK',
  PaymentCurrency.DOP: 'CURRENCY_DOP',
  PaymentCurrency.DZD: 'CURRENCY_DZD',
  PaymentCurrency.EGP: 'CURRENCY_EGP',
  PaymentCurrency.ERN: 'CURRENCY_ERN',
  PaymentCurrency.ETB: 'CURRENCY_ETB',
  PaymentCurrency.FJD: 'CURRENCY_FJD',
  PaymentCurrency.FKP: 'CURRENCY_FKP',
  PaymentCurrency.GBP: 'CURRENCY_GBP',
  PaymentCurrency.GEL: 'CURRENCY_GEL',
  PaymentCurrency.GHS: 'CURRENCY_GHS',
  PaymentCurrency.GIP: 'CURRENCY_GIP',
  PaymentCurrency.GMD: 'CURRENCY_GMD',
  PaymentCurrency.GNF: 'CURRENCY_GNF',
  PaymentCurrency.GTQ: 'CURRENCY_GTQ',
  PaymentCurrency.GYD: 'CURRENCY_GYD',
  PaymentCurrency.HNL: 'CURRENCY_HNL',
  PaymentCurrency.HRK: 'CURRENCY_HRK',
  PaymentCurrency.HTG: 'CURRENCY_HTG',
  PaymentCurrency.HUF: 'CURRENCY_HUF',
  PaymentCurrency.IDR: 'CURRENCY_IDR',
  PaymentCurrency.ILS: 'CURRENCY_ILS',
  PaymentCurrency.INR: 'CURRENCY_INR',
  PaymentCurrency.IQD: 'CURRENCY_IQD',
  PaymentCurrency.IRR: 'CURRENCY_IRR',
  PaymentCurrency.ISK: 'CURRENCY_ISK',
  PaymentCurrency.JMD: 'CURRENCY_JMD',
  PaymentCurrency.JOD: 'CURRENCY_JOD',
  PaymentCurrency.KES: 'CURRENCY_KES',
  PaymentCurrency.KGS: 'CURRENCY_KGS',
  PaymentCurrency.KHR: 'CURRENCY_KHR',
  PaymentCurrency.KMF: 'CURRENCY_KMF',
  PaymentCurrency.KPW: 'CURRENCY_KPW',
  PaymentCurrency.KWD: 'CURRENCY_KWD',
  PaymentCurrency.KYD: 'CURRENCY_KYD',
  PaymentCurrency.KZT: 'CURRENCY_KZT',
  PaymentCurrency.LAK: 'CURRENCY_LAK',
  PaymentCurrency.LBP: 'CURRENCY_LBP',
  PaymentCurrency.LKR: 'CURRENCY_LKR',
  PaymentCurrency.LRD: 'CURRENCY_LRD',
  PaymentCurrency.LSL: 'CURRENCY_LSL',
  PaymentCurrency.LYD: 'CURRENCY_LYD',
  PaymentCurrency.MAD: 'CURRENCY_MAD',
  PaymentCurrency.MDL: 'CURRENCY_MDL',
  PaymentCurrency.MGA: 'CURRENCY_MGA',
  PaymentCurrency.MKD: 'CURRENCY_MKD',
  PaymentCurrency.MMK: 'CURRENCY_MMK',
  PaymentCurrency.MNT: 'CURRENCY_MNT',
  PaymentCurrency.MOP: 'CURRENCY_MOP',
  PaymentCurrency.MRU: 'CURRENCY_MRU',
  PaymentCurrency.MUR: 'CURRENCY_MUR',
  PaymentCurrency.MVR: 'CURRENCY_MVR',
  PaymentCurrency.MWK: 'CURRENCY_MWK',
  PaymentCurrency.MXN: 'CURRENCY_MXN',
  PaymentCurrency.MXV: 'CURRENCY_MXV',
  PaymentCurrency.MZN: 'CURRENCY_MZN',
  PaymentCurrency.NAD: 'CURRENCY_NAD',
  PaymentCurrency.NGN: 'CURRENCY_NGN',
  PaymentCurrency.NIO: 'CURRENCY_NIO',
  PaymentCurrency.NOK: 'CURRENCY_NOK',
  PaymentCurrency.NPR: 'CURRENCY_NPR',
  PaymentCurrency.NZD: 'CURRENCY_NZD',
  PaymentCurrency.OMR: 'CURRENCY_OMR',
  PaymentCurrency.PAB: 'CURRENCY_PAB',
  PaymentCurrency.PEN: 'CURRENCY_PEN',
  PaymentCurrency.PGK: 'CURRENCY_PGK',
  PaymentCurrency.PHP: 'CURRENCY_PHP',
  PaymentCurrency.PKR: 'CURRENCY_PKR',
  PaymentCurrency.PLN: 'CURRENCY_PLN',
  PaymentCurrency.PYG: 'CURRENCY_PYG',
  PaymentCurrency.QAR: 'CURRENCY_QAR',
  PaymentCurrency.RON: 'CURRENCY_RON',
  PaymentCurrency.RSD: 'CURRENCY_RSD',
  PaymentCurrency.RUB: 'CURRENCY_RUB',
  PaymentCurrency.RWF: 'CURRENCY_RWF',
  PaymentCurrency.SAR: 'CURRENCY_SAR',
  PaymentCurrency.SBD: 'CURRENCY_SBD',
  PaymentCurrency.SCR: 'CURRENCY_SCR',
  PaymentCurrency.SDG: 'CURRENCY_SDG',
  PaymentCurrency.SEK: 'CURRENCY_SEK',
  PaymentCurrency.SHP: 'CURRENCY_SHP',
  PaymentCurrency.SLE: 'CURRENCY_SLE',
  PaymentCurrency.SLL: 'CURRENCY_SLL',
  PaymentCurrency.SOS: 'CURRENCY_SOS',
  PaymentCurrency.SRD: 'CURRENCY_SRD',
  PaymentCurrency.SSP: 'CURRENCY_SSP',
  PaymentCurrency.STN: 'CURRENCY_STN',
  PaymentCurrency.SVC: 'CURRENCY_SVC',
  PaymentCurrency.SYP: 'CURRENCY_SYP',
  PaymentCurrency.SZL: 'CURRENCY_SZL',
  PaymentCurrency.TJS: 'CURRENCY_TJS',
  PaymentCurrency.TMT: 'CURRENCY_TMT',
  PaymentCurrency.TND: 'CURRENCY_TND',
  PaymentCurrency.TOP: 'CURRENCY_TOP',
  PaymentCurrency.TRY: 'CURRENCY_TRY',
  PaymentCurrency.TTD: 'CURRENCY_TTD',
  PaymentCurrency.TWD: 'CURRENCY_TWD',
  PaymentCurrency.TZS: 'CURRENCY_TZS',
  PaymentCurrency.UAH: 'CURRENCY_UAH',
  PaymentCurrency.UGX: 'CURRENCY_UGX',
  PaymentCurrency.USN: 'CURRENCY_USN',
  PaymentCurrency.UYI: 'CURRENCY_UYI',
  PaymentCurrency.UYU: 'CURRENCY_UYU',
  PaymentCurrency.UYW: 'CURRENCY_UYW',
  PaymentCurrency.UZS: 'CURRENCY_UZS',
  PaymentCurrency.VED: 'CURRENCY_VED',
  PaymentCurrency.VES: 'CURRENCY_VES',
  PaymentCurrency.VUV: 'CURRENCY_VUV',
  PaymentCurrency.WST: 'CURRENCY_WST',
  PaymentCurrency.XAF: 'CURRENCY_XAF',
  PaymentCurrency.XAG: 'CURRENCY_XAG',
  PaymentCurrency.XAU: 'CURRENCY_XAU',
  PaymentCurrency.XBA: 'CURRENCY_XBA',
  PaymentCurrency.XBB: 'CURRENCY_XBB',
  PaymentCurrency.XBC: 'CURRENCY_XBC',
  PaymentCurrency.XBD: 'CURRENCY_XBD',
  PaymentCurrency.XCD: 'CURRENCY_XCD',
  PaymentCurrency.XDR: 'CURRENCY_XDR',
  PaymentCurrency.XOF: 'CURRENCY_XOF',
  PaymentCurrency.XPD: 'CURRENCY_XPD',
  PaymentCurrency.XPF: 'CURRENCY_XPF',
  PaymentCurrency.XPT: 'CURRENCY_XPT',
  PaymentCurrency.XSU: 'CURRENCY_XSU',
  PaymentCurrency.XTS: 'CURRENCY_XTS',
  PaymentCurrency.XUA: 'CURRENCY_XUA',
  PaymentCurrency.XXX: 'CURRENCY_XXX',
  PaymentCurrency.YER: 'CURRENCY_YER',
  PaymentCurrency.ZAR: 'CURRENCY_ZAR',
  PaymentCurrency.ZMW: 'CURRENCY_ZMW',
  PaymentCurrency.ZWL: 'CURRENCY_ZWL',
};

const _$PaymentPayMethodEnumMap = {
  PaymentPayMethod.card: 'CARD',
  PaymentPayMethod.virtualAccount: 'VIRTUAL_ACCOUNT',
  PaymentPayMethod.transfer: 'TRANSFER',
  PaymentPayMethod.mobile: 'MOBILE',
  PaymentPayMethod.giftCertificate: 'GIFT_CERTIFICATE',
  PaymentPayMethod.easyPay: 'EASY_PAY',
  PaymentPayMethod.paypal: 'PAYPAL',
};

const _$PaymentLocaleEnumMap = {
  PaymentLocale.koKr: 'KO_KR',
  PaymentLocale.enUs: 'EN_US',
  PaymentLocale.zhCn: 'ZH_CN',
  PaymentLocale.zhTw: 'ZH_TW',
  PaymentLocale.jaJp: 'JA_JP',
  PaymentLocale.ruRu: 'RU_RU',
  PaymentLocale.thTh: 'TH_TH',
  PaymentLocale.viVn: 'VI_VN',
};

const _$CountryEnumMap = {
  Country.AF: 'COUNTRY_AF',
  Country.AX: 'COUNTRY_AX',
  Country.AL: 'COUNTRY_AL',
  Country.DZ: 'COUNTRY_DZ',
  Country.AS: 'COUNTRY_AS',
  Country.AD: 'COUNTRY_AD',
  Country.AO: 'COUNTRY_AO',
  Country.AI: 'COUNTRY_AI',
  Country.AQ: 'COUNTRY_AQ',
  Country.AG: 'COUNTRY_AG',
  Country.AR: 'COUNTRY_AR',
  Country.AM: 'COUNTRY_AM',
  Country.AW: 'COUNTRY_AW',
  Country.AU: 'COUNTRY_AU',
  Country.AT: 'COUNTRY_AT',
  Country.AZ: 'COUNTRY_AZ',
  Country.BH: 'COUNTRY_BH',
  Country.BS: 'COUNTRY_BS',
  Country.BD: 'COUNTRY_BD',
  Country.BB: 'COUNTRY_BB',
  Country.BY: 'COUNTRY_BY',
  Country.BE: 'COUNTRY_BE',
  Country.BZ: 'COUNTRY_BZ',
  Country.BJ: 'COUNTRY_BJ',
  Country.BM: 'COUNTRY_BM',
  Country.BT: 'COUNTRY_BT',
  Country.BO: 'COUNTRY_BO',
  Country.BQ: 'COUNTRY_BQ',
  Country.BA: 'COUNTRY_BA',
  Country.BW: 'COUNTRY_BW',
  Country.BV: 'COUNTRY_BV',
  Country.BR: 'COUNTRY_BR',
  Country.IO: 'COUNTRY_IO',
  Country.BN: 'COUNTRY_BN',
  Country.BG: 'COUNTRY_BG',
  Country.BF: 'COUNTRY_BF',
  Country.BI: 'COUNTRY_BI',
  Country.KH: 'COUNTRY_KH',
  Country.CM: 'COUNTRY_CM',
  Country.CA: 'COUNTRY_CA',
  Country.CV: 'COUNTRY_CV',
  Country.KY: 'COUNTRY_KY',
  Country.CF: 'COUNTRY_CF',
  Country.TD: 'COUNTRY_TD',
  Country.CL: 'COUNTRY_CL',
  Country.CN: 'COUNTRY_CN',
  Country.CX: 'COUNTRY_CX',
  Country.CC: 'COUNTRY_CC',
  Country.CO: 'COUNTRY_CO',
  Country.KM: 'COUNTRY_KM',
  Country.CG: 'COUNTRY_CG',
  Country.CD: 'COUNTRY_CD',
  Country.CK: 'COUNTRY_CK',
  Country.CR: 'COUNTRY_CR',
  Country.CI: 'COUNTRY_CI',
  Country.HR: 'COUNTRY_HR',
  Country.CU: 'COUNTRY_CU',
  Country.CW: 'COUNTRY_CW',
  Country.CY: 'COUNTRY_CY',
  Country.CZ: 'COUNTRY_CZ',
  Country.DK: 'COUNTRY_DK',
  Country.DJ: 'COUNTRY_DJ',
  Country.DM: 'COUNTRY_DM',
  Country.DO: 'COUNTRY_DO',
  Country.EC: 'COUNTRY_EC',
  Country.EG: 'COUNTRY_EG',
  Country.SV: 'COUNTRY_SV',
  Country.GQ: 'COUNTRY_GQ',
  Country.ER: 'COUNTRY_ER',
  Country.EE: 'COUNTRY_EE',
  Country.ET: 'COUNTRY_ET',
  Country.FK: 'COUNTRY_FK',
  Country.FO: 'COUNTRY_FO',
  Country.FJ: 'COUNTRY_FJ',
  Country.FI: 'COUNTRY_FI',
  Country.FR: 'COUNTRY_FR',
  Country.GF: 'COUNTRY_GF',
  Country.PF: 'COUNTRY_PF',
  Country.TF: 'COUNTRY_TF',
  Country.GA: 'COUNTRY_GA',
  Country.GM: 'COUNTRY_GM',
  Country.GE: 'COUNTRY_GE',
  Country.DE: 'COUNTRY_DE',
  Country.GH: 'COUNTRY_GH',
  Country.GI: 'COUNTRY_GI',
  Country.GR: 'COUNTRY_GR',
  Country.GL: 'COUNTRY_GL',
  Country.GD: 'COUNTRY_GD',
  Country.GP: 'COUNTRY_GP',
  Country.GU: 'COUNTRY_GU',
  Country.GT: 'COUNTRY_GT',
  Country.GG: 'COUNTRY_GG',
  Country.GN: 'COUNTRY_GN',
  Country.GW: 'COUNTRY_GW',
  Country.GY: 'COUNTRY_GY',
  Country.HT: 'COUNTRY_HT',
  Country.HM: 'COUNTRY_HM',
  Country.VA: 'COUNTRY_VA',
  Country.HN: 'COUNTRY_HN',
  Country.HK: 'COUNTRY_HK',
  Country.HU: 'COUNTRY_HU',
  Country.IS: 'COUNTRY_IS',
  Country.IN: 'COUNTRY_IN',
  Country.ID: 'COUNTRY_ID',
  Country.IR: 'COUNTRY_IR',
  Country.IQ: 'COUNTRY_IQ',
  Country.IE: 'COUNTRY_IE',
  Country.IM: 'COUNTRY_IM',
  Country.IL: 'COUNTRY_IL',
  Country.IT: 'COUNTRY_IT',
  Country.JM: 'COUNTRY_JM',
  Country.JP: 'COUNTRY_JP',
  Country.JE: 'COUNTRY_JE',
  Country.JO: 'COUNTRY_JO',
  Country.KZ: 'COUNTRY_KZ',
  Country.KE: 'COUNTRY_KE',
  Country.KI: 'COUNTRY_KI',
  Country.KP: 'COUNTRY_KP',
  Country.KR: 'COUNTRY_KR',
  Country.KW: 'COUNTRY_KW',
  Country.KG: 'COUNTRY_KG',
  Country.LA: 'COUNTRY_LA',
  Country.LV: 'COUNTRY_LV',
  Country.LB: 'COUNTRY_LB',
  Country.LS: 'COUNTRY_LS',
  Country.LR: 'COUNTRY_LR',
  Country.LY: 'COUNTRY_LY',
  Country.LI: 'COUNTRY_LI',
  Country.LT: 'COUNTRY_LT',
  Country.LU: 'COUNTRY_LU',
  Country.MO: 'COUNTRY_MO',
  Country.MK: 'COUNTRY_MK',
  Country.MG: 'COUNTRY_MG',
  Country.MW: 'COUNTRY_MW',
  Country.MY: 'COUNTRY_MY',
  Country.MV: 'COUNTRY_MV',
  Country.ML: 'COUNTRY_ML',
  Country.MT: 'COUNTRY_MT',
  Country.MH: 'COUNTRY_MH',
  Country.MQ: 'COUNTRY_MQ',
  Country.MR: 'COUNTRY_MR',
  Country.MU: 'COUNTRY_MU',
  Country.YT: 'COUNTRY_YT',
  Country.MX: 'COUNTRY_MX',
  Country.FM: 'COUNTRY_FM',
  Country.MD: 'COUNTRY_MD',
  Country.MC: 'COUNTRY_MC',
  Country.MN: 'COUNTRY_MN',
  Country.ME: 'COUNTRY_ME',
  Country.MS: 'COUNTRY_MS',
  Country.MA: 'COUNTRY_MA',
  Country.MZ: 'COUNTRY_MZ',
  Country.MM: 'COUNTRY_MM',
  Country.NA: 'COUNTRY_NA',
  Country.NR: 'COUNTRY_NR',
  Country.NP: 'COUNTRY_NP',
  Country.NL: 'COUNTRY_NL',
  Country.NC: 'COUNTRY_NC',
  Country.NZ: 'COUNTRY_NZ',
  Country.NI: 'COUNTRY_NI',
  Country.NE: 'COUNTRY_NE',
  Country.NG: 'COUNTRY_NG',
  Country.NU: 'COUNTRY_NU',
  Country.NF: 'COUNTRY_NF',
  Country.MP: 'COUNTRY_MP',
  Country.NO: 'COUNTRY_NO',
  Country.OM: 'COUNTRY_OM',
  Country.PK: 'COUNTRY_PK',
  Country.PW: 'COUNTRY_PW',
  Country.PS: 'COUNTRY_PS',
  Country.PA: 'COUNTRY_PA',
  Country.PG: 'COUNTRY_PG',
  Country.PY: 'COUNTRY_PY',
  Country.PE: 'COUNTRY_PE',
  Country.PH: 'COUNTRY_PH',
  Country.PN: 'COUNTRY_PN',
  Country.PL: 'COUNTRY_PL',
  Country.PT: 'COUNTRY_PT',
  Country.PR: 'COUNTRY_PR',
  Country.QA: 'COUNTRY_QA',
  Country.RE: 'COUNTRY_RE',
  Country.RO: 'COUNTRY_RO',
  Country.RU: 'COUNTRY_RU',
  Country.RW: 'COUNTRY_RW',
  Country.BL: 'COUNTRY_BL',
  Country.SH: 'COUNTRY_SH',
  Country.KN: 'COUNTRY_KN',
  Country.LC: 'COUNTRY_LC',
  Country.MF: 'COUNTRY_MF',
  Country.PM: 'COUNTRY_PM',
  Country.VC: 'COUNTRY_VC',
  Country.WS: 'COUNTRY_WS',
  Country.SM: 'COUNTRY_SM',
  Country.ST: 'COUNTRY_ST',
  Country.SA: 'COUNTRY_SA',
  Country.SN: 'COUNTRY_SN',
  Country.RS: 'COUNTRY_RS',
  Country.SC: 'COUNTRY_SC',
  Country.SL: 'COUNTRY_SL',
  Country.SG: 'COUNTRY_SG',
  Country.SX: 'COUNTRY_SX',
  Country.SK: 'COUNTRY_SK',
  Country.SI: 'COUNTRY_SI',
  Country.SB: 'COUNTRY_SB',
  Country.SO: 'COUNTRY_SO',
  Country.ZA: 'COUNTRY_ZA',
  Country.GS: 'COUNTRY_GS',
  Country.SS: 'COUNTRY_SS',
  Country.ES: 'COUNTRY_ES',
  Country.LK: 'COUNTRY_LK',
  Country.SD: 'COUNTRY_SD',
  Country.SR: 'COUNTRY_SR',
  Country.SJ: 'COUNTRY_SJ',
  Country.SZ: 'COUNTRY_SZ',
  Country.SE: 'COUNTRY_SE',
  Country.CH: 'COUNTRY_CH',
  Country.SY: 'COUNTRY_SY',
  Country.TW: 'COUNTRY_TW',
  Country.TJ: 'COUNTRY_TJ',
  Country.TZ: 'COUNTRY_TZ',
  Country.TH: 'COUNTRY_TH',
  Country.TL: 'COUNTRY_TL',
  Country.TG: 'COUNTRY_TG',
  Country.TK: 'COUNTRY_TK',
  Country.TO: 'COUNTRY_TO',
  Country.TT: 'COUNTRY_TT',
  Country.TN: 'COUNTRY_TN',
  Country.TR: 'COUNTRY_TR',
  Country.TM: 'COUNTRY_TM',
  Country.TC: 'COUNTRY_TC',
  Country.TV: 'COUNTRY_TV',
  Country.UG: 'COUNTRY_UG',
  Country.UA: 'COUNTRY_UA',
  Country.AE: 'COUNTRY_AE',
  Country.GB: 'COUNTRY_GB',
  Country.US: 'COUNTRY_US',
  Country.UM: 'COUNTRY_UM',
  Country.UY: 'COUNTRY_UY',
  Country.UZ: 'COUNTRY_UZ',
  Country.VU: 'COUNTRY_VU',
  Country.VE: 'COUNTRY_VE',
  Country.VN: 'COUNTRY_VN',
  Country.VG: 'COUNTRY_VG',
  Country.VI: 'COUNTRY_VI',
  Country.WF: 'COUNTRY_WF',
  Country.EH: 'COUNTRY_EH',
  Country.YE: 'COUNTRY_YE',
  Country.ZM: 'COUNTRY_ZM',
  Country.ZW: 'COUNTRY_ZW',
};

const _$ProductTypeEnumMap = {
  ProductType.digital: 'PRODUCT_TYPE_DIGITAL',
  ProductType.real: 'PRODUCT_TYPE_REAL',
};

const _$CashReceiptTradeOptionEnumMap = {
  CashReceiptTradeOption.culture: 'culture',
  CashReceiptTradeOption.general: 'general',
  CashReceiptTradeOption.publicTp: 'publicTp',
};
