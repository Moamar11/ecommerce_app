import 'package:auto_route/auto_route.dart';
import 'package:ecommerece_app/core/constants/color_constants.dart';
import 'package:ecommerece_app/core/routing/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

@RoutePage()
class BottomNavigationParentScreen extends StatelessWidget {
  const BottomNavigationParentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      // list of your tab routes
      // routes used here must be declared as children
      // routes of /dashboard
      routes: [HomeRoute(), FeaturesRoute(), AboutRoute()],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        // the passed child is technically our animated selected-tab page
        child: child,
      ),
      builder: (context, child) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        // alternatively, you could use a global key
        return Scaffold(
          body: child,
          bottomNavigationBar: SalomonBottomBar(
            backgroundColor: ColorConstants.black,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              // here we switch between tabs
              tabsRouter.setActiveIndex(index);
            },
            items: [
              SalomonBottomBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                selectedColor: ColorConstants.kYellowColor,
                unselectedColor: ColorConstants.white,
              ),

              /// Likes
              SalomonBottomBarItem(
                icon: Icon(Icons.favorite_border),
                title: Text("Features"),
                selectedColor: ColorConstants.kYellowColor,
                unselectedColor: ColorConstants.white,
              ),

              /// Search
              SalomonBottomBarItem(
                icon: Icon(Icons.search),
                title: Text("About"),
                selectedColor: ColorConstants.kYellowColor,
                unselectedColor: ColorConstants.white,
              ),
            ],
          ),
        );
      },
    );
  }
}
