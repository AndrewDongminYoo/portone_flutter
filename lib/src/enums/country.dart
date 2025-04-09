// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// 국가 (ISO 3166-1 alpha-2 코드)
///
/// See: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum Country {
  /// Afghanistan
  AF('COUNTRY_AF'),

  /// Åland Islands
  AX('COUNTRY_AX'),

  /// Albania
  AL('COUNTRY_AL'),

  /// Algeria
  DZ('COUNTRY_DZ'),

  /// American Samoa
  AS('COUNTRY_AS'),

  /// Andorra
  AD('COUNTRY_AD'),

  /// Angola
  AO('COUNTRY_AO'),

  /// Anguilla
  AI('COUNTRY_AI'),

  /// Antarctica
  AQ('COUNTRY_AQ'),

  /// Antigua and Barbuda
  AG('COUNTRY_AG'),

  /// Argentina
  AR('COUNTRY_AR'),

  /// Armenia
  AM('COUNTRY_AM'),

  /// Aruba
  AW('COUNTRY_AW'),

  /// Australia
  AU('COUNTRY_AU'),

  /// Austria
  AT('COUNTRY_AT'),

  /// Azerbaijan
  AZ('COUNTRY_AZ'),

  /// Bahrain
  BH('COUNTRY_BH'),

  /// Bahamas
  BS('COUNTRY_BS'),

  /// Bangladesh
  BD('COUNTRY_BD'),

  /// Barbados
  BB('COUNTRY_BB'),

  /// Belarus
  BY('COUNTRY_BY'),

  /// Belgium
  BE('COUNTRY_BE'),

  /// Belize
  BZ('COUNTRY_BZ'),

  /// Benin
  BJ('COUNTRY_BJ'),

  /// Bermuda
  BM('COUNTRY_BM'),

  /// Bhutan
  BT('COUNTRY_BT'),

  /// Bolivia, Plurinational State of
  BO('COUNTRY_BO'),

  /// Bonaire, Sint Eustatius and Saba
  BQ('COUNTRY_BQ'),

  /// Bosnia and Herzegovina
  BA('COUNTRY_BA'),

  /// Botswana
  BW('COUNTRY_BW'),

  /// Bouvet Island
  BV('COUNTRY_BV'),

  /// Brazil
  BR('COUNTRY_BR'),

  /// British Indian Ocean Territory
  IO('COUNTRY_IO'),

  /// Brunei Darussalam
  BN('COUNTRY_BN'),

  /// Bulgaria
  BG('COUNTRY_BG'),

  /// Burkina Faso
  BF('COUNTRY_BF'),

  /// Burundi
  BI('COUNTRY_BI'),

  /// Cambodia
  KH('COUNTRY_KH'),

  /// Cameroon
  CM('COUNTRY_CM'),

  /// Canada
  CA('COUNTRY_CA'),

  /// Cape Verde
  CV('COUNTRY_CV'),

  /// Cayman Islands
  KY('COUNTRY_KY'),

  /// Central African Republic
  CF('COUNTRY_CF'),

  /// Chad
  TD('COUNTRY_TD'),

  /// Chile
  CL('COUNTRY_CL'),

  /// China
  CN('COUNTRY_CN'),

  /// Christmas Island
  CX('COUNTRY_CX'),

  /// Cocos (Keeling) Islands
  CC('COUNTRY_CC'),

  /// Colombia
  CO('COUNTRY_CO'),

  /// Comoros
  KM('COUNTRY_KM'),

  /// Congo
  CG('COUNTRY_CG'),

  /// Congo, the Democratic Republic of the
  CD('COUNTRY_CD'),

  /// Cook Islands
  CK('COUNTRY_CK'),

  /// Costa Rica
  CR('COUNTRY_CR'),

  /// Côte d'Ivoire
  CI('COUNTRY_CI'),

  /// Croatia
  HR('COUNTRY_HR'),

  /// Cuba
  CU('COUNTRY_CU'),

  /// Curaçao
  CW('COUNTRY_CW'),

  /// Cyprus
  CY('COUNTRY_CY'),

  /// Czech Republic
  CZ('COUNTRY_CZ'),

  /// Denmark
  DK('COUNTRY_DK'),

  /// Djibouti
  DJ('COUNTRY_DJ'),

  /// Dominica
  DM('COUNTRY_DM'),

  /// Dominican Republic
  DO('COUNTRY_DO'),

  /// Ecuador
  EC('COUNTRY_EC'),

  /// Egypt
  EG('COUNTRY_EG'),

  /// El Salvador
  SV('COUNTRY_SV'),

  /// Equatorial Guinea
  GQ('COUNTRY_GQ'),

  /// Eritrea
  ER('COUNTRY_ER'),

  /// Estonia
  EE('COUNTRY_EE'),

  /// Ethiopia
  ET('COUNTRY_ET'),

  /// Falkland Islands (Malvinas)
  FK('COUNTRY_FK'),

  /// Faroe Islands
  FO('COUNTRY_FO'),

  /// Fiji
  FJ('COUNTRY_FJ'),

  /// Finland
  FI('COUNTRY_FI'),

  /// France
  FR('COUNTRY_FR'),

  /// French Guiana
  GF('COUNTRY_GF'),

  /// French Polynesia
  PF('COUNTRY_PF'),

  /// French Southern Territories
  TF('COUNTRY_TF'),

  /// Gabon
  GA('COUNTRY_GA'),

  /// Gambia
  GM('COUNTRY_GM'),

  /// Georgia
  GE('COUNTRY_GE'),

  /// Germany
  DE('COUNTRY_DE'),

  /// Ghana
  GH('COUNTRY_GH'),

  /// Gibraltar
  GI('COUNTRY_GI'),

  /// Greece
  GR('COUNTRY_GR'),

  /// Greenland
  GL('COUNTRY_GL'),

  /// Grenada
  GD('COUNTRY_GD'),

  /// Guadeloupe
  GP('COUNTRY_GP'),

  /// Guam
  GU('COUNTRY_GU'),

  /// Guatemala
  GT('COUNTRY_GT'),

  /// Guernsey
  GG('COUNTRY_GG'),

  /// Guinea
  GN('COUNTRY_GN'),

  /// Guinea-Bissau
  GW('COUNTRY_GW'),

  /// Guyana
  GY('COUNTRY_GY'),

  /// Haiti
  HT('COUNTRY_HT'),

  /// Heard Island and McDonald Islands
  HM('COUNTRY_HM'),

  /// Holy See (Vatican City State)
  VA('COUNTRY_VA'),

  /// Honduras
  HN('COUNTRY_HN'),

  /// Hong Kong
  HK('COUNTRY_HK'),

  /// Hungary
  HU('COUNTRY_HU'),

  /// Iceland
  IS('COUNTRY_IS'),

  /// India
  IN('COUNTRY_IN'),

  /// Indonesia
  ID('COUNTRY_ID'),

  /// Iran, Islamic Republic of
  IR('COUNTRY_IR'),

  /// Iraq
  IQ('COUNTRY_IQ'),

  /// Ireland
  IE('COUNTRY_IE'),

  /// Isle of Man
  IM('COUNTRY_IM'),

  /// Israel
  IL('COUNTRY_IL'),

  /// Italy
  IT('COUNTRY_IT'),

  /// Jamaica
  JM('COUNTRY_JM'),

  /// Japan
  JP('COUNTRY_JP'),

  /// Jersey
  JE('COUNTRY_JE'),

  /// Jordan
  JO('COUNTRY_JO'),

  /// Kazakhstan
  KZ('COUNTRY_KZ'),

  /// Kenya
  KE('COUNTRY_KE'),

  /// Kiribati
  KI('COUNTRY_KI'),

  /// Korea, Democratic People's Republic of
  KP('COUNTRY_KP'),

  /// Korea, Republic of
  KR('COUNTRY_KR'),

  /// Kuwait
  KW('COUNTRY_KW'),

  /// Kyrgyzstan
  KG('COUNTRY_KG'),

  /// Lao People's Democratic Republic
  LA('COUNTRY_LA'),

  /// Latvia
  LV('COUNTRY_LV'),

  /// Lebanon
  LB('COUNTRY_LB'),

  /// Lesotho
  LS('COUNTRY_LS'),

  /// Liberia
  LR('COUNTRY_LR'),

  /// Libya
  LY('COUNTRY_LY'),

  /// Liechtenstein
  LI('COUNTRY_LI'),

  /// Lithuania
  LT('COUNTRY_LT'),

  /// Luxembourg
  LU('COUNTRY_LU'),

  /// Macao
  MO('COUNTRY_MO'),

  /// Macedonia, the Former Yugoslav Republic of
  MK('COUNTRY_MK'),

  /// Madagascar
  MG('COUNTRY_MG'),

  /// Malawi
  MW('COUNTRY_MW'),

  /// Malaysia
  MY('COUNTRY_MY'),

  /// Maldives
  MV('COUNTRY_MV'),

  /// Mali
  ML('COUNTRY_ML'),

  /// Malta
  MT('COUNTRY_MT'),

  /// Marshall Islands
  MH('COUNTRY_MH'),

  /// Martinique
  MQ('COUNTRY_MQ'),

  /// Mauritania
  MR('COUNTRY_MR'),

  /// Mauritius
  MU('COUNTRY_MU'),

  /// Mayotte
  YT('COUNTRY_YT'),

  /// Mexico
  MX('COUNTRY_MX'),

  /// Micronesia, Federated States of
  FM('COUNTRY_FM'),

  /// Moldova, Republic of
  MD('COUNTRY_MD'),

  /// Monaco
  MC('COUNTRY_MC'),

  /// Mongolia
  MN('COUNTRY_MN'),

  /// Montenegro
  ME('COUNTRY_ME'),

  /// Montserrat
  MS('COUNTRY_MS'),

  /// Morocco
  MA('COUNTRY_MA'),

  /// Mozambique
  MZ('COUNTRY_MZ'),

  /// Myanmar
  MM('COUNTRY_MM'),

  /// Namibia
  NA('COUNTRY_NA'),

  /// Nauru
  NR('COUNTRY_NR'),

  /// Nepal
  NP('COUNTRY_NP'),

  /// Netherlands
  NL('COUNTRY_NL'),

  /// New Caledonia
  NC('COUNTRY_NC'),

  /// New Zealand
  NZ('COUNTRY_NZ'),

  /// Nicaragua
  NI('COUNTRY_NI'),

  /// Niger
  NE('COUNTRY_NE'),

  /// Nigeria
  NG('COUNTRY_NG'),

  /// Niue
  NU('COUNTRY_NU'),

  /// Norfolk Island
  NF('COUNTRY_NF'),

  /// Northern Mariana Islands
  MP('COUNTRY_MP'),

  /// Norway
  NO('COUNTRY_NO'),

  /// Oman
  OM('COUNTRY_OM'),

  /// Pakistan
  PK('COUNTRY_PK'),

  /// Palau
  PW('COUNTRY_PW'),

  /// Palestine, State of
  PS('COUNTRY_PS'),

  /// Panama
  PA('COUNTRY_PA'),

  /// Papua New Guinea
  PG('COUNTRY_PG'),

  /// Paraguay
  PY('COUNTRY_PY'),

  /// Peru
  PE('COUNTRY_PE'),

  /// Philippines
  PH('COUNTRY_PH'),

  /// Pitcairn
  PN('COUNTRY_PN'),

  /// Poland
  PL('COUNTRY_PL'),

  /// Portugal
  PT('COUNTRY_PT'),

  /// Puerto Rico
  PR('COUNTRY_PR'),

  /// Qatar
  QA('COUNTRY_QA'),

  /// Réunion
  RE('COUNTRY_RE'),

  /// Romania
  RO('COUNTRY_RO'),

  /// Russian Federation
  RU('COUNTRY_RU'),

  /// Rwanda
  RW('COUNTRY_RW'),

  /// Saint Barthélemy
  BL('COUNTRY_BL'),

  /// Saint Helena, Ascension and Tristan da Cunha
  SH('COUNTRY_SH'),

  /// Saint Kitts and Nevis
  KN('COUNTRY_KN'),

  /// Saint Lucia
  LC('COUNTRY_LC'),

  /// Saint Martin (French part)
  MF('COUNTRY_MF'),

  /// Saint Pierre and Miquelon
  PM('COUNTRY_PM'),

  /// Saint Vincent and the Grenadines
  VC('COUNTRY_VC'),

  /// Samoa
  WS('COUNTRY_WS'),

  /// San Marino
  SM('COUNTRY_SM'),

  /// Sao Tome and Principe
  ST('COUNTRY_ST'),

  /// Saudi Arabia
  SA('COUNTRY_SA'),

  /// Senegal
  SN('COUNTRY_SN'),

  /// Serbia
  RS('COUNTRY_RS'),

  /// Seychelles
  SC('COUNTRY_SC'),

  /// Sierra Leone
  SL('COUNTRY_SL'),

  /// Singapore
  SG('COUNTRY_SG'),

  /// Sint Maarten (Dutch part)
  SX('COUNTRY_SX'),

  /// Slovakia
  SK('COUNTRY_SK'),

  /// Slovenia
  SI('COUNTRY_SI'),

  /// Solomon Islands
  SB('COUNTRY_SB'),

  /// Somalia
  SO('COUNTRY_SO'),

  /// South Africa
  ZA('COUNTRY_ZA'),

  /// South Georgia and the South Sandwich Islands
  GS('COUNTRY_GS'),

  /// South Sudan
  SS('COUNTRY_SS'),

  /// Spain
  ES('COUNTRY_ES'),

  /// Sri Lanka
  LK('COUNTRY_LK'),

  /// Sudan
  SD('COUNTRY_SD'),

  /// Suriname
  SR('COUNTRY_SR'),

  /// Svalbard and Jan Mayen
  SJ('COUNTRY_SJ'),

  /// Swaziland
  SZ('COUNTRY_SZ'),

  /// Sweden
  SE('COUNTRY_SE'),

  /// Switzerland
  CH('COUNTRY_CH'),

  /// Syrian Arab Republic
  SY('COUNTRY_SY'),

  /// Taiwan, Province of China
  TW('COUNTRY_TW'),

  /// Tajikistan
  TJ('COUNTRY_TJ'),

  /// Tanzania, United Republic of
  TZ('COUNTRY_TZ'),

  /// Thailand
  TH('COUNTRY_TH'),

  /// Timor-Leste
  TL('COUNTRY_TL'),

  /// Togo
  TG('COUNTRY_TG'),

  /// Tokelau
  TK('COUNTRY_TK'),

  /// Tonga
  TO('COUNTRY_TO'),

  /// Trinidad and Tobago
  TT('COUNTRY_TT'),

  /// Tunisia
  TN('COUNTRY_TN'),

  /// Turkey
  TR('COUNTRY_TR'),

  /// Turkmenistan
  TM('COUNTRY_TM'),

  /// Turks and Caicos Islands
  TC('COUNTRY_TC'),

  /// Tuvalu
  TV('COUNTRY_TV'),

  /// Uganda
  UG('COUNTRY_UG'),

  /// Ukraine
  UA('COUNTRY_UA'),

  /// United Arab Emirates
  AE('COUNTRY_AE'),

  /// United Kingdom
  GB('COUNTRY_GB'),

  /// United States
  US('COUNTRY_US'),

  /// United States Minor Outlying Islands
  UM('COUNTRY_UM'),

  /// Uruguay
  UY('COUNTRY_UY'),

  /// Uzbekistan
  UZ('COUNTRY_UZ'),

  /// Vanuatu
  VU('COUNTRY_VU'),

  /// Venezuela, Bolivarian Republic of
  VE('COUNTRY_VE'),

  /// Viet Nam
  VN('COUNTRY_VN'),

  /// Virgin Islands, British
  VG('COUNTRY_VG'),

  /// Virgin Islands, U.S.
  VI('COUNTRY_VI'),

  /// Wallis and Futuna
  WF('COUNTRY_WF'),

  /// Western Sahara
  EH('COUNTRY_EH'),

  /// Yemen
  YE('COUNTRY_YE'),

  /// Zambia
  ZM('COUNTRY_ZM'),

  /// Zimbabwe
  ZW('COUNTRY_ZW'),
  ;

  const Country(this.value);
  final String value;
}
