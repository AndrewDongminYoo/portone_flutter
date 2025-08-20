// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductDetail', json, ($checkedConvert) {
      final val = ProductDetail(
        id: $checkedConvert('id', (v) => v! as String),
        name: $checkedConvert('name', (v) => v! as String),
        amount: $checkedConvert('amount', (v) => (v! as num).toInt()),
        quantity: $checkedConvert('quantity', (v) => (v! as num).toInt()),
        code: $checkedConvert('code', (v) => v as String?),
        tag: $checkedConvert('tag', (v) => v as String?),
        link: $checkedConvert('link', (v) => v as String?),
        isCulturalExpense: $checkedConvert(
          'isCulturalExpense',
          (v) => v as bool?,
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProductDetailToJson(ProductDetail instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'code': ?instance.code,
  'amount': instance.amount,
  'quantity': instance.quantity,
  'tag': ?instance.tag,
  'link': ?instance.link,
  'isCulturalExpense': ?instance.isCulturalExpense,
};
