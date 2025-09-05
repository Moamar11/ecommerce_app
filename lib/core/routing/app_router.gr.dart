// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:ecommerece_app/data/models/product_model.dart' as _i9;
import 'package:ecommerece_app/ui/screens/about_screen.dart' as _i1;
import 'package:ecommerece_app/ui/screens/bottom_navigation_parent_screen.dart'
    as _i2;
import 'package:ecommerece_app/ui/screens/features_screen.dart' as _i3;
import 'package:ecommerece_app/ui/screens/home_screen.dart' as _i4;
import 'package:ecommerece_app/ui/screens/product_description_screen.dart'
    as _i5;
import 'package:ecommerece_app/ui/screens/splash_screen.dart' as _i6;
import 'package:flutter/material.dart' as _i8;

/// generated route for
/// [_i1.AboutScreen]
class AboutRoute extends _i7.PageRouteInfo<AboutRouteArgs> {
  AboutRoute({_i8.Key? key, List<_i7.PageRouteInfo>? children})
    : super(
        AboutRoute.name,
        args: AboutRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'AboutRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AboutRouteArgs>(
        orElse: () => const AboutRouteArgs(),
      );
      return _i1.AboutScreen(key: args.key);
    },
  );
}

class AboutRouteArgs {
  const AboutRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'AboutRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AboutRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i2.BottomNavigationParentScreen]
class BottomNavigationParentRoute extends _i7.PageRouteInfo<void> {
  const BottomNavigationParentRoute({List<_i7.PageRouteInfo>? children})
    : super(BottomNavigationParentRoute.name, initialChildren: children);

  static const String name = 'BottomNavigationParentRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.BottomNavigationParentScreen();
    },
  );
}

/// generated route for
/// [_i3.FeaturesScreen]
class FeaturesRoute extends _i7.PageRouteInfo<FeaturesRouteArgs> {
  FeaturesRoute({_i8.Key? key, List<_i7.PageRouteInfo>? children})
    : super(
        FeaturesRoute.name,
        args: FeaturesRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'FeaturesRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FeaturesRouteArgs>(
        orElse: () => const FeaturesRouteArgs(),
      );
      return _i3.FeaturesScreen(key: args.key);
    },
  );
}

class FeaturesRouteArgs {
  const FeaturesRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'FeaturesRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FeaturesRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i5.ProductDescriptionScreen]
class ProductDescriptionRoute
    extends _i7.PageRouteInfo<ProductDescriptionRouteArgs> {
  ProductDescriptionRoute({
    required _i9.ProductModel productSelected,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
         ProductDescriptionRoute.name,
         args: ProductDescriptionRouteArgs(
           productSelected: productSelected,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'ProductDescriptionRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDescriptionRouteArgs>();
      return _i5.ProductDescriptionScreen(
        productSelected: args.productSelected,
        key: args.key,
      );
    },
  );
}

class ProductDescriptionRouteArgs {
  const ProductDescriptionRouteArgs({required this.productSelected, this.key});

  final _i9.ProductModel productSelected;

  final _i8.Key? key;

  @override
  String toString() {
    return 'ProductDescriptionRouteArgs{productSelected: $productSelected, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductDescriptionRouteArgs) return false;
    return productSelected == other.productSelected && key == other.key;
  }

  @override
  int get hashCode => productSelected.hashCode ^ key.hashCode;
}

/// generated route for
/// [_i6.SplashScreen]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.SplashScreen();
    },
  );
}
