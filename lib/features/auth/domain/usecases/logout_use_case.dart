import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class LogoutUseCase {
  final AuthRepository repository;

  LogoutUseCase(this.repository);

  Future<Either<Failure, Unit>> call() async {
    return repository.logout();
  }
}
