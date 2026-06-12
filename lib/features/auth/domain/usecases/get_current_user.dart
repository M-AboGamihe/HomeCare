import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class GetCurrentUserUseCase {
  final AuthRepository repository;

  GetCurrentUserUseCase({required this.repository});

  Future<Either<Failure, UserEntity>> call() async {
    return repository.getCurrentUser();
  }
}
