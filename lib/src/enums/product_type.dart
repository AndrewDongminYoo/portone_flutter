// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

/// 상품 유형
@JsonEnum(fieldRename: FieldRename.screamingSnake, valueField: 'value')
enum ProductType {
  /// 디지털
  digital('PRODUCT_TYPE_DIGITAL'),

  /// 실물
  real('PRODUCT_TYPE_REAL');

  const ProductType(this.value);

  /// 직렬화에 사용될 값
  final String value;

  @override
  String toString() => value;
}
