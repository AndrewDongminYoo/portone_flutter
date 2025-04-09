// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'payment_response.g.dart';

/// PaymentResponse는 iframe/popup 방식으로 PG사 창이 렌더링 된 경우
/// 프로세스 종료 후, 콜백 함수로 전달 될 결제 정보 데이터입니다.
@JsonSerializable()
class PaymentResponse {
  /// PaymentResponse 생성자
  const PaymentResponse({
    required this.transactionType,
    required this.txId,
    required this.paymentId,
    this.code,
    this.message,
    this.pgCode,
    this.pgMessage,
  });

  /// JSON에서 PaymentResponse 객체로 변환하는 팩토리 메서드
  factory PaymentResponse.fromJson(Map<String, dynamic> json) => _$PaymentResponseFromJson(json);

  /// 트랜잭션 유형
  /// 일반결제의 경우 무조건 "PAYMENT"로 전달됩니다.
  final String transactionType;

  /// 결제 시도 고유 번호
  /// 포트원에서 채번하는 결제 시도 고유 번호입니다.
  final String txId;

  /// 결제 ID
  /// 결제 요청에 전달된 결제 ID입니다.
  final String paymentId;

  /// 오류 코드
  /// 실패한 경우 오류 코드입니다.
  final String? code;

  /// 오류 메시지
  /// 실패한 경우 오류 메시지입니다.
  final String? message;

  /// PG 오류 코드
  /// PG에서 오류 코드를 내려 주는 경우 이 오류 코드를 그대로 반환합니다.
  final String? pgCode;

  /// PG 오류 메시지
  /// PG에서 오류 메시지를 내려 주는 경우 이 오류 메시지를 그대로 반환합니다.
  final String? pgMessage;

  /// PaymentResponse 객체를 JSON으로 변환하는 메서드
  Map<String, dynamic> toJson() => _$PaymentResponseToJson(this);
}
