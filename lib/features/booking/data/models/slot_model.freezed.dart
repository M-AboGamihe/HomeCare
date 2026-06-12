// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SlotModel {

 String get id; String get serviceId;@JsonKey(fromJson: _fromJson, toJson: _toJson) DateTime get startTime; bool get isAvailable;
/// Create a copy of SlotModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SlotModelCopyWith<SlotModel> get copyWith => _$SlotModelCopyWithImpl<SlotModel>(this as SlotModel, _$identity);

  /// Serializes this SlotModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SlotModel&&(identical(other.id, id) || other.id == id)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,serviceId,startTime,isAvailable);

@override
String toString() {
  return 'SlotModel(id: $id, serviceId: $serviceId, startTime: $startTime, isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class $SlotModelCopyWith<$Res>  {
  factory $SlotModelCopyWith(SlotModel value, $Res Function(SlotModel) _then) = _$SlotModelCopyWithImpl;
@useResult
$Res call({
 String id, String serviceId,@JsonKey(fromJson: _fromJson, toJson: _toJson) DateTime startTime, bool isAvailable
});




}
/// @nodoc
class _$SlotModelCopyWithImpl<$Res>
    implements $SlotModelCopyWith<$Res> {
  _$SlotModelCopyWithImpl(this._self, this._then);

  final SlotModel _self;
  final $Res Function(SlotModel) _then;

/// Create a copy of SlotModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? serviceId = null,Object? startTime = null,Object? isAvailable = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SlotModel].
extension SlotModelPatterns on SlotModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SlotModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SlotModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SlotModel value)  $default,){
final _that = this;
switch (_that) {
case _SlotModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SlotModel value)?  $default,){
final _that = this;
switch (_that) {
case _SlotModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String serviceId, @JsonKey(fromJson: _fromJson, toJson: _toJson)  DateTime startTime,  bool isAvailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SlotModel() when $default != null:
return $default(_that.id,_that.serviceId,_that.startTime,_that.isAvailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String serviceId, @JsonKey(fromJson: _fromJson, toJson: _toJson)  DateTime startTime,  bool isAvailable)  $default,) {final _that = this;
switch (_that) {
case _SlotModel():
return $default(_that.id,_that.serviceId,_that.startTime,_that.isAvailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String serviceId, @JsonKey(fromJson: _fromJson, toJson: _toJson)  DateTime startTime,  bool isAvailable)?  $default,) {final _that = this;
switch (_that) {
case _SlotModel() when $default != null:
return $default(_that.id,_that.serviceId,_that.startTime,_that.isAvailable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SlotModel implements SlotModel {
  const _SlotModel({required this.id, required this.serviceId, @JsonKey(fromJson: _fromJson, toJson: _toJson) required this.startTime, required this.isAvailable});
  factory _SlotModel.fromJson(Map<String, dynamic> json) => _$SlotModelFromJson(json);

@override final  String id;
@override final  String serviceId;
@override@JsonKey(fromJson: _fromJson, toJson: _toJson) final  DateTime startTime;
@override final  bool isAvailable;

/// Create a copy of SlotModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SlotModelCopyWith<_SlotModel> get copyWith => __$SlotModelCopyWithImpl<_SlotModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SlotModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SlotModel&&(identical(other.id, id) || other.id == id)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,serviceId,startTime,isAvailable);

@override
String toString() {
  return 'SlotModel(id: $id, serviceId: $serviceId, startTime: $startTime, isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class _$SlotModelCopyWith<$Res> implements $SlotModelCopyWith<$Res> {
  factory _$SlotModelCopyWith(_SlotModel value, $Res Function(_SlotModel) _then) = __$SlotModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String serviceId,@JsonKey(fromJson: _fromJson, toJson: _toJson) DateTime startTime, bool isAvailable
});




}
/// @nodoc
class __$SlotModelCopyWithImpl<$Res>
    implements _$SlotModelCopyWith<$Res> {
  __$SlotModelCopyWithImpl(this._self, this._then);

  final _SlotModel _self;
  final $Res Function(_SlotModel) _then;

/// Create a copy of SlotModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? serviceId = null,Object? startTime = null,Object? isAvailable = null,}) {
  return _then(_SlotModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
