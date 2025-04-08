// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'product_detail.g.dart';

/// 상품 상세 정보 객체
@JsonSerializable()
class ProductDetail {
  ProductDetail({
    required this.id,
    required this.name,
    required this.amount,
    required this.quantity,
    this.code,
    this.tag,
    this.link,
    this.isCulturalExpense,
  });

  factory ProductDetail.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailFromJson(json);

  /// 상품 ID
  final String id;

  /// 상품명
  final String name;

  /// 상품 코드 (선택, 토스페이먼츠의 경우 필수)
  final String? code;

  /// 상품 단위 가격 (통화별 scale factor 적용된 값)
  final int amount;

  /// 상품 수량
  final int quantity;

  /// 상품 태그 (선택)
  final String? tag;

  /// 상품 판매 URL (선택)
  final String? link;

  /// 문화비 지출 여부 (선택)
  final bool? isCulturalExpense;

  Map<String, dynamic> toJson() => _$ProductDetailToJson(this);
}
