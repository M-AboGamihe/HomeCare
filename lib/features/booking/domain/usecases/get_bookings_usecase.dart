import 'package:dartz/dartz.dart';
import '../repositories/booking_repository.dart';
import '../entities/booking_entity.dart';
import '../../../../core/errors/failures.dart';

class GetBookingsUseCase {
  final BookingRepository _repository;

  GetBookingsUseCase(this._repository);

  Future<Either<Failure, List<BookingEntity>>> call(String userId) {
    return _repository.getBookings(userId);
  }
}
