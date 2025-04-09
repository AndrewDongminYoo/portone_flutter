// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// 국가 (ISO 3166-1 alpha-2 코드)
///
/// See: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
@JsonEnum()
enum Country {
  /// Afghanistan
  @JsonValue('COUNTRY_AF')
  AF,

  /// Åland Islands
  @JsonValue('COUNTRY_AX')
  AX,

  /// Albania
  @JsonValue('COUNTRY_AL')
  AL,

  /// Algeria
  @JsonValue('COUNTRY_DZ')
  DZ,

  /// American Samoa
  @JsonValue('COUNTRY_AS')
  AS,

  /// Andorra
  @JsonValue('COUNTRY_AD')
  AD,

  /// Angola
  @JsonValue('COUNTRY_AO')
  AO,

  /// Anguilla
  @JsonValue('COUNTRY_AI')
  AI,

  /// Antarctica
  @JsonValue('COUNTRY_AQ')
  AQ,

  /// Antigua and Barbuda
  @JsonValue('COUNTRY_AG')
  AG,

  /// Argentina
  @JsonValue('COUNTRY_AR')
  AR,

  /// Armenia
  @JsonValue('COUNTRY_AM')
  AM,

  /// Aruba
  @JsonValue('COUNTRY_AW')
  AW,

  /// Australia
  @JsonValue('COUNTRY_AU')
  AU,

  /// Austria
  @JsonValue('COUNTRY_AT')
  AT,

  /// Azerbaijan
  @JsonValue('COUNTRY_AZ')
  AZ,

  /// Bahrain
  @JsonValue('COUNTRY_BH')
  BH,

  /// Bahamas
  @JsonValue('COUNTRY_BS')
  BS,

  /// Bangladesh
  @JsonValue('COUNTRY_BD')
  BD,

  /// Barbados
  @JsonValue('COUNTRY_BB')
  BB,

  /// Belarus
  @JsonValue('COUNTRY_BY')
  BY,

  /// Belgium
  @JsonValue('COUNTRY_BE')
  BE,

  /// Belize
  @JsonValue('COUNTRY_BZ')
  BZ,

  /// Benin
  @JsonValue('COUNTRY_BJ')
  BJ,

  /// Bermuda
  @JsonValue('COUNTRY_BM')
  BM,

  /// Bhutan
  @JsonValue('COUNTRY_BT')
  BT,

  /// Bolivia, Plurinational State of
  @JsonValue('COUNTRY_BO')
  BO,

  /// Bonaire, Sint Eustatius and Saba
  @JsonValue('COUNTRY_BQ')
  BQ,

  /// Bosnia and Herzegovina
  @JsonValue('COUNTRY_BA')
  BA,

  /// Botswana
  @JsonValue('COUNTRY_BW')
  BW,

  /// Bouvet Island
  @JsonValue('COUNTRY_BV')
  BV,

  /// Brazil
  @JsonValue('COUNTRY_BR')
  BR,

  /// British Indian Ocean Territory
  @JsonValue('COUNTRY_IO')
  IO,

  /// Brunei Darussalam
  @JsonValue('COUNTRY_BN')
  BN,

  /// Bulgaria
  @JsonValue('COUNTRY_BG')
  BG,

  /// Burkina Faso
  @JsonValue('COUNTRY_BF')
  BF,

  /// Burundi
  @JsonValue('COUNTRY_BI')
  BI,

  /// Cambodia
  @JsonValue('COUNTRY_KH')
  KH,

  /// Cameroon
  @JsonValue('COUNTRY_CM')
  CM,

  /// Canada
  @JsonValue('COUNTRY_CA')
  CA,

  /// Cape Verde
  @JsonValue('COUNTRY_CV')
  CV,

  /// Cayman Islands
  @JsonValue('COUNTRY_KY')
  KY,

  /// Central African Republic
  @JsonValue('COUNTRY_CF')
  CF,

  /// Chad
  @JsonValue('COUNTRY_TD')
  TD,

  /// Chile
  @JsonValue('COUNTRY_CL')
  CL,

  /// China
  @JsonValue('COUNTRY_CN')
  CN,

  /// Christmas Island
  @JsonValue('COUNTRY_CX')
  CX,

  /// Cocos (Keeling) Islands
  @JsonValue('COUNTRY_CC')
  CC,

  /// Colombia
  @JsonValue('COUNTRY_CO')
  CO,

  /// Comoros
  @JsonValue('COUNTRY_KM')
  KM,

  /// Congo
  @JsonValue('COUNTRY_CG')
  CG,

  /// Congo, the Democratic Republic of the
  @JsonValue('COUNTRY_CD')
  CD,

  /// Cook Islands
  @JsonValue('COUNTRY_CK')
  CK,

  /// Costa Rica
  @JsonValue('COUNTRY_CR')
  CR,

  /// Côte d'Ivoire
  @JsonValue('COUNTRY_CI')
  CI,

  /// Croatia
  @JsonValue('COUNTRY_HR')
  HR,

  /// Cuba
  @JsonValue('COUNTRY_CU')
  CU,

  /// Curaçao
  @JsonValue('COUNTRY_CW')
  CW,

  /// Cyprus
  @JsonValue('COUNTRY_CY')
  CY,

  /// Czech Republic
  @JsonValue('COUNTRY_CZ')
  CZ,

  /// Denmark
  @JsonValue('COUNTRY_DK')
  DK,

  /// Djibouti
  @JsonValue('COUNTRY_DJ')
  DJ,

  /// Dominica
  @JsonValue('COUNTRY_DM')
  DM,

  /// Dominican Republic
  @JsonValue('COUNTRY_DO')
  DO,

  /// Ecuador
  @JsonValue('COUNTRY_EC')
  EC,

  /// Egypt
  @JsonValue('COUNTRY_EG')
  EG,

  /// El Salvador
  @JsonValue('COUNTRY_SV')
  SV,

  /// Equatorial Guinea
  @JsonValue('COUNTRY_GQ')
  GQ,

  /// Eritrea
  @JsonValue('COUNTRY_ER')
  ER,

  /// Estonia
  @JsonValue('COUNTRY_EE')
  EE,

  /// Ethiopia
  @JsonValue('COUNTRY_ET')
  ET,

  /// Falkland Islands (Malvinas)
  @JsonValue('COUNTRY_FK')
  FK,

  /// Faroe Islands
  @JsonValue('COUNTRY_FO')
  FO,

  /// Fiji
  @JsonValue('COUNTRY_FJ')
  FJ,

  /// Finland
  @JsonValue('COUNTRY_FI')
  FI,

  /// France
  @JsonValue('COUNTRY_FR')
  FR,

  /// French Guiana
  @JsonValue('COUNTRY_GF')
  GF,

  /// French Polynesia
  @JsonValue('COUNTRY_PF')
  PF,

  /// French Southern Territories
  @JsonValue('COUNTRY_TF')
  TF,

  /// Gabon
  @JsonValue('COUNTRY_GA')
  GA,

  /// Gambia
  @JsonValue('COUNTRY_GM')
  GM,

  /// Georgia
  @JsonValue('COUNTRY_GE')
  GE,

  /// Germany
  @JsonValue('COUNTRY_DE')
  DE,

  /// Ghana
  @JsonValue('COUNTRY_GH')
  GH,

  /// Gibraltar
  @JsonValue('COUNTRY_GI')
  GI,

  /// Greece
  @JsonValue('COUNTRY_GR')
  GR,

  /// Greenland
  @JsonValue('COUNTRY_GL')
  GL,

  /// Grenada
  @JsonValue('COUNTRY_GD')
  GD,

  /// Guadeloupe
  @JsonValue('COUNTRY_GP')
  GP,

  /// Guam
  @JsonValue('COUNTRY_GU')
  GU,

  /// Guatemala
  @JsonValue('COUNTRY_GT')
  GT,

  /// Guernsey
  @JsonValue('COUNTRY_GG')
  GG,

  /// Guinea
  @JsonValue('COUNTRY_GN')
  GN,

  /// Guinea-Bissau
  @JsonValue('COUNTRY_GW')
  GW,

  /// Guyana
  @JsonValue('COUNTRY_GY')
  GY,

  /// Haiti
  @JsonValue('COUNTRY_HT')
  HT,

  /// Heard Island and McDonald Islands
  @JsonValue('COUNTRY_HM')
  HM,

  /// Holy See (Vatican City State)
  @JsonValue('COUNTRY_VA')
  VA,

  /// Honduras
  @JsonValue('COUNTRY_HN')
  HN,

  /// Hong Kong
  @JsonValue('COUNTRY_HK')
  HK,

  /// Hungary
  @JsonValue('COUNTRY_HU')
  HU,

  /// Iceland
  @JsonValue('COUNTRY_IS')
  IS,

  /// India
  @JsonValue('COUNTRY_IN')
  IN,

  /// Indonesia
  @JsonValue('COUNTRY_ID')
  ID,

  /// Iran, Islamic Republic of
  @JsonValue('COUNTRY_IR')
  IR,

  /// Iraq
  @JsonValue('COUNTRY_IQ')
  IQ,

  /// Ireland
  @JsonValue('COUNTRY_IE')
  IE,

  /// Isle of Man
  @JsonValue('COUNTRY_IM')
  IM,

  /// Israel
  @JsonValue('COUNTRY_IL')
  IL,

  /// Italy
  @JsonValue('COUNTRY_IT')
  IT,

  /// Jamaica
  @JsonValue('COUNTRY_JM')
  JM,

  /// Japan
  @JsonValue('COUNTRY_JP')
  JP,

  /// Jersey
  @JsonValue('COUNTRY_JE')
  JE,

  /// Jordan
  @JsonValue('COUNTRY_JO')
  JO,

  /// Kazakhstan
  @JsonValue('COUNTRY_KZ')
  KZ,

  /// Kenya
  @JsonValue('COUNTRY_KE')
  KE,

  /// Kiribati
  @JsonValue('COUNTRY_KI')
  KI,

  /// Korea, Democratic People's Republic of
  @JsonValue('COUNTRY_KP')
  KP,

  /// Korea, Republic of
  @JsonValue('COUNTRY_KR')
  KR,

  /// Kuwait
  @JsonValue('COUNTRY_KW')
  KW,

  /// Kyrgyzstan
  @JsonValue('COUNTRY_KG')
  KG,

  /// Lao People's Democratic Republic
  @JsonValue('COUNTRY_LA')
  LA,

  /// Latvia
  @JsonValue('COUNTRY_LV')
  LV,

  /// Lebanon
  @JsonValue('COUNTRY_LB')
  LB,

  /// Lesotho
  @JsonValue('COUNTRY_LS')
  LS,

  /// Liberia
  @JsonValue('COUNTRY_LR')
  LR,

  /// Libya
  @JsonValue('COUNTRY_LY')
  LY,

  /// Liechtenstein
  @JsonValue('COUNTRY_LI')
  LI,

  /// Lithuania
  @JsonValue('COUNTRY_LT')
  LT,

  /// Luxembourg
  @JsonValue('COUNTRY_LU')
  LU,

  /// Macao
  @JsonValue('COUNTRY_MO')
  MO,

  /// Macedonia, the Former Yugoslav Republic of
  @JsonValue('COUNTRY_MK')
  MK,

  /// Madagascar
  @JsonValue('COUNTRY_MG')
  MG,

  /// Malawi
  @JsonValue('COUNTRY_MW')
  MW,

  /// Malaysia
  @JsonValue('COUNTRY_MY')
  MY,

  /// Maldives
  @JsonValue('COUNTRY_MV')
  MV,

  /// Mali
  @JsonValue('COUNTRY_ML')
  ML,

  /// Malta
  @JsonValue('COUNTRY_MT')
  MT,

  /// Marshall Islands
  @JsonValue('COUNTRY_MH')
  MH,

  /// Martinique
  @JsonValue('COUNTRY_MQ')
  MQ,

  /// Mauritania
  @JsonValue('COUNTRY_MR')
  MR,

  /// Mauritius
  @JsonValue('COUNTRY_MU')
  MU,

  /// Mayotte
  @JsonValue('COUNTRY_YT')
  YT,

  /// Mexico
  @JsonValue('COUNTRY_MX')
  MX,

  /// Micronesia, Federated States of
  @JsonValue('COUNTRY_FM')
  FM,

  /// Moldova, Republic of
  @JsonValue('COUNTRY_MD')
  MD,

  /// Monaco
  @JsonValue('COUNTRY_MC')
  MC,

  /// Mongolia
  @JsonValue('COUNTRY_MN')
  MN,

  /// Montenegro
  @JsonValue('COUNTRY_ME')
  ME,

  /// Montserrat
  @JsonValue('COUNTRY_MS')
  MS,

  /// Morocco
  @JsonValue('COUNTRY_MA')
  MA,

  /// Mozambique
  @JsonValue('COUNTRY_MZ')
  MZ,

  /// Myanmar
  @JsonValue('COUNTRY_MM')
  MM,

  /// Namibia
  @JsonValue('COUNTRY_NA')
  NA,

  /// Nauru
  @JsonValue('COUNTRY_NR')
  NR,

  /// Nepal
  @JsonValue('COUNTRY_NP')
  NP,

  /// Netherlands
  @JsonValue('COUNTRY_NL')
  NL,

  /// New Caledonia
  @JsonValue('COUNTRY_NC')
  NC,

  /// New Zealand
  @JsonValue('COUNTRY_NZ')
  NZ,

  /// Nicaragua
  @JsonValue('COUNTRY_NI')
  NI,

  /// Niger
  @JsonValue('COUNTRY_NE')
  NE,

  /// Nigeria
  @JsonValue('COUNTRY_NG')
  NG,

  /// Niue
  @JsonValue('COUNTRY_NU')
  NU,

  /// Norfolk Island
  @JsonValue('COUNTRY_NF')
  NF,

  /// Northern Mariana Islands
  @JsonValue('COUNTRY_MP')
  MP,

  /// Norway
  @JsonValue('COUNTRY_NO')
  NO,

  /// Oman
  @JsonValue('COUNTRY_OM')
  OM,

  /// Pakistan
  @JsonValue('COUNTRY_PK')
  PK,

  /// Palau
  @JsonValue('COUNTRY_PW')
  PW,

  /// Palestine, State of
  @JsonValue('COUNTRY_PS')
  PS,

  /// Panama
  @JsonValue('COUNTRY_PA')
  PA,

  /// Papua New Guinea
  @JsonValue('COUNTRY_PG')
  PG,

  /// Paraguay
  @JsonValue('COUNTRY_PY')
  PY,

  /// Peru
  @JsonValue('COUNTRY_PE')
  PE,

  /// Philippines
  @JsonValue('COUNTRY_PH')
  PH,

  /// Pitcairn
  @JsonValue('COUNTRY_PN')
  PN,

  /// Poland
  @JsonValue('COUNTRY_PL')
  PL,

  /// Portugal
  @JsonValue('COUNTRY_PT')
  PT,

  /// Puerto Rico
  @JsonValue('COUNTRY_PR')
  PR,

  /// Qatar
  @JsonValue('COUNTRY_QA')
  QA,

  /// Réunion
  @JsonValue('COUNTRY_RE')
  RE,

  /// Romania
  @JsonValue('COUNTRY_RO')
  RO,

  /// Russian Federation
  @JsonValue('COUNTRY_RU')
  RU,

  /// Rwanda
  @JsonValue('COUNTRY_RW')
  RW,

  /// Saint Barthélemy
  @JsonValue('COUNTRY_BL')
  BL,

  /// Saint Helena, Ascension and Tristan da Cunha
  @JsonValue('COUNTRY_SH')
  SH,

  /// Saint Kitts and Nevis
  @JsonValue('COUNTRY_KN')
  KN,

  /// Saint Lucia
  @JsonValue('COUNTRY_LC')
  LC,

  /// Saint Martin (French part)
  @JsonValue('COUNTRY_MF')
  MF,

  /// Saint Pierre and Miquelon
  @JsonValue('COUNTRY_PM')
  PM,

  /// Saint Vincent and the Grenadines
  @JsonValue('COUNTRY_VC')
  VC,

  /// Samoa
  @JsonValue('COUNTRY_WS')
  WS,

  /// San Marino
  @JsonValue('COUNTRY_SM')
  SM,

  /// Sao Tome and Principe
  @JsonValue('COUNTRY_ST')
  ST,

  /// Saudi Arabia
  @JsonValue('COUNTRY_SA')
  SA,

  /// Senegal
  @JsonValue('COUNTRY_SN')
  SN,

  /// Serbia
  @JsonValue('COUNTRY_RS')
  RS,

  /// Seychelles
  @JsonValue('COUNTRY_SC')
  SC,

  /// Sierra Leone
  @JsonValue('COUNTRY_SL')
  SL,

  /// Singapore
  @JsonValue('COUNTRY_SG')
  SG,

  /// Sint Maarten (Dutch part)
  @JsonValue('COUNTRY_SX')
  SX,

  /// Slovakia
  @JsonValue('COUNTRY_SK')
  SK,

  /// Slovenia
  @JsonValue('COUNTRY_SI')
  SI,

  /// Solomon Islands
  @JsonValue('COUNTRY_SB')
  SB,

  /// Somalia
  @JsonValue('COUNTRY_SO')
  SO,

  /// South Africa
  @JsonValue('COUNTRY_ZA')
  ZA,

  /// South Georgia and the South Sandwich Islands
  @JsonValue('COUNTRY_GS')
  GS,

  /// South Sudan
  @JsonValue('COUNTRY_SS')
  SS,

  /// Spain
  @JsonValue('COUNTRY_ES')
  ES,

  /// Sri Lanka
  @JsonValue('COUNTRY_LK')
  LK,

  /// Sudan
  @JsonValue('COUNTRY_SD')
  SD,

  /// Suriname
  @JsonValue('COUNTRY_SR')
  SR,

  /// Svalbard and Jan Mayen
  @JsonValue('COUNTRY_SJ')
  SJ,

  /// Swaziland
  @JsonValue('COUNTRY_SZ')
  SZ,

  /// Sweden
  @JsonValue('COUNTRY_SE')
  SE,

  /// Switzerland
  @JsonValue('COUNTRY_CH')
  CH,

  /// Syrian Arab Republic
  @JsonValue('COUNTRY_SY')
  SY,

  /// Taiwan, Province of China
  @JsonValue('COUNTRY_TW')
  TW,

  /// Tajikistan
  @JsonValue('COUNTRY_TJ')
  TJ,

  /// Tanzania, United Republic of
  @JsonValue('COUNTRY_TZ')
  TZ,

  /// Thailand
  @JsonValue('COUNTRY_TH')
  TH,

  /// Timor-Leste
  @JsonValue('COUNTRY_TL')
  TL,

  /// Togo
  @JsonValue('COUNTRY_TG')
  TG,

  /// Tokelau
  @JsonValue('COUNTRY_TK')
  TK,

  /// Tonga
  @JsonValue('COUNTRY_TO')
  TO,

  /// Trinidad and Tobago
  @JsonValue('COUNTRY_TT')
  TT,

  /// Tunisia
  @JsonValue('COUNTRY_TN')
  TN,

  /// Turkey
  @JsonValue('COUNTRY_TR')
  TR,

  /// Turkmenistan
  @JsonValue('COUNTRY_TM')
  TM,

  /// Turks and Caicos Islands
  @JsonValue('COUNTRY_TC')
  TC,

  /// Tuvalu
  @JsonValue('COUNTRY_TV')
  TV,

  /// Uganda
  @JsonValue('COUNTRY_UG')
  UG,

  /// Ukraine
  @JsonValue('COUNTRY_UA')
  UA,

  /// United Arab Emirates
  @JsonValue('COUNTRY_AE')
  AE,

  /// United Kingdom
  @JsonValue('COUNTRY_GB')
  GB,

  /// United States
  @JsonValue('COUNTRY_US')
  US,

  /// United States Minor Outlying Islands
  @JsonValue('COUNTRY_UM')
  UM,

  /// Uruguay
  @JsonValue('COUNTRY_UY')
  UY,

  /// Uzbekistan
  @JsonValue('COUNTRY_UZ')
  UZ,

  /// Vanuatu
  @JsonValue('COUNTRY_VU')
  VU,

  /// Venezuela, Bolivarian Republic of
  @JsonValue('COUNTRY_VE')
  VE,

  /// Viet Nam
  @JsonValue('COUNTRY_VN')
  VN,

  /// Virgin Islands, British
  @JsonValue('COUNTRY_VG')
  VG,

  /// Virgin Islands, U.S.
  @JsonValue('COUNTRY_VI')
  VI,

  /// Wallis and Futuna
  @JsonValue('COUNTRY_WF')
  WF,

  /// Western Sahara
  @JsonValue('COUNTRY_EH')
  EH,

  /// Yemen
  @JsonValue('COUNTRY_YE')
  YE,

  /// Zambia
  @JsonValue('COUNTRY_ZM')
  ZM,

  /// Zimbabwe
  @JsonValue('COUNTRY_ZW')
  ZW,
}
