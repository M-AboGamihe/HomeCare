import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

import '../../domain/entities/booking_entity.dart';
import '../../domain/entities/service_entity.dart';
import '../../domain/entities/slot_entity.dart';
import '../../domain/repositories/booking_repository.dart';

import '../datasources/booking_local_datasource.dart';
import '../datasources/booking_remote_datasource.dart';

import '../mappers/service_mapper.dart';
import '../mappers/booking_mapper.dart';
import '../mappers/solt_mapper.dart';

class BookingRepositoryImpl implements BookingRepository {
  final BookingRemoteDataSource remoteDataSource;
  final BookingLocalDataSource localDataSource;

  BookingRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });
  // ---------------- SERVICES ----------------
  @override
  Future<Either<Failure, List<ServiceEntity>>> getServices() async {
    try {
      final models = await remoteDataSource.getServices();
      await localDataSource.cacheServices(models);
      return Right(models.map(ServiceMapper.toEntity).toList());
    } catch (e) {
      final local = await localDataSource.getCachedServices();
      if (local.isNotEmpty) {
        return Right(local.map(ServiceMapper.toEntity).toList());
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  // ---------------- SLOTS ----------------
  @override
  Future<Either<Failure, List<SlotEntity>>> getAvailableSlots(
    String serviceId,
  ) async {
    try {
      final models = await remoteDataSource.getAvailableSlots(serviceId);
      return Right(models.map(SlotMapper.toEntity).toList());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  // ---------------- CREATE BOOKING ----------------
  @override
  Future<Either<Failure, BookingEntity>> createBooking({
    required String userId,
    required String serviceId,
    required String slotId,
    required DateTime scheduledAt,
    String? notes,
  }) async {
    try {
      final model = await remoteDataSource.createBooking(
        userId: userId,
        serviceId: serviceId,
        slotId: slotId,
        scheduledAt: scheduledAt,
        notes: notes ?? '',
      );
      return Right(BookingMapper.toEntity(model));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  // ---------------- BOOKINGS ----------------
  @override
  Future<Either<Failure, List<BookingEntity>>> getBookings(
    String userId,
  ) async {
    try {
      final models = await remoteDataSource.getBookings(userId);
      await localDataSource.cacheBookings(models);
      return Right(models.map(BookingMapper.toEntity).toList());
    } catch (e) {
      final local = await localDataSource.getCachedBookings();
      if (local.isNotEmpty) {
        return Right(local.map(BookingMapper.toEntity).toList());
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
