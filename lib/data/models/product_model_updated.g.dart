// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model_updated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModelUpdated _$ProductModelUpdatedFromJson(Map<String, dynamic> json) =>
    _ProductModelUpdated(
      title: json['title'] as String,
      brand: json['brand'] as String,
      model: json['model'] as String,
      color: json['color'] as String,
      category: json['category'] as String,
      discount: json['discount'] as String,
    );

Map<String, dynamic> _$ProductModelUpdatedToJson(
  _ProductModelUpdated instance,
) => <String, dynamic>{
  'title': instance.title,
  'brand': instance.brand,
  'model': instance.model,
  'color': instance.color,
  'category': instance.category,
  'discount': instance.discount,
};
