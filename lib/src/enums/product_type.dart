// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum ProductType {
  /// 디지털
  @JsonValue('PRODUCT_TYPE_DIGITAL')
  DIGITAL,

  /// 실물
  @JsonValue('PRODUCT_TYPE_REAL')
  REAL,
}
