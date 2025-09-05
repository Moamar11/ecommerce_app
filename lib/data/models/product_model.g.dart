// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toInt(),
      description: json['description'] as String,
      brand: json['brand'] as String,
      model: json['model'] as String,
      color: json['color'] as String?,
      category: json['category'] as String,
      discount: json['discount'] as num?,
      onSale: json['onSale'] as bool? ?? false,
      popular: json['popular'] as bool? ?? false,
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'description': instance.description,
      'brand': instance.brand,
      'model': instance.model,
      'color': instance.color,
      'category': instance.category,
      'discount': instance.discount,
      'onSale': instance.onSale,
      'popular': instance.popular,
    };
