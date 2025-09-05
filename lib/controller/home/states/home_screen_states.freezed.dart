// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeScreenStates {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeScreenStates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeScreenStates()';
}


}

/// @nodoc
class $HomeScreenStatesCopyWith<$Res>  {
$HomeScreenStatesCopyWith(HomeScreenStates _, $Res Function(HomeScreenStates) __);
}


/// Adds pattern-matching-related methods to [HomeScreenStates].
extension HomeScreenStatesPatterns on HomeScreenStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DisplayProductListingScreen value)?  displayProductListView,TResult Function( DisplayHomeLoading value)?  loading,TResult Function( HomeErrorScreen value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DisplayProductListingScreen() when displayProductListView != null:
return displayProductListView(_that);case DisplayHomeLoading() when loading != null:
return loading(_that);case HomeErrorScreen() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DisplayProductListingScreen value)  displayProductListView,required TResult Function( DisplayHomeLoading value)  loading,required TResult Function( HomeErrorScreen value)  error,}){
final _that = this;
switch (_that) {
case DisplayProductListingScreen():
return displayProductListView(_that);case DisplayHomeLoading():
return loading(_that);case HomeErrorScreen():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DisplayProductListingScreen value)?  displayProductListView,TResult? Function( DisplayHomeLoading value)?  loading,TResult? Function( HomeErrorScreen value)?  error,}){
final _that = this;
switch (_that) {
case DisplayProductListingScreen() when displayProductListView != null:
return displayProductListView(_that);case DisplayHomeLoading() when loading != null:
return loading(_that);case HomeErrorScreen() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<ProductModel> productList)?  displayProductListView,TResult Function()?  loading,TResult Function( String errorMessage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DisplayProductListingScreen() when displayProductListView != null:
return displayProductListView(_that.productList);case DisplayHomeLoading() when loading != null:
return loading();case HomeErrorScreen() when error != null:
return error(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<ProductModel> productList)  displayProductListView,required TResult Function()  loading,required TResult Function( String errorMessage)  error,}) {final _that = this;
switch (_that) {
case DisplayProductListingScreen():
return displayProductListView(_that.productList);case DisplayHomeLoading():
return loading();case HomeErrorScreen():
return error(_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<ProductModel> productList)?  displayProductListView,TResult? Function()?  loading,TResult? Function( String errorMessage)?  error,}) {final _that = this;
switch (_that) {
case DisplayProductListingScreen() when displayProductListView != null:
return displayProductListView(_that.productList);case DisplayHomeLoading() when loading != null:
return loading();case HomeErrorScreen() when error != null:
return error(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class DisplayProductListingScreen extends HomeScreenStates {
  const DisplayProductListingScreen(final  List<ProductModel> productList): _productList = productList,super._();
  

 final  List<ProductModel> _productList;
 List<ProductModel> get productList {
  if (_productList is EqualUnmodifiableListView) return _productList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productList);
}


/// Create a copy of HomeScreenStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisplayProductListingScreenCopyWith<DisplayProductListingScreen> get copyWith => _$DisplayProductListingScreenCopyWithImpl<DisplayProductListingScreen>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisplayProductListingScreen&&const DeepCollectionEquality().equals(other._productList, _productList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_productList));

@override
String toString() {
  return 'HomeScreenStates.displayProductListView(productList: $productList)';
}


}

/// @nodoc
abstract mixin class $DisplayProductListingScreenCopyWith<$Res> implements $HomeScreenStatesCopyWith<$Res> {
  factory $DisplayProductListingScreenCopyWith(DisplayProductListingScreen value, $Res Function(DisplayProductListingScreen) _then) = _$DisplayProductListingScreenCopyWithImpl;
@useResult
$Res call({
 List<ProductModel> productList
});




}
/// @nodoc
class _$DisplayProductListingScreenCopyWithImpl<$Res>
    implements $DisplayProductListingScreenCopyWith<$Res> {
  _$DisplayProductListingScreenCopyWithImpl(this._self, this._then);

  final DisplayProductListingScreen _self;
  final $Res Function(DisplayProductListingScreen) _then;

/// Create a copy of HomeScreenStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productList = null,}) {
  return _then(DisplayProductListingScreen(
null == productList ? _self._productList : productList // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,
  ));
}


}

/// @nodoc


class DisplayHomeLoading extends HomeScreenStates {
  const DisplayHomeLoading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisplayHomeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeScreenStates.loading()';
}


}




/// @nodoc


class HomeErrorScreen extends HomeScreenStates {
  const HomeErrorScreen(this.errorMessage): super._();
  

 final  String errorMessage;

/// Create a copy of HomeScreenStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeErrorScreenCopyWith<HomeErrorScreen> get copyWith => _$HomeErrorScreenCopyWithImpl<HomeErrorScreen>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeErrorScreen&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'HomeScreenStates.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $HomeErrorScreenCopyWith<$Res> implements $HomeScreenStatesCopyWith<$Res> {
  factory $HomeErrorScreenCopyWith(HomeErrorScreen value, $Res Function(HomeErrorScreen) _then) = _$HomeErrorScreenCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$HomeErrorScreenCopyWithImpl<$Res>
    implements $HomeErrorScreenCopyWith<$Res> {
  _$HomeErrorScreenCopyWithImpl(this._self, this._then);

  final HomeErrorScreen _self;
  final $Res Function(HomeErrorScreen) _then;

/// Create a copy of HomeScreenStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(HomeErrorScreen(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
