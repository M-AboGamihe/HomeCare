import '../../../../core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../entities/slot_entity.dart';
import '../repositories/booking_repository.dart';

class GetAvailableSlotsUseCase {
  final BookingRepository repository;

  GetAvailableSlotsUseCase(this.repository);

  Future<Either<Failure, List<SlotEntity>>> call({required String serviceId}) {
    return repository.getAvailableSlots(serviceId);
  }
}
