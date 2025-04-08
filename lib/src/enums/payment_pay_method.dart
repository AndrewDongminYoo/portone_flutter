// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// 결제수단 enum
@JsonEnum()
enum PaymentPayMethod {
  /// 카드
  CARD,

  /// 가상계좌
  VIRTUAL_ACCOUNT,

  /// 계좌이체
  TRANSFER,

  /// 휴대폰 소액결제
  MOBILE,

  /// 상품권
  GIFT_CERTIFICATE,

  /// 간편 결제
  EASY_PAY,

  /// 페이팔(SPB)
  PAYPAL,
}
