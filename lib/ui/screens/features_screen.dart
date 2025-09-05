import 'package:auto_route/annotations.dart';
import 'package:ecommerece_app/core/utils/logger_utils.dart';
import 'package:ecommerece_app/ui/common_widget/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../core/constants/color_constants.dart';

@RoutePage()
class FeaturesScreen extends StatelessWidget {
  final _logger = LoggerUtils();
  final _TAG = "FeaturesScreen";

  FeaturesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      body: IntroductionScreen(
        globalBackgroundColor: ColorConstants.white,
        pages: [
          PageViewModel(
            titleWidget: EmptyWidget(),
            bodyWidget: buildImage("assets/images/intro_1.png"),
          ),
          PageViewModel(
            titleWidget: EmptyWidget(),
            bodyWidget: buildImage("assets/images/intro_2.png"),
          ),
          PageViewModel(
            titleWidget: EmptyWidget(),
            bodyWidget: buildImage("assets/images/intro_3.png"),
          ),
          /*PageViewModel(
              titleWidget: EmptyWidget(),
              image: ClipOval(
                clipBehavior: Clip.hardEdge,
                child: buildImage("assets/images/logo.png"),
              ),
              bodyWidget: BoldTextWidget(textToDisplay: "Buy all items in a subsidised rate")
          ),*/
        ],
        onDone: () => onDoneClicked(context),
        onSkip: () =>
            onSkipClicked(context), // You can override onSkip callback
        showSkipButton: true,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: false,
        //rtl: true, // Display as right-to-left
        back: const Icon(Icons.arrow_back),
        skip: const Text(
          'Skip',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: ColorConstants.white,
          ),
        ),
        next: const Icon(Icons.arrow_forward),
        done: const Text(
          'Done',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: ColorConstants.white,
          ),
        ),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: getDotsDecorator(),

        dotsContainerDecorator: const ShapeDecoration(
          color: ColorConstants.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }

  void onDoneClicked(BuildContext context) {
    _logger.log(TAG: _TAG, message: "Done button clicked");
  }

  void onSkipClicked(BuildContext context) {
    _logger.log(TAG: _TAG, message: "Skip button clicked");
  }

  Widget buildImage(String imagePath) {
    return Center(child: Image.asset(imagePath, height: 600));
  }

  //method to customise the page style
  PageDecoration getPageDecoration() {
    return const PageDecoration(
      imagePadding: EdgeInsets.only(top: 120),
      pageColor: Colors.white,
      bodyTextStyle: TextStyle(color: Colors.black54, fontSize: 15),
      fullScreen: true,
    );
  }

  //method to customize the dots style
  DotsDecorator getDotsDecorator() {
    return const DotsDecorator(
      spacing: EdgeInsets.symmetric(horizontal: 2),
      activeColor: ColorConstants.kYellowColor,
      color: Colors.grey,
      activeSize: Size(12, 5),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
    );
  }
}
