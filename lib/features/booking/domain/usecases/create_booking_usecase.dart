import '../../../../core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../entities/booking_entity.dart';
import '../repositories/booking_repository.dart';

class CreateBookingUseCase {
  final BookingRepository repository;

  CreateBookingUseCase(this.repository);

  Future<Either<Failure, BookingEntity>> call({
    required String userId,
    required String serviceId,
    required String slotId,
    required DateTime scheduledAt,
    String? notes,
  }) {
    return repository.createBooking(
      userId: userId,
      serviceId: serviceId,
      slotId: slotId,
      scheduledAt: scheduledAt,
      notes: notes,
    );
  }
}
