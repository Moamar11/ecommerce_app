// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model_updated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductModelUpdated {

 String get title; String get brand; String get model; String get color; String get category; String get discount;
/// Create a copy of ProductModelUpdated
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductModelUpdatedCopyWith<ProductModelUpdated> get copyWith => _$ProductModelUpdatedCopyWithImpl<ProductModelUpdated>(this as ProductModelUpdated, _$identity);

  /// Serializes this ProductModelUpdated to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductModelUpdated&&(identical(other.title, title) || other.title == title)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.model, model) || other.model == model)&&(identical(other.color, color) || other.color == color)&&(identical(other.category, category) || other.category == category)&&(identical(other.discount, discount) || other.discount == discount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,brand,model,color,category,discount);

@override
String toString() {
  return 'ProductModelUpdated(title: $title, brand: $brand, model: $model, color: $color, category: $category, discount: $discount)';
}


}

/// @nodoc
abstract mixin class $ProductModelUpdatedCopyWith<$Res>  {
  factory $ProductModelUpdatedCopyWith(ProductModelUpdated value, $Res Function(ProductModelUpdated) _then) = _$ProductModelUpdatedCopyWithImpl;
@useResult
$Res call({
 String title, String brand, String model, String color, String category, String discount
});




}
/// @nodoc
class _$ProductModelUpdatedCopyWithImpl<$Res>
    implements $ProductModelUpdatedCopyWith<$Res> {
  _$ProductModelUpdatedCopyWithImpl(this._self, this._then);

  final ProductModelUpdated _self;
  final $Res Function(ProductModelUpdated) _then;

/// Create a copy of ProductModelUpdated
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? brand = null,Object? model = null,Object? color = null,Object? category = null,Object? discount = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductModelUpdated].
extension ProductModelUpdatedPatterns on ProductModelUpdated {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductModelUpdated value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductModelUpdated() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductModelUpdated value)  $default,){
final _that = this;
switch (_that) {
case _ProductModelUpdated():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductModelUpdated value)?  $default,){
final _that = this;
switch (_that) {
case _ProductModelUpdated() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String brand,  String model,  String color,  String category,  String discount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductModelUpdated() when $default != null:
return $default(_that.title,_that.brand,_that.model,_that.color,_that.category,_that.discount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String brand,  String model,  String color,  String category,  String discount)  $default,) {final _that = this;
switch (_that) {
case _ProductModelUpdated():
return $default(_that.title,_that.brand,_that.model,_that.color,_that.category,_that.discount);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String brand,  String model,  String color,  String category,  String discount)?  $default,) {final _that = this;
switch (_that) {
case _ProductModelUpdated() when $default != null:
return $default(_that.title,_that.brand,_that.model,_that.color,_that.category,_that.discount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductModelUpdated implements ProductModelUpdated {
  const _ProductModelUpdated({required this.title, required this.brand, required this.model, required this.color, required this.category, required this.discount});
  factory _ProductModelUpdated.fromJson(Map<String, dynamic> json) => _$ProductModelUpdatedFromJson(json);

@override final  String title;
@override final  String brand;
@override final  String model;
@override final  String color;
@override final  String category;
@override final  String discount;

/// Create a copy of ProductModelUpdated
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductModelUpdatedCopyWith<_ProductModelUpdated> get copyWith => __$ProductModelUpdatedCopyWithImpl<_ProductModelUpdated>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductModelUpdatedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductModelUpdated&&(identical(other.title, title) || other.title == title)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.model, model) || other.model == model)&&(identical(other.color, color) || other.color == color)&&(identical(other.category, category) || other.category == category)&&(identical(other.discount, discount) || other.discount == discount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,brand,model,color,category,discount);

@override
String toString() {
  return 'ProductModelUpdated(title: $title, brand: $brand, model: $model, color: $color, category: $category, discount: $discount)';
}


}

/// @nodoc
abstract mixin class _$ProductModelUpdatedCopyWith<$Res> implements $ProductModelUpdatedCopyWith<$Res> {
  factory _$ProductModelUpdatedCopyWith(_ProductModelUpdated value, $Res Function(_ProductModelUpdated) _then) = __$ProductModelUpdatedCopyWithImpl;
@override @useResult
$Res call({
 String title, String brand, String model, String color, String category, String discount
});




}
/// @nodoc
class __$ProductModelUpdatedCopyWithImpl<$Res>
    implements _$ProductModelUpdatedCopyWith<$Res> {
  __$ProductModelUpdatedCopyWithImpl(this._self, this._then);

  final _ProductModelUpdated _self;
  final $Res Function(_ProductModelUpdated) _then;

/// Create a copy of ProductModelUpdated
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? brand = null,Object? model = null,Object? color = null,Object? category = null,Object? discount = null,}) {
  return _then(_ProductModelUpdated(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
