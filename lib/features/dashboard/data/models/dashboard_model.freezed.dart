// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardModel {

 int get totalBookings; int get activeBookings; int get completedBookings; int get cancelledBookings; List<BookingModel> get recentBookings;
/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardModelCopyWith<DashboardModel> get copyWith => _$DashboardModelCopyWithImpl<DashboardModel>(this as DashboardModel, _$identity);

  /// Serializes this DashboardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardModel&&(identical(other.totalBookings, totalBookings) || other.totalBookings == totalBookings)&&(identical(other.activeBookings, activeBookings) || other.activeBookings == activeBookings)&&(identical(other.completedBookings, completedBookings) || other.completedBookings == completedBookings)&&(identical(other.cancelledBookings, cancelledBookings) || other.cancelledBookings == cancelledBookings)&&const DeepCollectionEquality().equals(other.recentBookings, recentBookings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalBookings,activeBookings,completedBookings,cancelledBookings,const DeepCollectionEquality().hash(recentBookings));

@override
String toString() {
  return 'DashboardModel(totalBookings: $totalBookings, activeBookings: $activeBookings, completedBookings: $completedBookings, cancelledBookings: $cancelledBookings, recentBookings: $recentBookings)';
}


}

/// @nodoc
abstract mixin class $DashboardModelCopyWith<$Res>  {
  factory $DashboardModelCopyWith(DashboardModel value, $Res Function(DashboardModel) _then) = _$DashboardModelCopyWithImpl;
@useResult
$Res call({
 int totalBookings, int activeBookings, int completedBookings, int cancelledBookings, List<BookingModel> recentBookings
});




}
/// @nodoc
class _$DashboardModelCopyWithImpl<$Res>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._self, this._then);

  final DashboardModel _self;
  final $Res Function(DashboardModel) _then;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalBookings = null,Object? activeBookings = null,Object? completedBookings = null,Object? cancelledBookings = null,Object? recentBookings = null,}) {
  return _then(_self.copyWith(
totalBookings: null == totalBookings ? _self.totalBookings : totalBookings // ignore: cast_nullable_to_non_nullable
as int,activeBookings: null == activeBookings ? _self.activeBookings : activeBookings // ignore: cast_nullable_to_non_nullable
as int,completedBookings: null == completedBookings ? _self.completedBookings : completedBookings // ignore: cast_nullable_to_non_nullable
as int,cancelledBookings: null == cancelledBookings ? _self.cancelledBookings : cancelledBookings // ignore: cast_nullable_to_non_nullable
as int,recentBookings: null == recentBookings ? _self.recentBookings : recentBookings // ignore: cast_nullable_to_non_nullable
as List<BookingModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardModel].
extension DashboardModelPatterns on DashboardModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalBookings,  int activeBookings,  int completedBookings,  int cancelledBookings,  List<BookingModel> recentBookings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
return $default(_that.totalBookings,_that.activeBookings,_that.completedBookings,_that.cancelledBookings,_that.recentBookings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalBookings,  int activeBookings,  int completedBookings,  int cancelledBookings,  List<BookingModel> recentBookings)  $default,) {final _that = this;
switch (_that) {
case _DashboardModel():
return $default(_that.totalBookings,_that.activeBookings,_that.completedBookings,_that.cancelledBookings,_that.recentBookings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalBookings,  int activeBookings,  int completedBookings,  int cancelledBookings,  List<BookingModel> recentBookings)?  $default,) {final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
return $default(_that.totalBookings,_that.activeBookings,_that.completedBookings,_that.cancelledBookings,_that.recentBookings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardModel extends DashboardModel {
  const _DashboardModel({required this.totalBookings, required this.activeBookings, required this.completedBookings, required this.cancelledBookings, final  List<BookingModel> recentBookings = const []}): _recentBookings = recentBookings,super._();
  factory _DashboardModel.fromJson(Map<String, dynamic> json) => _$DashboardModelFromJson(json);

@override final  int totalBookings;
@override final  int activeBookings;
@override final  int completedBookings;
@override final  int cancelledBookings;
 final  List<BookingModel> _recentBookings;
@override@JsonKey() List<BookingModel> get recentBookings {
  if (_recentBookings is EqualUnmodifiableListView) return _recentBookings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentBookings);
}


/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardModelCopyWith<_DashboardModel> get copyWith => __$DashboardModelCopyWithImpl<_DashboardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardModel&&(identical(other.totalBookings, totalBookings) || other.totalBookings == totalBookings)&&(identical(other.activeBookings, activeBookings) || other.activeBookings == activeBookings)&&(identical(other.completedBookings, completedBookings) || other.completedBookings == completedBookings)&&(identical(other.cancelledBookings, cancelledBookings) || other.cancelledBookings == cancelledBookings)&&const DeepCollectionEquality().equals(other._recentBookings, _recentBookings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalBookings,activeBookings,completedBookings,cancelledBookings,const DeepCollectionEquality().hash(_recentBookings));

@override
String toString() {
  return 'DashboardModel(totalBookings: $totalBookings, activeBookings: $activeBookings, completedBookings: $completedBookings, cancelledBookings: $cancelledBookings, recentBookings: $recentBookings)';
}


}

/// @nodoc
abstract mixin class _$DashboardModelCopyWith<$Res> implements $DashboardModelCopyWith<$Res> {
  factory _$DashboardModelCopyWith(_DashboardModel value, $Res Function(_DashboardModel) _then) = __$DashboardModelCopyWithImpl;
@override @useResult
$Res call({
 int totalBookings, int activeBookings, int completedBookings, int cancelledBookings, List<BookingModel> recentBookings
});




}
/// @nodoc
class __$DashboardModelCopyWithImpl<$Res>
    implements _$DashboardModelCopyWith<$Res> {
  __$DashboardModelCopyWithImpl(this._self, this._then);

  final _DashboardModel _self;
  final $Res Function(_DashboardModel) _then;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalBookings = null,Object? activeBookings = null,Object? completedBookings = null,Object? cancelledBookings = null,Object? recentBookings = null,}) {
  return _then(_DashboardModel(
totalBookings: null == totalBookings ? _self.totalBookings : totalBookings // ignore: cast_nullable_to_non_nullable
as int,activeBookings: null == activeBookings ? _self.activeBookings : activeBookings // ignore: cast_nullable_to_non_nullable
as int,completedBookings: null == completedBookings ? _self.completedBookings : completedBookings // ignore: cast_nullable_to_non_nullable
as int,cancelledBookings: null == cancelledBookings ? _self.cancelledBookings : cancelledBookings // ignore: cast_nullable_to_non_nullable
as int,recentBookings: null == recentBookings ? _self._recentBookings : recentBookings // ignore: cast_nullable_to_non_nullable
as List<BookingModel>,
  ));
}


}

// dart format on
