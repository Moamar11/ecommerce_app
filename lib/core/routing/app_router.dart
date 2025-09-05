import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, path: '/splash', initial: true),
    AutoRoute(
      page: BottomNavigationParentRoute.page,
      path: '/bottomnavigation',
      children: [
        AutoRoute(page: HomeRoute.page, path: 'home'),
        AutoRoute(page: FeaturesRoute.page, path: 'features'),
        AutoRoute(page: AboutRoute.page, path: 'about'),
      ],
    ),
    AutoRoute(page: ProductDescriptionRoute.page, path: '/description'),
  ];
}
