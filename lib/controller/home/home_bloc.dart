import 'package:ecommerece_app/controller/home/events/home_screen_events.dart';
import 'package:ecommerece_app/controller/home/states/home_screen_states.dart';
import 'package:ecommerece_app/core/utils/logger_utils.dart';
import 'package:ecommerece_app/data/models/product_model.dart';
import 'package:ecommerece_app/data/repository/api_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeScreenEvents, HomeScreenStates> {
  final _logger = LoggerUtils();
  final _TAG = "HomeBloc";
  final _apiRepository = ApiRepository();
  int limit = 0;
  int pages = 1;

  HomeBloc() : super(const HomeScreenStates.loading()) {
    on<LoadProductsHomeScreenEvent>(_getData);
  }

  Future<void> _getData(
    LoadProductsHomeScreenEvent event,
    Emitter<HomeScreenStates> emit,
  ) async {
    emit(const HomeScreenStates.loading());
    if (limit > 50) {
      pages = pages + 1;
      limit = 0;
    }
    limit = limit + 10;
    _logger.log(
      TAG: _TAG,
      message: "Showing product limit $limit number of items",
    );
    await _apiRepository
        .hitServerToGetProductList(pages, limit)
        .then((List<ProductModel>? productList) {
          if (productList != null && productList.isNotEmpty) {
            emit(HomeScreenStates.displayProductListView(productList));
          } else {
            emit(HomeScreenStates.error("Empty product list was received"));
          }
        })
        .onError((exception, stackTrace) {
          emit(HomeScreenStates.error(exception.toString()));
        });
  }
}
