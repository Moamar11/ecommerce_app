import 'package:ecommerece_app/data/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_product_model.freezed.dart';
part 'all_product_model.g.dart';

@freezed
abstract class AllProductModel with _$AllProductModel {
  const factory AllProductModel({
    required String status,
    required String message,
    @JsonKey(name: "products") required List<ProductModel> productsList,
  }) = _AllProductModel;

  factory AllProductModel.fromJson(Map<String, Object?> json) =>
      _$AllProductModelFromJson(json);
}
