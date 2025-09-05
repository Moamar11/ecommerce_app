import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_states.freezed.dart';

@freezed
sealed class SplashScreenstates with _$SplashScreenstates {
  const SplashScreenstates._();

  const factory SplashScreenstates.displaySplashView() = DisplaySplashScreen;
  const factory SplashScreenstates.loading() = DisplaySplashloading;
  const factory SplashScreenstates.startNextScreen() = MovingFromSplashToHome;
}
