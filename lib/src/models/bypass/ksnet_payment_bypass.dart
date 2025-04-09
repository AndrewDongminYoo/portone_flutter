// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'ksnet_payment_bypass.g.dart';

@JsonSerializable()
class KsnetPaymentBypass {
  KsnetPaymentBypass({
    this.easyPayDirect,
    this.sndQpayType,
  });

  factory KsnetPaymentBypass.fromJson(Map<String, dynamic> json) => _$KsnetPaymentBypassFromJson(json);

  /// KSNET 간편결제 다이렉트 여부
  bool? easyPayDirect;

  /// 간편 결제 표시 구분
  SndQpayType? sndQpayType;

  Map<String, dynamic> toJson() => _$KsnetPaymentBypassToJson(this);
}

@JsonEnum(valueField: 'value')
enum SndQpayType {
  /// 간편 결제 미표시
  none('0'),

  /// 간편 결제 표시
  show('1'),
  ;

  const SndQpayType(this.value);
  final String value;
}
