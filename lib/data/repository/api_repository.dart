import 'dart:convert';

import 'package:ecommerece_app/core/constants/app_constatnts.dart';
import 'package:ecommerece_app/core/utils/logger_utils.dart';
import 'package:ecommerece_app/data/models/all_product_model.dart';
import 'package:ecommerece_app/data/models/product_model.dart';
import 'package:ecommerece_app/data/models/product_model_updated.dart';

import 'package:http/http.dart' as http;

class ApiRepository {
  final _logger = LoggerUtils();
  final _TAG = "ApiRepository";

  Future<List<ProductModel>?> hitServerToGetProductList(
    int page,
    int limit,
  ) async {
    try {
      String apiURL =
          "https://fakestoreapi.in/api/products?page=$page&limit=$limit";
      final response = await http.get(Uri.parse(apiURL));
      //_logger.log(TAG: _TAG, message: "Response body ${response.body}");
      _logger.log(
        TAG: _TAG,
        message: "Response status code ${response.statusCode}",
      );
      switch (response.statusCode) {
        case 200:
          {
            AllProductModel allProductModel = AllProductModel.fromJson(
              jsonDecode(response.body),
            );
            for (var individualProducts in allProductModel.productsList) {
              _logger.log(
                TAG: _TAG,
                message: "Individual products $individualProducts",
              );
            }
            return Future.value(allProductModel.productsList);
          }
          break;
        case 401:
          return Future.error(AppConstants.k401ErrorMessage);
        case 404:
          return Future.error(AppConstants.k404ErrorMessage);
        case 503:
          return Future.error(AppConstants.k503ErrorMessage);
        case 500:
          return Future.error(AppConstants.k500ErrorMessage);
      }
    } catch (exception, stacktrace) {
      _logger.log(
        TAG: _TAG,
        message: "Exception occurred $exception and stacktrace $stacktrace",
      );
      return Future.error("Exception occurred $exception");
    }
    return null;
  }

  Future<void> saveAProduct(ProductModelUpdated productTobeAdded) async {
    String url = "https://fakestoreapi.in/api/products";
    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(productTobeAdded.toJson()),
    );

    _logger.log(TAG: _TAG, message: response.body);
    _logger.log(TAG: _TAG, message: "${response.statusCode}");
  }

  Future<void> updateAProduct(ProductModelUpdated productTobeAdded) async {
    String url = "https://fakestoreapi.in/api/products/2";
    final response = await http.put(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(productTobeAdded.toJson()),
    );

    _logger.log(TAG: _TAG, message: response.body);
    _logger.log(TAG: _TAG, message: "${response.statusCode}");
  }

  Future<void> deleteAProduct(int productIdToBeDeleted) async {
    String url = "https://fakestoreapi.in/api/products/$productIdToBeDeleted";
    final response = await http.delete(Uri.parse(url));

    _logger.log(TAG: _TAG, message: response.body);
    _logger.log(TAG: _TAG, message: "${response.statusCode}");
  }
}
