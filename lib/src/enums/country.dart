// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// 국가 enum (예시: 필요한 국가 코드를 추가)
@JsonEnum()
enum Country {
  @JsonValue('COUNTRY_KR')
  KR,
  @JsonValue('COUNTRY_US')
  US,
}
