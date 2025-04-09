// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum ProductType {
  /// 디지털
  digital('PRODUCT_TYPE_DIGITAL'),

  /// 실물
  real('PRODUCT_TYPE_REAL'),
  ;

  const ProductType(this.value);
  final String value;
}
