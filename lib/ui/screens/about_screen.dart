import 'dart:convert';

import 'package:auto_route/annotations.dart';
import 'package:ecommerece_app/core/constants/color_constants.dart';
import 'package:ecommerece_app/core/utils/logger_utils.dart';
import 'package:ecommerece_app/data/models/product_model_updated.dart';
import 'package:ecommerece_app/data/repository/api_repository.dart';
import 'package:ecommerece_app/ui/common_widget/filled_button_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AboutScreen extends StatelessWidget {
  final _apiRepository = ApiRepository();
  final _logger = LoggerUtils();
  final _TAG = "AboutScreen";

  AboutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('About screen started'),
            FilledButtonWidget(
              buttonText: "Save a product",
              onButtonPressed: () {
                ProductModelUpdated dummyProduct = ProductModelUpdated(
                  title: "Mobile Phone",
                  brand: "Samsung",
                  model: "Note 8",
                  color: "Sharp grey",
                  category: "Sleek Device",
                  discount: "20",
                );
                _logger.log(
                  TAG: _TAG,
                  message: "Dummy product ${jsonEncode(dummyProduct.toJson())}",
                );
                _apiRepository.saveAProduct(dummyProduct);
              },
              buttonColor: ColorConstants.black,
            ),
            FilledButtonWidget(
              buttonText: "Update a product",
              onButtonPressed: () {
                ProductModelUpdated dummyProduct = ProductModelUpdated(
                  title: "Pager Phone",
                  brand: "Nokia",
                  model: "ABC",
                  color: "Grey",
                  category: "Sleek Device",
                  discount: "10",
                );

                _apiRepository.updateAProduct(dummyProduct);
              },
              buttonColor: ColorConstants.black,
            ),
            FilledButtonWidget(
              buttonText: "Delete a product",
              onButtonPressed: () {
                _apiRepository.deleteAProduct(99);
              },
              buttonColor: ColorConstants.black,
            ),
          ],
        ),
      ),
    );
  }
}
