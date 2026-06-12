import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';
import '../datasources/auth_local_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remote;
  final AuthLocalDataSource local;

  AuthRepositoryImpl({required this.remote, required this.local});

  @override
  Future<Either<Failure, UserEntity>> login(
    String email,
    String password,
  ) async {
    try {
      final user = await remote.login(email, password);

      return Right(user.toEntity());
    } on FirebaseAuthException catch (e) {
      return Left(ServerFailure(e.message ?? "Login failed"));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> register(
    String email,
    String password,
    String name,
  ) async {
    try {
      final user = await remote.register(email, password, name);

      return Right(user.toEntity());
    } on FirebaseAuthException catch (e) {
      return Left(ServerFailure(e.message ?? "Register failed"));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      await remote.logout();
      await local.clearToken();
      return Right(unit);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getCurrentUser() async {
    try {
      final user = await remote.getCurrentUser();

      if (user == null) {
        return Left(ServerFailure("No user found"));
      }

      return Right(user.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
