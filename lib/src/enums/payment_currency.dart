// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// ISO 4217 기반의 결제 통화 enum입니다.
///
/// ISO 4217은 각 통화에 대해 고유한 3자리 알파벳 코드(예: KRW, USD, EUR 등)를 부여하며,
/// 은행 시스템, 결제 게이트웨이, 금융 API 등에서 사용됩니다.
///
/// 직렬화 시에는 `value` 필드를 사용하여 문자열 값을 제공합니다.
///
/// 참고: [ISO 4217 위키백과](https://en.wikipedia.org/wiki/ISO_4217)
@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum PaymentCurrency {
  /// 대한민국 원 (South Korean Won)
  KRW('CURRENCY_KRW'),

  /// 미국 달러 (US Dollar)
  USD('CURRENCY_USD'),

  /// 유로 (Euro)
  EUR('CURRENCY_EUR'),

  /// 일본 엔 (Japanese Yen)
  JPY('CURRENCY_JPY'),

  /// 중국 위안 (Chinese Yuan)
  CNY('CURRENCY_CNY'),

  /// 베트남 동 (Vietnamese Dong)
  VND('CURRENCY_VND'),

  /// 태국 바트 (Thai Baht)
  THB('CURRENCY_THB'),

  /// 싱가포르 달러 (Singapore Dollar)
  SGD('CURRENCY_SGD'),

  /// 호주 달러 (Australian Dollar)
  AUD('CURRENCY_AUD'),

  /// 홍콩 달러 (Hong Kong Dollar)
  HKD('CURRENCY_HKD'),

  /// 아랍에미리트 디르함 (UAE Dirham)
  AED('CURRENCY_AED'),

  /// 아프가니스탄 아프가니 (Afghan Afghani)
  AFN('CURRENCY_AFN'),

  /// 알바니아 레크 (Albanian Lek)
  ALL('CURRENCY_ALL'),

  /// 아르메니아 드람 (Armenian Dram)
  AMD('CURRENCY_AMD'),

  /// 네덜란드령 안틸레스 길더 (Netherlands Antillean Guilder)
  ANG('CURRENCY_ANG'),

  /// 앙골라 콴자 (Angolan Kwanza)
  AOA('CURRENCY_AOA'),

  /// 아르헨티나 페소 (Argentine Peso)
  ARS('CURRENCY_ARS'),

  /// 아루바 플로린 (Aruban Florin)
  AWG('CURRENCY_AWG'),

  /// 아제르바이잔 마나트 (Azerbaijani Manat)
  AZN('CURRENCY_AZN'),

  /// 보스니아-헤르체고비나 태환 마르크 (Bosnia and Herzegovina Convertible Mark)
  BAM('CURRENCY_BAM'),

  /// 바베이도스 달러 (Barbados Dollar)
  BBD('CURRENCY_BBD'),

  /// 방글라데시 타카 (Bangladeshi Taka)
  BDT('CURRENCY_BDT'),

  /// 불가리아 레프 (Bulgarian Lev)
  BGN('CURRENCY_BGN'),

  /// 바레인 디나르 (Bahraini Dinar)
  BHD('CURRENCY_BHD'),

  /// 부룬디 프랑 (Burundian Franc)
  BIF('CURRENCY_BIF'),

  /// 버뮤다 달러 (Bermudian Dollar)
  BMD('CURRENCY_BMD'),

  /// 브루나이 달러 (Brunei Dollar)
  BND('CURRENCY_BND'),

  /// 볼리비아노 (Bolivian Boliviano)
  BOB('CURRENCY_BOB'),

  /// 볼리비아 MVDOL (Bolivian MVDOL)
  BOV('CURRENCY_BOV'),

  /// 브라질 헤알 (Brazilian Real)
  BRL('CURRENCY_BRL'),

  /// 바하마 달러 (Bahamian Dollar)
  BSD('CURRENCY_BSD'),

  /// 부탄 눌트럼 (Bhutanese Ngultrum)
  BTN('CURRENCY_BTN'),

  /// 보츠와나 풀라 (Botswana Pula)
  BWP('CURRENCY_BWP'),

  /// 벨라루스 루블 (Belarusian Ruble)
  BYN('CURRENCY_BYN'),

  /// 벨리즈 달러 (Belize Dollar)
  BZD('CURRENCY_BZD'),

  /// 캐나다 달러 (Canadian Dollar)
  CAD('CURRENCY_CAD'),

  /// 콩고 프랑 (Congolese Franc)
  CDF('CURRENCY_CDF'),

  /// WIR 유로 (WIR Euro)
  CHE('CURRENCY_CHE'),

  /// 스위스 프랑 (Swiss Franc)
  CHF('CURRENCY_CHF'),

  /// WIR 프랑 (WIR Franc)
  CHW('CURRENCY_CHW'),

  /// 칠레 단위 (Unidad de Fomento)
  CLF('CURRENCY_CLF'),

  /// 칠레 페소 (Chilean Peso)
  CLP('CURRENCY_CLP'),

  /// 콜롬비아 페소 (Colombian Peso)
  COP('CURRENCY_COP'),

  /// 콜롬비아 단위 (Unidad de Valor Real)
  COU('CURRENCY_COU'),

  /// 코스타리카 콜론 (Costa Rican Colón)
  CRC('CURRENCY_CRC'),

  /// 쿠바 태환 페소 (Cuban Convertible Peso)
  CUC('CURRENCY_CUC'),

  /// 쿠바 페소 (Cuban Peso)
  CUP('CURRENCY_CUP'),

  /// 카보베르데 에스쿠도 (Cape Verdean Escudo)
  CVE('CURRENCY_CVE'),

  /// 체코 코루나 (Czech Koruna)
  CZK('CURRENCY_CZK'),

  /// 지부티 프랑 (Djiboutian Franc)
  DJF('CURRENCY_DJF'),

  /// 덴마크 크로네 (Danish Krone)
  DKK('CURRENCY_DKK'),

  /// 도미니카 페소 (Dominican Peso)
  DOP('CURRENCY_DOP'),

  /// 알제리 디나르 (Algerian Dinar)
  DZD('CURRENCY_DZD'),

  /// 이집트 파운드 (Egyptian Pound)
  EGP('CURRENCY_EGP'),

  /// 에리트레아 낙파 (Eritrean Nakfa)
  ERN('CURRENCY_ERN'),

  /// 에티오피아 비르 (Ethiopian Birr)
  ETB('CURRENCY_ETB'),

  /// 피지 달러 (Fijian Dollar)
  FJD('CURRENCY_FJD'),

  /// 포클랜드 제도 파운드 (Falkland Islands Pound)
  FKP('CURRENCY_FKP'),

  /// 영국 파운드 스털링 (Pound Sterling)
  GBP('CURRENCY_GBP'),

  /// 조지아 라리 (Georgian Lari)
  GEL('CURRENCY_GEL'),

  /// 가나 세디 (Ghanaian Cedi)
  GHS('CURRENCY_GHS'),

  /// 지브롤터 파운드 (Gibraltar Pound)
  GIP('CURRENCY_GIP'),

  /// 감비아 달라시 (Gambian Dalasi)
  GMD('CURRENCY_GMD'),

  /// 기니 프랑 (Guinean Franc)
  GNF('CURRENCY_GNF'),

  /// 과테말라 케찰 (Guatemalan Quetzal)
  GTQ('CURRENCY_GTQ'),

  /// 가이아나 달러 (Guyanese Dollar)
  GYD('CURRENCY_GYD'),

  /// 온두라스 렘피라 (Honduran Lempira)
  HNL('CURRENCY_HNL'),

  /// 크로아티아 쿠나 (Croatian Kuna)
  HRK('CURRENCY_HRK'),

  /// 아이티 구르드 (Haitian Gourde)
  HTG('CURRENCY_HTG'),

  /// 헝가리 포린트 (Hungarian Forint)
  HUF('CURRENCY_HUF'),

  /// 인도네시아 루피아 (Indonesian Rupiah)
  IDR('CURRENCY_IDR'),

  /// 이스라엘 신 셰켈 (Israeli New Shekel)
  ILS('CURRENCY_ILS'),

  /// 인도 루피 (Indian Rupee)
  INR('CURRENCY_INR'),

  /// 이라크 디나르 (Iraqi Dinar)
  IQD('CURRENCY_IQD'),

  /// 이란 리얄 (Iranian Rial)
  IRR('CURRENCY_IRR'),

  /// 아이슬란드 크로나 (Icelandic Króna)
  ISK('CURRENCY_ISK'),

  /// 자메이카 달러 (Jamaican Dollar)
  JMD('CURRENCY_JMD'),

  /// 요르단 디나르 (Jordanian Dinar)
  JOD('CURRENCY_JOD'),

  /// 케냐 실링 (Kenyan Shilling)
  KES('CURRENCY_KES'),

  /// 키르기스스탄 솜 (Kyrgyzstani Som)
  KGS('CURRENCY_KGS'),

  /// 캄보디아 리엘 (Cambodian Riel)
  KHR('CURRENCY_KHR'),

  /// 코모로 프랑 (Comorian Franc)
  KMF('CURRENCY_KMF'),

  /// 북한 원 (North Korean Won)
  KPW('CURRENCY_KPW'),

  /// 쿠웨이트 디나르 (Kuwaiti Dinar)
  KWD('CURRENCY_KWD'),

  /// 케이맨 제도 달러 (Cayman Islands Dollar)
  KYD('CURRENCY_KYD'),

  /// 카자흐스탄 텡게 (Kazakhstani Tenge)
  KZT('CURRENCY_KZT'),

  /// 라오스 킵 (Lao Kip)
  LAK('CURRENCY_LAK'),

  /// 레바논 파운드 (Lebanese Pound)
  LBP('CURRENCY_LBP'),

  /// 스리랑카 루피 (Sri Lankan Rupee)
  LKR('CURRENCY_LKR'),

  /// 라이베리아 달러 (Liberian Dollar)
  LRD('CURRENCY_LRD'),

  /// 레소토 로티 (Lesotho Loti)
  LSL('CURRENCY_LSL'),

  /// 리비아 디나르 (Libyan Dinar)
  LYD('CURRENCY_LYD'),

  /// 모로코 디르함 (Moroccan Dirham)
  MAD('CURRENCY_MAD'),

  /// 몰도바 레우 (Moldovan Leu)
  MDL('CURRENCY_MDL'),

  /// 마다가스카르 아리아리 (Malagasy Ariary)
  MGA('CURRENCY_MGA'),

  /// 북마케도니아 디나르 (Macedonian Denar)
  MKD('CURRENCY_MKD'),

  /// 미얀마 짯 (Myanmar Kyat)
  MMK('CURRENCY_MMK'),

  /// 몽골 투그릭 (Mongolian Tögrög)
  MNT('CURRENCY_MNT'),

  /// 마카오 파타카 (Macanese Pataca)
  MOP('CURRENCY_MOP'),

  /// 모리타니 우기야 (Mauritanian Ouguiya)
  MRU('CURRENCY_MRU'),

  /// 모리셔스 루피 (Mauritian Rupee)
  MUR('CURRENCY_MUR'),

  /// 몰디브 루피아 (Maldivian Rufiyaa)
  MVR('CURRENCY_MVR'),

  /// 말라위 콰차 (Malawian Kwacha)
  MWK('CURRENCY_MWK'),

  /// 멕시코 페소 (Mexican Peso)
  MXN('CURRENCY_MXN'),

  /// 멕시코 투자 단위 (Mexican Unidad de Inversion)
  MXV('CURRENCY_MXV'),

  /// 모잠비크 메티칼 (Mozambican Metical)
  MZN('CURRENCY_MZN'),

  /// 나미비아 달러 (Namibian Dollar)
  NAD('CURRENCY_NAD'),

  /// 나이지리아 나이라 (Nigerian Naira)
  NGN('CURRENCY_NGN'),

  /// 니카라과 코르도바 (Nicaraguan Córdoba)
  NIO('CURRENCY_NIO'),

  /// 노르웨이 크로네 (Norwegian Krone)
  NOK('CURRENCY_NOK'),

  /// 네팔 루피 (Nepalese Rupee)
  NPR('CURRENCY_NPR'),

  /// 뉴질랜드 달러 (New Zealand Dollar)
  NZD('CURRENCY_NZD'),

  /// 오만 리얄 (Omani Rial)
  OMR('CURRENCY_OMR'),

  /// 파나마 발보아 (Panamanian Balboa)
  PAB('CURRENCY_PAB'),

  /// 페루 솔 (Peruvian Sol)
  PEN('CURRENCY_PEN'),

  /// 파푸아뉴기니 키나 (Papua New Guinean Kina)
  PGK('CURRENCY_PGK'),

  /// 필리핀 페소 (Philippine Peso)
  PHP('CURRENCY_PHP'),

  /// 파키스탄 루피 (Pakistani Rupee)
  PKR('CURRENCY_PKR'),

  /// 폴란드 즈워티 (Polish Zloty)
  PLN('CURRENCY_PLN'),

  /// 파라과이 과라니 (Paraguayan Guarani)
  PYG('CURRENCY_PYG'),

  /// 카타르 리얄 (Qatari Riyal)
  QAR('CURRENCY_QAR'),

  /// 루마니아 레우 (Romanian Leu)
  RON('CURRENCY_RON'),

  /// 세르비아 디나르 (Serbian Dinar)
  RSD('CURRENCY_RSD'),

  /// 러시아 루블 (Russian Ruble)
  RUB('CURRENCY_RUB'),

  /// 르완다 프랑 (Rwandan Franc)
  RWF('CURRENCY_RWF'),

  /// 사우디 리얄 (Saudi Riyal)
  SAR('CURRENCY_SAR'),

  /// 솔로몬 제도 달러 (Solomon Islands Dollar)
  SBD('CURRENCY_SBD'),

  /// 세이셸 루피 (Seychellois Rupee)
  SCR('CURRENCY_SCR'),

  /// 수단 파운드 (Sudanese Pound)
  SDG('CURRENCY_SDG'),

  /// 스웨덴 크로나 (Swedish Krona)
  SEK('CURRENCY_SEK'),

  /// 세인트헬레나 파운드 (Saint Helena Pound)
  SHP('CURRENCY_SHP'),

  /// 시에라리온 리온 (Sierra Leonean Leone)
  SLE('CURRENCY_SLE'),

  /// 구 시에라리온 리온 (Sierra Leonean Leone – Old)
  SLL('CURRENCY_SLL'),

  /// 소말리아 실링 (Somali Shilling)
  SOS('CURRENCY_SOS'),

  /// 수리남 달러 (Surinamese Dollar)
  SRD('CURRENCY_SRD'),

  /// 남수단 파운드 (South Sudanese Pound)
  SSP('CURRENCY_SSP'),

  /// 상투메 프린시페 도브라 (São Tomé and Príncipe Dobra)
  STN('CURRENCY_STN'),

  /// 엘살바도르 콜론 (Salvadoran Colón)
  SVC('CURRENCY_SVC'),

  /// 시리아 파운드 (Syrian Pound)
  SYP('CURRENCY_SYP'),

  /// 에스와티니 릴랑게니 (Swazi Lilangeni)
  SZL('CURRENCY_SZL'),

  /// 타지키스탄 소모니 (Tajikistani Somoni)
  TJS('CURRENCY_TJS'),

  /// 투르크메니스탄 마나트 (Turkmenistani Manat)
  TMT('CURRENCY_TMT'),

  /// 튀니지 디나르 (Tunisian Dinar)
  TND('CURRENCY_TND'),

  /// 통가 파앙가 (Tongan Paʻanga)
  TOP('CURRENCY_TOP'),

  /// 튀르키예 리라 (Turkish Lira)
  TRY('CURRENCY_TRY'),

  /// 트리니다드 토바고 달러 (Trinidad and Tobago Dollar)
  TTD('CURRENCY_TTD'),

  /// 신 타이완 달러 (New Taiwan Dollar)
  TWD('CURRENCY_TWD'),

  /// 탄자니아 실링 (Tanzanian Shilling)
  TZS('CURRENCY_TZS'),

  /// 우크라이나 흐리브냐 (Ukrainian Hryvnia)
  UAH('CURRENCY_UAH'),

  /// 우간다 실링 (Ugandan Shilling)
  UGX('CURRENCY_UGX'),

  /// 미국 달러 (다음날 결제용) (US Dollar – Next Day)
  USN('CURRENCY_USN'),

  /// 우루과이 인플레이션 지수 연동 통화 (Uruguay Peso en Unidades Indexadas)
  UYI('CURRENCY_UYI'),

  /// 우루과이 페소 (Uruguayan Peso)
  UYU('CURRENCY_UYU'),

  /// 우루과이 노임 단위 (Uruguayan Nominal Wage Index Unit)
  UYW('CURRENCY_UYW'),

  /// 우즈베키스탄 숨 (Uzbekistani Soʻm)
  UZS('CURRENCY_UZS'),

  /// 베네수엘라 디지털 볼리바르 (Venezuelan Digital Bolívar)
  VED('CURRENCY_VED'),

  /// 베네수엘라 소버린 볼리바르 (Venezuelan Sovereign Bolívar)
  VES('CURRENCY_VES'),

  /// 바누아투 바투 (Vanuatu Vatu)
  VUV('CURRENCY_VUV'),

  /// 사모아 탈라 (Samoan Tālā)
  WST('CURRENCY_WST'),

  /// 중앙아프리카 CFA 프랑 (Central African CFA Franc)
  XAF('CURRENCY_XAF'),

  /// 은 가격 단위 (Silver – troy ounce)
  XAG('CURRENCY_XAG'),

  /// 금 가격 단위 (Gold – troy ounce)
  XAU('CURRENCY_XAU'),

  /// 유럽 혼합 통화 단위 (European Composite Unit)
  XBA('CURRENCY_XBA'),

  /// 유럽 통화 단위 (European Monetary Unit)
  XBB('CURRENCY_XBB'),

  /// 유럽 회계 단위 1 (European Unit of Account 9)
  XBC('CURRENCY_XBC'),

  /// 유럽 회계 단위 2 (European Unit of Account 17)
  XBD('CURRENCY_XBD'),

  /// 동카리브 달러 (East Caribbean Dollar)
  XCD('CURRENCY_XCD'),

  /// IMF 특별인출권 (Special Drawing Rights – SDR)
  XDR('CURRENCY_XDR'),

  /// 서아프리카 CFA 프랑 (West African CFA Franc)
  XOF('CURRENCY_XOF'),

  /// 팔라듐 (Palladium)
  XPD('CURRENCY_XPD'),

  /// 프랑스령 태평양 프랑 (CFP Franc)
  XPF('CURRENCY_XPF'),

  /// 백금 (Platinum)
  XPT('CURRENCY_XPT'),

  /// SUCRE – ALBA 무역 단위 (SUCRE)
  XSU('CURRENCY_XSU'),

  /// 테스트용 통화 코드 (Testing Currency Code)
  XTS('CURRENCY_XTS'),

  /// 아프리카 개발은행 단위 (ADB Unit of Account)
  XUA('CURRENCY_XUA'),

  /// 미지정 통화 (No Currency)
  XXX('CURRENCY_XXX'),

  /// 예멘 리얄 (Yemeni Rial)
  YER('CURRENCY_YER'),

  /// 남아프리카공화국 랜드 (South African Rand)
  ZAR('CURRENCY_ZAR'),

  /// 잠비아 콰차 (Zambian Kwacha)
  ZMW('CURRENCY_ZMW'),

  /// 짐바브웨 달러 (Zimbabwean Dollar)
  ZWL('CURRENCY_ZWL');

  /// [PaymentCurrency] 생성자입니다.
  const PaymentCurrency(this.value);

  /// ISO 4217 기반 직렬화 값입니다.
  final String value;
}
