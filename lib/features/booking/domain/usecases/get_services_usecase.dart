import '../../../../core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../entities/service_entity.dart';
import '../repositories/booking_repository.dart';

class GetServicesUseCase {
  final BookingRepository repository;

  GetServicesUseCase(this.repository);

  Future<Either<Failure, List<ServiceEntity>>> call() async {
    return repository.getServices();
  }
}
