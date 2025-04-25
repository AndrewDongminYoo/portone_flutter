// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'ksnet_payment_bypass.g.dart';

/// KSNET bypass 파라미터
@JsonSerializable()
class KsnetPaymentBypass {
  /// [KsnetPaymentBypass] 생성자
  KsnetPaymentBypass({this.easyPayDirect, this.sndQpayType});

  /// JSON에서 [KsnetPaymentBypass] 객체로 변환하는 팩토리 메서드
  factory KsnetPaymentBypass.fromJson(Map<String, dynamic> json) => _$KsnetPaymentBypassFromJson(json);

  /// KSNET 간편결제 다이렉트 여부
  bool? easyPayDirect;

  /// 간편 결제 표시 구분
  SndQpayType? sndQpayType;

  /// [KsnetPaymentBypass] 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$KsnetPaymentBypassToJson(this);
}

/// 간편 결제 표시 구분
@JsonEnum(valueField: 'value')
enum SndQpayType {
  /// 간편 결제 미표시
  none('0'),

  /// 간편 결제 표시
  show('1');

  const SndQpayType(this.value);

  /// 직렬화에 사용될 값
  final String value;

  @override
  String toString() => value;
}
