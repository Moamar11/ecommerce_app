// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllProductModel _$AllProductModelFromJson(Map<String, dynamic> json) =>
    _AllProductModel(
      status: json['status'] as String,
      message: json['message'] as String,
      productsList: (json['products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllProductModelToJson(_AllProductModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'products': instance.productsList,
    };
