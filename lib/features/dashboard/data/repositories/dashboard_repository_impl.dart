import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/dashboard_entity.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../datasources/dashboard_local_datasource.dart';
import '../datasources/dashboard_remote_datasource.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteDataSource remoteDataSource;
  final DashboardLocalDataSource localDataSource;

  DashboardRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, DashboardEntity>> getDashboardData() async {
    try {
      final model = await remoteDataSource.getDashboardData();
      await localDataSource.cacheDashboard(model);
      return Right(model.toEntity());
    } catch (e) {
      final localModel = await localDataSource.getCachedDashboard();
      if (localModel != null) {
        return Right(localModel.toEntity());
      }
      return Left(ServerFailure("Network error or unexpected error: $e"));
    }
  }
}
