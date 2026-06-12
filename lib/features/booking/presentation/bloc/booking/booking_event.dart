part of 'booking_bloc.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.loadServices() = LoadServices;

  const factory BookingEvent.selectService(ServiceEntity service) =
      SelectService;

  const factory BookingEvent.loadSlots(String serviceId) = LoadSlots;

  const factory BookingEvent.loadBookings(String userId) = LoadBookings;

  const factory BookingEvent.selectSlot(SlotEntity slot) = SelectSlot;

  const factory BookingEvent.enterNotes(String notes) = EnterNotes;

  const factory BookingEvent.goToReview() = GoToReview;

  const factory BookingEvent.confirmBooking({required String userId}) =
      ConfirmBooking;
}
