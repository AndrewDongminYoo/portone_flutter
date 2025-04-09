// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'payletter_global_bypass.g.dart';

/// 페이레터 해외결제 bypass 파라미터 객체
@JsonSerializable()
class PayletterGlobalBypass {
  PayletterGlobalBypass({
    this.pginfo,
    this.servicename,
  });

  factory PayletterGlobalBypass.fromJson(Map<String, dynamic> json) => _$PayletterGlobalBypassFromJson(json);

  /// 결제수단 지정용 파라미터 (예: PLCreditCard, PLCreditCardMpi, 등)
  final String? pginfo;

  /// 고객사 서비스명 (WeChatPay, Alipay 이용 시 필수)
  final String? servicename;

  Map<String, dynamic> toJson() => _$PayletterGlobalBypassToJson(this);
}
