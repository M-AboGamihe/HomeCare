part of 'booking_bloc.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState.initial() = _Initial;

  const factory BookingState.loadInProgress() = _LoadInProgress;

  const factory BookingState.servicesLoading() = _ServicesLoading;

  const factory BookingState.slotsLoading() = _SlotsLoading;

  const factory BookingState.bookingsLoaded(List<BookingEntity> bookings) =
      _BookingsLoaded;

  const factory BookingState.servicesLoaded(List<ServiceEntity> services) =
      _ServicesLoaded;

  const factory BookingState.slotsLoaded(List<SlotEntity> slots) = _SlotsLoaded;

  const factory BookingState.draft({
    required ServiceEntity service,
    required SlotEntity? slot,
    required String notes,
  }) = _Draft;

  const factory BookingState.success(BookingEntity booking) = _Success;

  const factory BookingState.error(String message) = _Error;
}
