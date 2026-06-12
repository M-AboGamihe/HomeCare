// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingEvent()';
}


}

/// @nodoc
class $BookingEventCopyWith<$Res>  {
$BookingEventCopyWith(BookingEvent _, $Res Function(BookingEvent) __);
}


/// Adds pattern-matching-related methods to [BookingEvent].
extension BookingEventPatterns on BookingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadServices value)?  loadServices,TResult Function( SelectService value)?  selectService,TResult Function( LoadSlots value)?  loadSlots,TResult Function( LoadBookings value)?  loadBookings,TResult Function( SelectSlot value)?  selectSlot,TResult Function( EnterNotes value)?  enterNotes,TResult Function( GoToReview value)?  goToReview,TResult Function( ConfirmBooking value)?  confirmBooking,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadServices() when loadServices != null:
return loadServices(_that);case SelectService() when selectService != null:
return selectService(_that);case LoadSlots() when loadSlots != null:
return loadSlots(_that);case LoadBookings() when loadBookings != null:
return loadBookings(_that);case SelectSlot() when selectSlot != null:
return selectSlot(_that);case EnterNotes() when enterNotes != null:
return enterNotes(_that);case GoToReview() when goToReview != null:
return goToReview(_that);case ConfirmBooking() when confirmBooking != null:
return confirmBooking(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadServices value)  loadServices,required TResult Function( SelectService value)  selectService,required TResult Function( LoadSlots value)  loadSlots,required TResult Function( LoadBookings value)  loadBookings,required TResult Function( SelectSlot value)  selectSlot,required TResult Function( EnterNotes value)  enterNotes,required TResult Function( GoToReview value)  goToReview,required TResult Function( ConfirmBooking value)  confirmBooking,}){
final _that = this;
switch (_that) {
case LoadServices():
return loadServices(_that);case SelectService():
return selectService(_that);case LoadSlots():
return loadSlots(_that);case LoadBookings():
return loadBookings(_that);case SelectSlot():
return selectSlot(_that);case EnterNotes():
return enterNotes(_that);case GoToReview():
return goToReview(_that);case ConfirmBooking():
return confirmBooking(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadServices value)?  loadServices,TResult? Function( SelectService value)?  selectService,TResult? Function( LoadSlots value)?  loadSlots,TResult? Function( LoadBookings value)?  loadBookings,TResult? Function( SelectSlot value)?  selectSlot,TResult? Function( EnterNotes value)?  enterNotes,TResult? Function( GoToReview value)?  goToReview,TResult? Function( ConfirmBooking value)?  confirmBooking,}){
final _that = this;
switch (_that) {
case LoadServices() when loadServices != null:
return loadServices(_that);case SelectService() when selectService != null:
return selectService(_that);case LoadSlots() when loadSlots != null:
return loadSlots(_that);case LoadBookings() when loadBookings != null:
return loadBookings(_that);case SelectSlot() when selectSlot != null:
return selectSlot(_that);case EnterNotes() when enterNotes != null:
return enterNotes(_that);case GoToReview() when goToReview != null:
return goToReview(_that);case ConfirmBooking() when confirmBooking != null:
return confirmBooking(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadServices,TResult Function( ServiceEntity service)?  selectService,TResult Function( String serviceId)?  loadSlots,TResult Function( String userId)?  loadBookings,TResult Function( SlotEntity slot)?  selectSlot,TResult Function( String notes)?  enterNotes,TResult Function()?  goToReview,TResult Function( String userId)?  confirmBooking,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadServices() when loadServices != null:
return loadServices();case SelectService() when selectService != null:
return selectService(_that.service);case LoadSlots() when loadSlots != null:
return loadSlots(_that.serviceId);case LoadBookings() when loadBookings != null:
return loadBookings(_that.userId);case SelectSlot() when selectSlot != null:
return selectSlot(_that.slot);case EnterNotes() when enterNotes != null:
return enterNotes(_that.notes);case GoToReview() when goToReview != null:
return goToReview();case ConfirmBooking() when confirmBooking != null:
return confirmBooking(_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadServices,required TResult Function( ServiceEntity service)  selectService,required TResult Function( String serviceId)  loadSlots,required TResult Function( String userId)  loadBookings,required TResult Function( SlotEntity slot)  selectSlot,required TResult Function( String notes)  enterNotes,required TResult Function()  goToReview,required TResult Function( String userId)  confirmBooking,}) {final _that = this;
switch (_that) {
case LoadServices():
return loadServices();case SelectService():
return selectService(_that.service);case LoadSlots():
return loadSlots(_that.serviceId);case LoadBookings():
return loadBookings(_that.userId);case SelectSlot():
return selectSlot(_that.slot);case EnterNotes():
return enterNotes(_that.notes);case GoToReview():
return goToReview();case ConfirmBooking():
return confirmBooking(_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadServices,TResult? Function( ServiceEntity service)?  selectService,TResult? Function( String serviceId)?  loadSlots,TResult? Function( String userId)?  loadBookings,TResult? Function( SlotEntity slot)?  selectSlot,TResult? Function( String notes)?  enterNotes,TResult? Function()?  goToReview,TResult? Function( String userId)?  confirmBooking,}) {final _that = this;
switch (_that) {
case LoadServices() when loadServices != null:
return loadServices();case SelectService() when selectService != null:
return selectService(_that.service);case LoadSlots() when loadSlots != null:
return loadSlots(_that.serviceId);case LoadBookings() when loadBookings != null:
return loadBookings(_that.userId);case SelectSlot() when selectSlot != null:
return selectSlot(_that.slot);case EnterNotes() when enterNotes != null:
return enterNotes(_that.notes);case GoToReview() when goToReview != null:
return goToReview();case ConfirmBooking() when confirmBooking != null:
return confirmBooking(_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class LoadServices implements BookingEvent {
  const LoadServices();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadServices);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingEvent.loadServices()';
}


}




/// @nodoc


class SelectService implements BookingEvent {
  const SelectService(this.service);
  

 final  ServiceEntity service;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectServiceCopyWith<SelectService> get copyWith => _$SelectServiceCopyWithImpl<SelectService>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectService&&(identical(other.service, service) || other.service == service));
}


@override
int get hashCode => Object.hash(runtimeType,service);

@override
String toString() {
  return 'BookingEvent.selectService(service: $service)';
}


}

/// @nodoc
abstract mixin class $SelectServiceCopyWith<$Res> implements $BookingEventCopyWith<$Res> {
  factory $SelectServiceCopyWith(SelectService value, $Res Function(SelectService) _then) = _$SelectServiceCopyWithImpl;
@useResult
$Res call({
 ServiceEntity service
});




}
/// @nodoc
class _$SelectServiceCopyWithImpl<$Res>
    implements $SelectServiceCopyWith<$Res> {
  _$SelectServiceCopyWithImpl(this._self, this._then);

  final SelectService _self;
  final $Res Function(SelectService) _then;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? service = null,}) {
  return _then(SelectService(
null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ServiceEntity,
  ));
}


}

/// @nodoc


class LoadSlots implements BookingEvent {
  const LoadSlots(this.serviceId);
  

 final  String serviceId;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadSlotsCopyWith<LoadSlots> get copyWith => _$LoadSlotsCopyWithImpl<LoadSlots>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadSlots&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId));
}


@override
int get hashCode => Object.hash(runtimeType,serviceId);

@override
String toString() {
  return 'BookingEvent.loadSlots(serviceId: $serviceId)';
}


}

/// @nodoc
abstract mixin class $LoadSlotsCopyWith<$Res> implements $BookingEventCopyWith<$Res> {
  factory $LoadSlotsCopyWith(LoadSlots value, $Res Function(LoadSlots) _then) = _$LoadSlotsCopyWithImpl;
@useResult
$Res call({
 String serviceId
});




}
/// @nodoc
class _$LoadSlotsCopyWithImpl<$Res>
    implements $LoadSlotsCopyWith<$Res> {
  _$LoadSlotsCopyWithImpl(this._self, this._then);

  final LoadSlots _self;
  final $Res Function(LoadSlots) _then;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? serviceId = null,}) {
  return _then(LoadSlots(
null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadBookings implements BookingEvent {
  const LoadBookings(this.userId);
  

 final  String userId;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadBookingsCopyWith<LoadBookings> get copyWith => _$LoadBookingsCopyWithImpl<LoadBookings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadBookings&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'BookingEvent.loadBookings(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LoadBookingsCopyWith<$Res> implements $BookingEventCopyWith<$Res> {
  factory $LoadBookingsCopyWith(LoadBookings value, $Res Function(LoadBookings) _then) = _$LoadBookingsCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$LoadBookingsCopyWithImpl<$Res>
    implements $LoadBookingsCopyWith<$Res> {
  _$LoadBookingsCopyWithImpl(this._self, this._then);

  final LoadBookings _self;
  final $Res Function(LoadBookings) _then;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(LoadBookings(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SelectSlot implements BookingEvent {
  const SelectSlot(this.slot);
  

 final  SlotEntity slot;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectSlotCopyWith<SelectSlot> get copyWith => _$SelectSlotCopyWithImpl<SelectSlot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectSlot&&(identical(other.slot, slot) || other.slot == slot));
}


@override
int get hashCode => Object.hash(runtimeType,slot);

@override
String toString() {
  return 'BookingEvent.selectSlot(slot: $slot)';
}


}

/// @nodoc
abstract mixin class $SelectSlotCopyWith<$Res> implements $BookingEventCopyWith<$Res> {
  factory $SelectSlotCopyWith(SelectSlot value, $Res Function(SelectSlot) _then) = _$SelectSlotCopyWithImpl;
@useResult
$Res call({
 SlotEntity slot
});




}
/// @nodoc
class _$SelectSlotCopyWithImpl<$Res>
    implements $SelectSlotCopyWith<$Res> {
  _$SelectSlotCopyWithImpl(this._self, this._then);

  final SelectSlot _self;
  final $Res Function(SelectSlot) _then;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? slot = null,}) {
  return _then(SelectSlot(
null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as SlotEntity,
  ));
}


}

/// @nodoc


class EnterNotes implements BookingEvent {
  const EnterNotes(this.notes);
  

 final  String notes;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnterNotesCopyWith<EnterNotes> get copyWith => _$EnterNotesCopyWithImpl<EnterNotes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnterNotes&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,notes);

@override
String toString() {
  return 'BookingEvent.enterNotes(notes: $notes)';
}


}

/// @nodoc
abstract mixin class $EnterNotesCopyWith<$Res> implements $BookingEventCopyWith<$Res> {
  factory $EnterNotesCopyWith(EnterNotes value, $Res Function(EnterNotes) _then) = _$EnterNotesCopyWithImpl;
@useResult
$Res call({
 String notes
});




}
/// @nodoc
class _$EnterNotesCopyWithImpl<$Res>
    implements $EnterNotesCopyWith<$Res> {
  _$EnterNotesCopyWithImpl(this._self, this._then);

  final EnterNotes _self;
  final $Res Function(EnterNotes) _then;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notes = null,}) {
  return _then(EnterNotes(
null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GoToReview implements BookingEvent {
  const GoToReview();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoToReview);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingEvent.goToReview()';
}


}




/// @nodoc


class ConfirmBooking implements BookingEvent {
  const ConfirmBooking({required this.userId});
  

 final  String userId;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmBookingCopyWith<ConfirmBooking> get copyWith => _$ConfirmBookingCopyWithImpl<ConfirmBooking>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmBooking&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'BookingEvent.confirmBooking(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $ConfirmBookingCopyWith<$Res> implements $BookingEventCopyWith<$Res> {
  factory $ConfirmBookingCopyWith(ConfirmBooking value, $Res Function(ConfirmBooking) _then) = _$ConfirmBookingCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$ConfirmBookingCopyWithImpl<$Res>
    implements $ConfirmBookingCopyWith<$Res> {
  _$ConfirmBookingCopyWithImpl(this._self, this._then);

  final ConfirmBooking _self;
  final $Res Function(ConfirmBooking) _then;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(ConfirmBooking(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$BookingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingState()';
}


}

/// @nodoc
class $BookingStateCopyWith<$Res>  {
$BookingStateCopyWith(BookingState _, $Res Function(BookingState) __);
}


/// Adds pattern-matching-related methods to [BookingState].
extension BookingStatePatterns on BookingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _LoadInProgress value)?  loadInProgress,TResult Function( _ServicesLoading value)?  servicesLoading,TResult Function( _SlotsLoading value)?  slotsLoading,TResult Function( _BookingsLoaded value)?  bookingsLoaded,TResult Function( _ServicesLoaded value)?  servicesLoaded,TResult Function( _SlotsLoaded value)?  slotsLoaded,TResult Function( _Draft value)?  draft,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadInProgress() when loadInProgress != null:
return loadInProgress(_that);case _ServicesLoading() when servicesLoading != null:
return servicesLoading(_that);case _SlotsLoading() when slotsLoading != null:
return slotsLoading(_that);case _BookingsLoaded() when bookingsLoaded != null:
return bookingsLoaded(_that);case _ServicesLoaded() when servicesLoaded != null:
return servicesLoaded(_that);case _SlotsLoaded() when slotsLoaded != null:
return slotsLoaded(_that);case _Draft() when draft != null:
return draft(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _LoadInProgress value)  loadInProgress,required TResult Function( _ServicesLoading value)  servicesLoading,required TResult Function( _SlotsLoading value)  slotsLoading,required TResult Function( _BookingsLoaded value)  bookingsLoaded,required TResult Function( _ServicesLoaded value)  servicesLoaded,required TResult Function( _SlotsLoaded value)  slotsLoaded,required TResult Function( _Draft value)  draft,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _LoadInProgress():
return loadInProgress(_that);case _ServicesLoading():
return servicesLoading(_that);case _SlotsLoading():
return slotsLoading(_that);case _BookingsLoaded():
return bookingsLoaded(_that);case _ServicesLoaded():
return servicesLoaded(_that);case _SlotsLoaded():
return slotsLoaded(_that);case _Draft():
return draft(_that);case _Success():
return success(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _LoadInProgress value)?  loadInProgress,TResult? Function( _ServicesLoading value)?  servicesLoading,TResult? Function( _SlotsLoading value)?  slotsLoading,TResult? Function( _BookingsLoaded value)?  bookingsLoaded,TResult? Function( _ServicesLoaded value)?  servicesLoaded,TResult? Function( _SlotsLoaded value)?  slotsLoaded,TResult? Function( _Draft value)?  draft,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _LoadInProgress() when loadInProgress != null:
return loadInProgress(_that);case _ServicesLoading() when servicesLoading != null:
return servicesLoading(_that);case _SlotsLoading() when slotsLoading != null:
return slotsLoading(_that);case _BookingsLoaded() when bookingsLoaded != null:
return bookingsLoaded(_that);case _ServicesLoaded() when servicesLoaded != null:
return servicesLoaded(_that);case _SlotsLoaded() when slotsLoaded != null:
return slotsLoaded(_that);case _Draft() when draft != null:
return draft(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadInProgress,TResult Function()?  servicesLoading,TResult Function()?  slotsLoading,TResult Function( List<BookingEntity> bookings)?  bookingsLoaded,TResult Function( List<ServiceEntity> services)?  servicesLoaded,TResult Function( List<SlotEntity> slots)?  slotsLoaded,TResult Function( ServiceEntity service,  SlotEntity? slot,  String notes)?  draft,TResult Function( BookingEntity booking)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadInProgress() when loadInProgress != null:
return loadInProgress();case _ServicesLoading() when servicesLoading != null:
return servicesLoading();case _SlotsLoading() when slotsLoading != null:
return slotsLoading();case _BookingsLoaded() when bookingsLoaded != null:
return bookingsLoaded(_that.bookings);case _ServicesLoaded() when servicesLoaded != null:
return servicesLoaded(_that.services);case _SlotsLoaded() when slotsLoaded != null:
return slotsLoaded(_that.slots);case _Draft() when draft != null:
return draft(_that.service,_that.slot,_that.notes);case _Success() when success != null:
return success(_that.booking);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadInProgress,required TResult Function()  servicesLoading,required TResult Function()  slotsLoading,required TResult Function( List<BookingEntity> bookings)  bookingsLoaded,required TResult Function( List<ServiceEntity> services)  servicesLoaded,required TResult Function( List<SlotEntity> slots)  slotsLoaded,required TResult Function( ServiceEntity service,  SlotEntity? slot,  String notes)  draft,required TResult Function( BookingEntity booking)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _LoadInProgress():
return loadInProgress();case _ServicesLoading():
return servicesLoading();case _SlotsLoading():
return slotsLoading();case _BookingsLoaded():
return bookingsLoaded(_that.bookings);case _ServicesLoaded():
return servicesLoaded(_that.services);case _SlotsLoaded():
return slotsLoaded(_that.slots);case _Draft():
return draft(_that.service,_that.slot,_that.notes);case _Success():
return success(_that.booking);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadInProgress,TResult? Function()?  servicesLoading,TResult? Function()?  slotsLoading,TResult? Function( List<BookingEntity> bookings)?  bookingsLoaded,TResult? Function( List<ServiceEntity> services)?  servicesLoaded,TResult? Function( List<SlotEntity> slots)?  slotsLoaded,TResult? Function( ServiceEntity service,  SlotEntity? slot,  String notes)?  draft,TResult? Function( BookingEntity booking)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _LoadInProgress() when loadInProgress != null:
return loadInProgress();case _ServicesLoading() when servicesLoading != null:
return servicesLoading();case _SlotsLoading() when slotsLoading != null:
return slotsLoading();case _BookingsLoaded() when bookingsLoaded != null:
return bookingsLoaded(_that.bookings);case _ServicesLoaded() when servicesLoaded != null:
return servicesLoaded(_that.services);case _SlotsLoaded() when slotsLoaded != null:
return slotsLoaded(_that.slots);case _Draft() when draft != null:
return draft(_that.service,_that.slot,_that.notes);case _Success() when success != null:
return success(_that.booking);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements BookingState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingState.initial()';
}


}




/// @nodoc


class _LoadInProgress implements BookingState {
  const _LoadInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingState.loadInProgress()';
}


}




/// @nodoc


class _ServicesLoading implements BookingState {
  const _ServicesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServicesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingState.servicesLoading()';
}


}




/// @nodoc


class _SlotsLoading implements BookingState {
  const _SlotsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SlotsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingState.slotsLoading()';
}


}




/// @nodoc


class _BookingsLoaded implements BookingState {
  const _BookingsLoaded(final  List<BookingEntity> bookings): _bookings = bookings;
  

 final  List<BookingEntity> _bookings;
 List<BookingEntity> get bookings {
  if (_bookings is EqualUnmodifiableListView) return _bookings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookings);
}


/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingsLoadedCopyWith<_BookingsLoaded> get copyWith => __$BookingsLoadedCopyWithImpl<_BookingsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingsLoaded&&const DeepCollectionEquality().equals(other._bookings, _bookings));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bookings));

@override
String toString() {
  return 'BookingState.bookingsLoaded(bookings: $bookings)';
}


}

/// @nodoc
abstract mixin class _$BookingsLoadedCopyWith<$Res> implements $BookingStateCopyWith<$Res> {
  factory _$BookingsLoadedCopyWith(_BookingsLoaded value, $Res Function(_BookingsLoaded) _then) = __$BookingsLoadedCopyWithImpl;
@useResult
$Res call({
 List<BookingEntity> bookings
});




}
/// @nodoc
class __$BookingsLoadedCopyWithImpl<$Res>
    implements _$BookingsLoadedCopyWith<$Res> {
  __$BookingsLoadedCopyWithImpl(this._self, this._then);

  final _BookingsLoaded _self;
  final $Res Function(_BookingsLoaded) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookings = null,}) {
  return _then(_BookingsLoaded(
null == bookings ? _self._bookings : bookings // ignore: cast_nullable_to_non_nullable
as List<BookingEntity>,
  ));
}


}

/// @nodoc


class _ServicesLoaded implements BookingState {
  const _ServicesLoaded(final  List<ServiceEntity> services): _services = services;
  

 final  List<ServiceEntity> _services;
 List<ServiceEntity> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}


/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServicesLoadedCopyWith<_ServicesLoaded> get copyWith => __$ServicesLoadedCopyWithImpl<_ServicesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServicesLoaded&&const DeepCollectionEquality().equals(other._services, _services));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_services));

@override
String toString() {
  return 'BookingState.servicesLoaded(services: $services)';
}


}

/// @nodoc
abstract mixin class _$ServicesLoadedCopyWith<$Res> implements $BookingStateCopyWith<$Res> {
  factory _$ServicesLoadedCopyWith(_ServicesLoaded value, $Res Function(_ServicesLoaded) _then) = __$ServicesLoadedCopyWithImpl;
@useResult
$Res call({
 List<ServiceEntity> services
});




}
/// @nodoc
class __$ServicesLoadedCopyWithImpl<$Res>
    implements _$ServicesLoadedCopyWith<$Res> {
  __$ServicesLoadedCopyWithImpl(this._self, this._then);

  final _ServicesLoaded _self;
  final $Res Function(_ServicesLoaded) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? services = null,}) {
  return _then(_ServicesLoaded(
null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<ServiceEntity>,
  ));
}


}

/// @nodoc


class _SlotsLoaded implements BookingState {
  const _SlotsLoaded(final  List<SlotEntity> slots): _slots = slots;
  

 final  List<SlotEntity> _slots;
 List<SlotEntity> get slots {
  if (_slots is EqualUnmodifiableListView) return _slots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_slots);
}


/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SlotsLoadedCopyWith<_SlotsLoaded> get copyWith => __$SlotsLoadedCopyWithImpl<_SlotsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SlotsLoaded&&const DeepCollectionEquality().equals(other._slots, _slots));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_slots));

@override
String toString() {
  return 'BookingState.slotsLoaded(slots: $slots)';
}


}

/// @nodoc
abstract mixin class _$SlotsLoadedCopyWith<$Res> implements $BookingStateCopyWith<$Res> {
  factory _$SlotsLoadedCopyWith(_SlotsLoaded value, $Res Function(_SlotsLoaded) _then) = __$SlotsLoadedCopyWithImpl;
@useResult
$Res call({
 List<SlotEntity> slots
});




}
/// @nodoc
class __$SlotsLoadedCopyWithImpl<$Res>
    implements _$SlotsLoadedCopyWith<$Res> {
  __$SlotsLoadedCopyWithImpl(this._self, this._then);

  final _SlotsLoaded _self;
  final $Res Function(_SlotsLoaded) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? slots = null,}) {
  return _then(_SlotsLoaded(
null == slots ? _self._slots : slots // ignore: cast_nullable_to_non_nullable
as List<SlotEntity>,
  ));
}


}

/// @nodoc


class _Draft implements BookingState {
  const _Draft({required this.service, required this.slot, required this.notes});
  

 final  ServiceEntity service;
 final  SlotEntity? slot;
 final  String notes;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DraftCopyWith<_Draft> get copyWith => __$DraftCopyWithImpl<_Draft>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Draft&&(identical(other.service, service) || other.service == service)&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,service,slot,notes);

@override
String toString() {
  return 'BookingState.draft(service: $service, slot: $slot, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$DraftCopyWith<$Res> implements $BookingStateCopyWith<$Res> {
  factory _$DraftCopyWith(_Draft value, $Res Function(_Draft) _then) = __$DraftCopyWithImpl;
@useResult
$Res call({
 ServiceEntity service, SlotEntity? slot, String notes
});




}
/// @nodoc
class __$DraftCopyWithImpl<$Res>
    implements _$DraftCopyWith<$Res> {
  __$DraftCopyWithImpl(this._self, this._then);

  final _Draft _self;
  final $Res Function(_Draft) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? service = null,Object? slot = freezed,Object? notes = null,}) {
  return _then(_Draft(
service: null == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ServiceEntity,slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as SlotEntity?,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Success implements BookingState {
  const _Success(this.booking);
  

 final  BookingEntity booking;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.booking, booking) || other.booking == booking));
}


@override
int get hashCode => Object.hash(runtimeType,booking);

@override
String toString() {
  return 'BookingState.success(booking: $booking)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $BookingStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 BookingEntity booking
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? booking = null,}) {
  return _then(_Success(
null == booking ? _self.booking : booking // ignore: cast_nullable_to_non_nullable
as BookingEntity,
  ));
}


}

/// @nodoc


class _Error implements BookingState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BookingState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $BookingStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
