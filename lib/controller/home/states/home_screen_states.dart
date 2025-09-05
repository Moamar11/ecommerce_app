import 'package:ecommerece_app/data/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_states.freezed.dart';

@freezed
sealed class HomeScreenStates with _$HomeScreenStates {
  const HomeScreenStates._();

  const factory HomeScreenStates.displayProductListView(
    List<ProductModel> productList,
  ) = DisplayProductListingScreen;
  const factory HomeScreenStates.loading() = DisplayHomeLoading;
  const factory HomeScreenStates.error(String errorMessage) = HomeErrorScreen;
}
