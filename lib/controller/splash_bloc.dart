import 'package:ecommerece_app/controller/splash/events/splash_screen_events.dart';
import 'package:ecommerece_app/controller/splash/states/splash_screen_states.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashScreenEvents, SplashScreenstates> {
  SplashBloc() : super(SplashScreenstates.loading()) {
    on<initialiseSplashScreenEvent>(_init);
  }
  Future<void> _init(
    initialiseSplashScreenEvent event,
    Emitter<SplashScreenstates> emit,
  ) async {
    await Future.delayed(Duration(seconds: 2), () {
      emit(const SplashScreenstates.displaySplashView());
    });
  }
}
