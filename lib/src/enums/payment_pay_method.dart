// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// 결제수단 enum
@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum PaymentPayMethod {
  /// 카드
  CARD('CARD'),

  /// 가상계좌
  VIRTUAL_ACCOUNT('VIRTUAL_ACCOUNT'),

  /// 계좌이체
  TRANSFER('TRANSFER'),

  /// 휴대폰 소액결제
  MOBILE('MOBILE'),

  /// 상품권
  GIFT_CERTIFICATE('GIFT_CERTIFICATE'),

  /// 간편 결제
  EASY_PAY('EASY_PAY'),

  /// 편의점
  CONVENIENCE_STORE('CONVENIENCE_STORE');

  const PaymentPayMethod(this.value);

  /// 직렬화에 사용될 값
  final String value;

  @override
  String toString() => value;
}
