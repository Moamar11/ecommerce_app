import 'package:auto_route/auto_route.dart';
import 'package:ecommerece_app/controller/home/home_bloc.dart';
import 'package:ecommerece_app/controller/home/states/home_screen_states.dart';
import 'package:ecommerece_app/core/constants/color_constants.dart';
import 'package:ecommerece_app/core/constants/image_constant.dart';
import 'package:ecommerece_app/core/routing/app_router.gr.dart';
import 'package:ecommerece_app/core/utils/logger_utils.dart';
import 'package:ecommerece_app/data/models/product_model.dart';
import 'package:ecommerece_app/ui/common_widget/bold_text_widget.dart';
import 'package:ecommerece_app/ui/common_widget/display_error_widget.dart';
import 'package:ecommerece_app/ui/common_widget/empty_widget.dart';
import 'package:ecommerece_app/ui/common_widget/loading_widget.dart';
import 'package:ecommerece_app/ui/common_widget/regular_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/home/events/home_screen_events.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _listController = ScrollController();
  final _logger = LoggerUtils();
  final _TAG = "HomeScreen";

  @override
  void initState() {
    _listController.addListener(_loadMoreItems);
    BlocProvider.of<HomeBloc>(
      context,
    ).add(const HomeScreenEvents.loadProducts());
    super.initState();
  }

  void _loadMoreItems() {
    if (_listController.position.pixels ==
        _listController.position.maxScrollExtent) {
      _logger.log(TAG: _TAG, message: "Reached rock bottom of list");
      BlocProvider.of<HomeBloc>(
        context,
      ).add(const HomeScreenEvents.loadProducts());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeScreenStates>(
      builder: (BuildContext context, HomeScreenStates states) {
        switch (states) {
          case DisplayProductListingScreen():
            List<ProductModel> productList = states.productList;
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: ColorConstants.kYellowColor,
                title: RegularTextWidget(
                  textToDisplay: 'Product count ${productList.length}',
                  fontSize: 16,
                ),
              ),
              body: ListView.builder(
                controller: _listController,
                itemCount: productList.length,
                itemBuilder: (BuildContext context, int index) {
                  ProductModel currentProducts = productList[index];
                  return SizedBox(
                    height: 300,
                    child: GestureDetector(
                      onTap: () {
                        context.router.navigate(
                          ProductDescriptionRoute(
                            productSelected: currentProducts,
                          ),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ColorConstants.black,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Builder(
                                      builder: (BuildContext context) {
                                        if (currentProducts.discount != null &&
                                            currentProducts.discount != 0.0) {
                                          return Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color:
                                                  ColorConstants.kYellowColor,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: RegularTextWidget(
                                              textToDisplay:
                                                  "Available at \n ${currentProducts.discount}%",
                                              textAlign: TextAlign.center,
                                            ),
                                          );
                                        } else {
                                          return EmptyWidget();
                                        }
                                      },
                                    ),

                                    SizedBox(width: 10),
                                    ClipOval(
                                      child: Image.network(
                                        currentProducts.image,
                                        fit: BoxFit.contain,
                                        errorBuilder:
                                            (
                                              BuildContext context,
                                              object,
                                              stackTrace,
                                            ) {
                                              return Image.asset(
                                                ImageConstants.kLogoImage,
                                              );
                                            },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: ColorConstants.kYellowColor,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      BoldTextWidget(
                                        textToDisplay: currentProducts.title,
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 20),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: BoldTextWidget(
                                          textToDisplay:
                                              "Rs. ${currentProducts.price}",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          case DisplayHomeLoading():
            return LoadingWidget();
          case HomeErrorScreen():
            return DisplayErrorWidget(errorMessage: states.errorMessage);
        }
      },
      listener: (BuildContext context, HomeScreenStates states) {},
    );
  }
}
