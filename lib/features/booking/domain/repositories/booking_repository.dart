import '../../../../core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../entities/booking_entity.dart';
import '../entities/service_entity.dart';
import '../entities/slot_entity.dart';

abstract class BookingRepository {
  Future<Either<Failure, List<ServiceEntity>>> getServices();

  Future<Either<Failure, List<SlotEntity>>> getAvailableSlots(String serviceId);

  Future<Either<Failure, BookingEntity>> createBooking({
    required String userId,
    required String serviceId,
    required String slotId,
    required DateTime scheduledAt,
    String? notes,
  });

  Future<Either<Failure, List<BookingEntity>>> getBookings(String userId);
}
