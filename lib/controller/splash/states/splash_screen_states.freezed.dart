// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_screen_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashScreenstates {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashScreenstates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashScreenstates()';
}


}

/// @nodoc
class $SplashScreenstatesCopyWith<$Res>  {
$SplashScreenstatesCopyWith(SplashScreenstates _, $Res Function(SplashScreenstates) __);
}


/// Adds pattern-matching-related methods to [SplashScreenstates].
extension SplashScreenstatesPatterns on SplashScreenstates {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DisplaySplashScreen value)?  displaySplashView,TResult Function( DisplaySplashloading value)?  loading,TResult Function( MovingFromSplashToHome value)?  startNextScreen,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DisplaySplashScreen() when displaySplashView != null:
return displaySplashView(_that);case DisplaySplashloading() when loading != null:
return loading(_that);case MovingFromSplashToHome() when startNextScreen != null:
return startNextScreen(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DisplaySplashScreen value)  displaySplashView,required TResult Function( DisplaySplashloading value)  loading,required TResult Function( MovingFromSplashToHome value)  startNextScreen,}){
final _that = this;
switch (_that) {
case DisplaySplashScreen():
return displaySplashView(_that);case DisplaySplashloading():
return loading(_that);case MovingFromSplashToHome():
return startNextScreen(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DisplaySplashScreen value)?  displaySplashView,TResult? Function( DisplaySplashloading value)?  loading,TResult? Function( MovingFromSplashToHome value)?  startNextScreen,}){
final _that = this;
switch (_that) {
case DisplaySplashScreen() when displaySplashView != null:
return displaySplashView(_that);case DisplaySplashloading() when loading != null:
return loading(_that);case MovingFromSplashToHome() when startNextScreen != null:
return startNextScreen(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  displaySplashView,TResult Function()?  loading,TResult Function()?  startNextScreen,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DisplaySplashScreen() when displaySplashView != null:
return displaySplashView();case DisplaySplashloading() when loading != null:
return loading();case MovingFromSplashToHome() when startNextScreen != null:
return startNextScreen();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  displaySplashView,required TResult Function()  loading,required TResult Function()  startNextScreen,}) {final _that = this;
switch (_that) {
case DisplaySplashScreen():
return displaySplashView();case DisplaySplashloading():
return loading();case MovingFromSplashToHome():
return startNextScreen();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  displaySplashView,TResult? Function()?  loading,TResult? Function()?  startNextScreen,}) {final _that = this;
switch (_that) {
case DisplaySplashScreen() when displaySplashView != null:
return displaySplashView();case DisplaySplashloading() when loading != null:
return loading();case MovingFromSplashToHome() when startNextScreen != null:
return startNextScreen();case _:
  return null;

}
}

}

/// @nodoc


class DisplaySplashScreen extends SplashScreenstates {
  const DisplaySplashScreen(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisplaySplashScreen);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashScreenstates.displaySplashView()';
}


}




/// @nodoc


class DisplaySplashloading extends SplashScreenstates {
  const DisplaySplashloading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisplaySplashloading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashScreenstates.loading()';
}


}




/// @nodoc


class MovingFromSplashToHome extends SplashScreenstates {
  const MovingFromSplashToHome(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovingFromSplashToHome);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashScreenstates.startNextScreen()';
}


}




// dart format on
