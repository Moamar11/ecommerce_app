import 'package:ecommerece_app/core/constants/image_constant.dart';
import 'package:ecommerece_app/ui/common_widget/bold_text_widget.dart';
import 'package:ecommerece_app/ui/common_widget/regular_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DisplayErrorWidget extends StatelessWidget {
  final String errorMessage;
  const DisplayErrorWidget({required this.errorMessage, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(ImageConstants.kErrorLottie),
            BoldTextWidget(
              textToDisplay: "We are learning what went wrong",
              fontSize: 26,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            RegularTextWidget(
              textToDisplay: errorMessage,
              textColor: Colors.redAccent,
              fontSize: 16,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
