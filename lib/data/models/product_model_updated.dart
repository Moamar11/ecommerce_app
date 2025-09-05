import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model_updated.freezed.dart';
part 'product_model_updated.g.dart';

@freezed
abstract class ProductModelUpdated with _$ProductModelUpdated {
  const factory ProductModelUpdated({
    required String title,
    required String brand,
    required String model,
    required String color,
    required String category,
    required String discount,
  }) = _ProductModelUpdated;

  factory ProductModelUpdated.fromJson(Map<String, dynamic> json) =>
      _$ProductModelUpdatedFromJson(json);
}
