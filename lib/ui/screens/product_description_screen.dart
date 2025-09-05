import 'package:auto_route/annotations.dart';
import 'package:ecommerece_app/core/constants/color_constants.dart';
import 'package:ecommerece_app/core/constants/image_constant.dart';
import 'package:ecommerece_app/data/models/product_model.dart';
import 'package:ecommerece_app/ui/common_widget/bold_text_widget.dart';
import 'package:ecommerece_app/ui/common_widget/custom_app_bar.dart';
import 'package:ecommerece_app/ui/common_widget/empty_widget.dart';
import 'package:ecommerece_app/ui/common_widget/filled_button_widget.dart';
import 'package:ecommerece_app/ui/common_widget/regular_text_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductDescriptionScreen extends StatelessWidget {
  final ProductModel productSelected;
  const ProductDescriptionScreen({required this.productSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      productSelected.image,
                      fit: BoxFit.contain,
                      errorBuilder: (BuildContext context, object, stackTrace) {
                        return Image.asset(ImageConstants.kLogoImage);
                      },
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Builder(
                      builder: (BuildContext context) {
                        if (productSelected.onSale) {
                          return BoldTextWidget(
                            textToDisplay: "On Sale",
                            textColor: Colors.red,
                          );
                        } else {
                          return EmptyWidget();
                        }
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: ColorConstants.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: BoldTextWidget(
                        textToDisplay: "Rs. ${productSelected.price}",
                        textColor: ColorConstants.white,
                        fontSize: 26,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: ColorConstants.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: RegularTextWidget(
                        textToDisplay:
                            "Discount \n ${productSelected.discount}%",
                        textColor: ColorConstants.white,
                        textAlign: TextAlign.center,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: ColorConstants.kYellowColor,
                    ),
                    child: BoldTextWidget(
                      textToDisplay: productSelected.title,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BoldTextWidget(textToDisplay: "Specification"),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Color: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: productSelected.color,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Brand: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: productSelected.brand,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        BoldTextWidget(textToDisplay: "Product Description"),
                        RegularTextWidget(
                          textToDisplay: productSelected.description,
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: FilledButtonWidget(
                            buttonText: "Buy this product",
                            buttonColor: ColorConstants.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
