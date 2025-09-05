import 'package:auto_route/auto_route.dart';
import 'package:ecommerece_app/controller/splash/states/splash_screen_states.dart';
import 'package:ecommerece_app/controller/splash_bloc.dart';
import 'package:ecommerece_app/core/constants/app_constatnts.dart';
import 'package:ecommerece_app/core/constants/image_constant.dart';
import 'package:ecommerece_app/core/routing/app_router.gr.dart';
import 'package:ecommerece_app/ui/common_widget/bold_text_widget.dart';
import 'package:ecommerece_app/ui/common_widget/empty_widget.dart';
import 'package:ecommerece_app/ui/common_widget/filled_button_widget.dart';
import 'package:ecommerece_app/ui/common_widget/regular_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/splash/events/splash_screen_events.dart';
import '../../core/constants/color_constants.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          SplashBloc()..add(const SplashScreenEvents.initialise()),
      child: BlocConsumer<SplashBloc, SplashScreenstates>(
        builder: (BuildContext context, SplashScreenstates states) {
          switch (states) {
            case DisplaySplashScreen():
              return Scaffold(
                body: Center(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: ColorConstants.black,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(60),
                                    bottomRight: Radius.circular(60),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: CircleAvatar(
                                  minRadius: 80,
                                  backgroundColor: ColorConstants.white,
                                  child: Image.asset(ImageConstants.kLogoImage),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              BoldTextWidget(
                                textToDisplay: AppConstants.kAppName,
                                fontSize: 30,
                              ),
                              RegularTextWidget(
                                textToDisplay: AppConstants.kTagLine,
                                fontSize: 20,
                              ),
                              SizedBox(height: 20),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.only(bottom: 20),
                                width: MediaQuery.of(context).size.width - 80,
                                child: FilledButtonWidget(
                                  buttonText: AppConstants.kSplashButtonText,
                                  buttonColor: ColorConstants.black,
                                  onButtonPressed: () {
                                    context.router.replace(
                                      const BottomNavigationParentRoute(),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            case DisplaySplashloading():
              return Scaffold(body: Center(child: CircularProgressIndicator()));
            case MovingFromSplashToHome():
              return EmptyWidget();
          }
        },
        listener: (BuildContext context, SplashScreenstates states) {
          if (states is MovingFromSplashToHome) {
            context.router.replace(const HomeRoute());
          }
        },
      ),
    );
  }
}
