// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) =>
    ProductDetail(
      id: json['id'] as String,
      name: json['name'] as String,
      amount: (json['amount'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      code: json['code'] as String?,
      tag: json['tag'] as String?,
      link: json['link'] as String?,
      isCulturalExpense: json['isCulturalExpense'] as bool?,
    );

Map<String, dynamic> _$ProductDetailToJson(ProductDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': ?instance.code,
      'amount': instance.amount,
      'quantity': instance.quantity,
      'tag': ?instance.tag,
      'link': ?instance.link,
      'isCulturalExpense': ?instance.isCulturalExpense,
    };
