import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_events.freezed.dart';

@freezed
sealed class SplashScreenEvents with _$SplashScreenEvents {
  const SplashScreenEvents._();
  const factory SplashScreenEvents.initialise() = initialiseSplashScreenEvent;
}
