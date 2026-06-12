import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/service_entity.dart';
import '../../../domain/entities/slot_entity.dart';
import '../../../domain/entities/booking_entity.dart';
import '../../../domain/usecases/create_booking_usecase.dart';
import '../../../domain/usecases/get_available_slots_usecase.dart';
import '../../../domain/usecases/get_services_usecase.dart';
import '../../../domain/usecases/get_bookings_usecase.dart';
part 'booking_event.dart';
part 'booking_state.dart';
part 'booking_bloc.freezed.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final GetServicesUseCase getServicesUseCase;
  final GetAvailableSlotsUseCase getSlotsUseCase;
  final CreateBookingUseCase createBookingUseCase;
  final GetBookingsUseCase getBookingsUseCase;

  ServiceEntity? _draftService;
  SlotEntity? _draftSlot;
  String _draftNotes = '';

  BookingBloc({
    required this.getServicesUseCase,
    required this.getSlotsUseCase,
    required this.createBookingUseCase,
    required this.getBookingsUseCase,
  }) : super(const BookingState.initial()) {
    on<LoadServices>(_onLoadServices);
    on<SelectService>(_onSelectService);
    on<LoadSlots>(_onLoadSlots);
    on<LoadBookings>(_onLoadBookings);
    on<SelectSlot>(_onSelectSlot);
    on<EnterNotes>(_onEnterNotes);
    on<ConfirmBooking>(_onConfirmBooking);
  }
  // ---------------- SERVICES ----------------
  Future<void> _onLoadServices(
    LoadServices event,
    Emitter<BookingState> emit,
  ) async {
    emit(const BookingState.servicesLoading());
    final result = await getServicesUseCase();
    result.fold(
      (f) => emit(BookingState.error(f.message)),
      (services) => emit(BookingState.servicesLoaded(services)),
    );
  }

  // ---------------- SERVICE SELECT ----------------
  void _onSelectService(SelectService event, Emitter<BookingState> emit) {
    _draftService = event.service;
    _draftSlot = null;
    _draftNotes = '';
    emit(
      BookingState.draft(
        service: _draftService!,
        slot: _draftSlot,
        notes: _draftNotes,
      ),
    );
  }

  // ---------------- SLOTS ----------------
  Future<void> _onLoadSlots(LoadSlots event, Emitter<BookingState> emit) async {
    emit(const BookingState.slotsLoading());
    final result = await getSlotsUseCase(serviceId: event.serviceId);
    result.fold(
      (failure) => emit(BookingState.error(failure.message)),
      (slots) => emit(BookingState.slotsLoaded(slots)),
    );
  }

  // ---------------- Load Bookings ----------------
  Future<void> _onLoadBookings(
    LoadBookings event,
    Emitter<BookingState> emit,
  ) async {
    emit(const BookingState.loadInProgress());
    final result = await getBookingsUseCase(event.userId);
    result.fold(
      (f) => emit(BookingState.error(f.message)),
      (bookings) => emit(BookingState.bookingsLoaded(bookings)),
    );
  }

  // ---------------- SLOT SELECT ----------------
  void _onSelectSlot(SelectSlot event, Emitter<BookingState> emit) {
    if (_draftService != null) {
      _draftSlot = event.slot;
      emit(
        BookingState.draft(
          service: _draftService!,
          slot: _draftSlot,
          notes: _draftNotes,
        ),
      );
    }
  }

  // ---------------- NOTES ----------------
  void _onEnterNotes(EnterNotes event, Emitter<BookingState> emit) {
    if (_draftService != null) {
      _draftNotes = event.notes;
      emit(
        BookingState.draft(
          service: _draftService!,
          slot: _draftSlot,
          notes: _draftNotes,
        ),
      );
    }
  }

  // ---------------- CONFIRM ----------------
  Future<void> _onConfirmBooking(
    ConfirmBooking event,
    Emitter<BookingState> emit,
  ) async {
    if (_draftService == null || _draftSlot == null) {
      emit(const BookingState.error("Missing booking data"));
      return;
    }
    emit(const BookingState.loadInProgress());
    final result = await createBookingUseCase(
      userId: event.userId,
      serviceId: _draftService!.id,
      slotId: _draftSlot!.id,
      scheduledAt: _draftSlot!.startTime,
      notes: _draftNotes,
    );
    result.fold((f) => emit(BookingState.error(f.message)), (booking) {
      _draftService = null;
      _draftSlot = null;
      _draftNotes = '';
      emit(BookingState.success(booking));
    });
  }
}
