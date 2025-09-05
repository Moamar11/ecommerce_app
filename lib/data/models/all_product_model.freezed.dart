// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllProductModel {

 String get status; String get message;@JsonKey(name: "products") List<ProductModel> get productsList;
/// Create a copy of AllProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllProductModelCopyWith<AllProductModel> get copyWith => _$AllProductModelCopyWithImpl<AllProductModel>(this as AllProductModel, _$identity);

  /// Serializes this AllProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllProductModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.productsList, productsList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(productsList));

@override
String toString() {
  return 'AllProductModel(status: $status, message: $message, productsList: $productsList)';
}


}

/// @nodoc
abstract mixin class $AllProductModelCopyWith<$Res>  {
  factory $AllProductModelCopyWith(AllProductModel value, $Res Function(AllProductModel) _then) = _$AllProductModelCopyWithImpl;
@useResult
$Res call({
 String status, String message,@JsonKey(name: "products") List<ProductModel> productsList
});




}
/// @nodoc
class _$AllProductModelCopyWithImpl<$Res>
    implements $AllProductModelCopyWith<$Res> {
  _$AllProductModelCopyWithImpl(this._self, this._then);

  final AllProductModel _self;
  final $Res Function(AllProductModel) _then;

/// Create a copy of AllProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? productsList = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,productsList: null == productsList ? _self.productsList : productsList // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AllProductModel].
extension AllProductModelPatterns on AllProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AllProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AllProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AllProductModel value)  $default,){
final _that = this;
switch (_that) {
case _AllProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AllProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _AllProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String message, @JsonKey(name: "products")  List<ProductModel> productsList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AllProductModel() when $default != null:
return $default(_that.status,_that.message,_that.productsList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String message, @JsonKey(name: "products")  List<ProductModel> productsList)  $default,) {final _that = this;
switch (_that) {
case _AllProductModel():
return $default(_that.status,_that.message,_that.productsList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String message, @JsonKey(name: "products")  List<ProductModel> productsList)?  $default,) {final _that = this;
switch (_that) {
case _AllProductModel() when $default != null:
return $default(_that.status,_that.message,_that.productsList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AllProductModel implements AllProductModel {
  const _AllProductModel({required this.status, required this.message, @JsonKey(name: "products") required final  List<ProductModel> productsList}): _productsList = productsList;
  factory _AllProductModel.fromJson(Map<String, dynamic> json) => _$AllProductModelFromJson(json);

@override final  String status;
@override final  String message;
 final  List<ProductModel> _productsList;
@override@JsonKey(name: "products") List<ProductModel> get productsList {
  if (_productsList is EqualUnmodifiableListView) return _productsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productsList);
}


/// Create a copy of AllProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AllProductModelCopyWith<_AllProductModel> get copyWith => __$AllProductModelCopyWithImpl<_AllProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AllProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllProductModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._productsList, _productsList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_productsList));

@override
String toString() {
  return 'AllProductModel(status: $status, message: $message, productsList: $productsList)';
}


}

/// @nodoc
abstract mixin class _$AllProductModelCopyWith<$Res> implements $AllProductModelCopyWith<$Res> {
  factory _$AllProductModelCopyWith(_AllProductModel value, $Res Function(_AllProductModel) _then) = __$AllProductModelCopyWithImpl;
@override @useResult
$Res call({
 String status, String message,@JsonKey(name: "products") List<ProductModel> productsList
});




}
/// @nodoc
class __$AllProductModelCopyWithImpl<$Res>
    implements _$AllProductModelCopyWith<$Res> {
  __$AllProductModelCopyWithImpl(this._self, this._then);

  final _AllProductModel _self;
  final $Res Function(_AllProductModel) _then;

/// Create a copy of AllProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? productsList = null,}) {
  return _then(_AllProductModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,productsList: null == productsList ? _self._productsList : productsList // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,
  ));
}


}

// dart format on
