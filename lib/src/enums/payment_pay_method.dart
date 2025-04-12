// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// 결제수단 enum
@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum PaymentPayMethod {
  /// 카드
  card('CARD'),

  /// 가상계좌
  virtualAccount('VIRTUAL_ACCOUNT'),

  /// 계좌이체
  transfer('TRANSFER'),

  /// 휴대폰 소액결제
  mobile('MOBILE'),

  /// 상품권
  giftCertificate('GIFT_CERTIFICATE'),

  /// 간편 결제
  easyPay('EASY_PAY'),

  /// 편의점
  convenienceStore('CONVENIENCE_STORE'),
  ;

  const PaymentPayMethod(this.value);

  /// 직렬화에 사용될 값
  final String value;
}
