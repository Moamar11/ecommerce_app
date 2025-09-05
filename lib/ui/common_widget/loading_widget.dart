import 'package:ecommerece_app/core/constants/color_constants.dart';
import 'package:ecommerece_app/core/constants/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.black,
      body: Center(
        child: ClipOval(
          clipBehavior: Clip.antiAlias,
          child: Lottie.asset(ImageConstants.kLoadingLottie),
        ),
      ),
    );
  }
}
