// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoginRequested value)?  loginRequested,TResult Function( _RegisterRequested value)?  registerRequested,TResult Function( _LogoutRequested value)?  logoutRequested,TResult Function( _CheckAuthStatus value)?  checkAuthStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginRequested() when loginRequested != null:
return loginRequested(_that);case _RegisterRequested() when registerRequested != null:
return registerRequested(_that);case _LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case _CheckAuthStatus() when checkAuthStatus != null:
return checkAuthStatus(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoginRequested value)  loginRequested,required TResult Function( _RegisterRequested value)  registerRequested,required TResult Function( _LogoutRequested value)  logoutRequested,required TResult Function( _CheckAuthStatus value)  checkAuthStatus,}){
final _that = this;
switch (_that) {
case _LoginRequested():
return loginRequested(_that);case _RegisterRequested():
return registerRequested(_that);case _LogoutRequested():
return logoutRequested(_that);case _CheckAuthStatus():
return checkAuthStatus(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoginRequested value)?  loginRequested,TResult? Function( _RegisterRequested value)?  registerRequested,TResult? Function( _LogoutRequested value)?  logoutRequested,TResult? Function( _CheckAuthStatus value)?  checkAuthStatus,}){
final _that = this;
switch (_that) {
case _LoginRequested() when loginRequested != null:
return loginRequested(_that);case _RegisterRequested() when registerRequested != null:
return registerRequested(_that);case _LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case _CheckAuthStatus() when checkAuthStatus != null:
return checkAuthStatus(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  loginRequested,TResult Function( String email,  String password,  String name)?  registerRequested,TResult Function()?  logoutRequested,TResult Function()?  checkAuthStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginRequested() when loginRequested != null:
return loginRequested(_that.email,_that.password);case _RegisterRequested() when registerRequested != null:
return registerRequested(_that.email,_that.password,_that.name);case _LogoutRequested() when logoutRequested != null:
return logoutRequested();case _CheckAuthStatus() when checkAuthStatus != null:
return checkAuthStatus();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  loginRequested,required TResult Function( String email,  String password,  String name)  registerRequested,required TResult Function()  logoutRequested,required TResult Function()  checkAuthStatus,}) {final _that = this;
switch (_that) {
case _LoginRequested():
return loginRequested(_that.email,_that.password);case _RegisterRequested():
return registerRequested(_that.email,_that.password,_that.name);case _LogoutRequested():
return logoutRequested();case _CheckAuthStatus():
return checkAuthStatus();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  loginRequested,TResult? Function( String email,  String password,  String name)?  registerRequested,TResult? Function()?  logoutRequested,TResult? Function()?  checkAuthStatus,}) {final _that = this;
switch (_that) {
case _LoginRequested() when loginRequested != null:
return loginRequested(_that.email,_that.password);case _RegisterRequested() when registerRequested != null:
return registerRequested(_that.email,_that.password,_that.name);case _LogoutRequested() when logoutRequested != null:
return logoutRequested();case _CheckAuthStatus() when checkAuthStatus != null:
return checkAuthStatus();case _:
  return null;

}
}

}

/// @nodoc


class _LoginRequested implements AuthEvent {
  const _LoginRequested({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginRequestedCopyWith<_LoginRequested> get copyWith => __$LoginRequestedCopyWithImpl<_LoginRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.loginRequested(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LoginRequestedCopyWith(_LoginRequested value, $Res Function(_LoginRequested) _then) = __$LoginRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$LoginRequestedCopyWithImpl<$Res>
    implements _$LoginRequestedCopyWith<$Res> {
  __$LoginRequestedCopyWithImpl(this._self, this._then);

  final _LoginRequested _self;
  final $Res Function(_LoginRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_LoginRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RegisterRequested implements AuthEvent {
  const _RegisterRequested({required this.email, required this.password, required this.name});
  

 final  String email;
 final  String password;
 final  String name;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterRequestedCopyWith<_RegisterRequested> get copyWith => __$RegisterRequestedCopyWithImpl<_RegisterRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,name);

@override
String toString() {
  return 'AuthEvent.registerRequested(email: $email, password: $password, name: $name)';
}


}

/// @nodoc
abstract mixin class _$RegisterRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$RegisterRequestedCopyWith(_RegisterRequested value, $Res Function(_RegisterRequested) _then) = __$RegisterRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password, String name
});




}
/// @nodoc
class __$RegisterRequestedCopyWithImpl<$Res>
    implements _$RegisterRequestedCopyWith<$Res> {
  __$RegisterRequestedCopyWithImpl(this._self, this._then);

  final _RegisterRequested _self;
  final $Res Function(_RegisterRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? name = null,}) {
  return _then(_RegisterRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LogoutRequested implements AuthEvent {
  const _LogoutRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logoutRequested()';
}


}




/// @nodoc


class _CheckAuthStatus implements AuthEvent {
  const _CheckAuthStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckAuthStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.checkAuthStatus()';
}


}




// dart format on
