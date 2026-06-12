import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/get_current_user.dart';
import '../../../domain/usecases/login_use_case.dart';
import '../../../domain/usecases/logout_use_case.dart';
import '../../../domain/usecases/register_use_case.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase login;
  final RegisterUseCase register;
  final LogoutUseCase logout;
  final GetCurrentUserUseCase getCurrentUser;

  AuthBloc({
    required this.login,
    required this.register,
    required this.logout,
    required this.getCurrentUser,
  }) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        loginRequested: (e) => _login(e.email, e.password, emit),
        registerRequested: (e) => _register(e.email, e.password, e.name, emit),
        logoutRequested: (_) => _logout(emit),
        checkAuthStatus: (_) => _checkAuthStatus(emit),
      );
    });
  }

  Future<void> _login(
    String email,
    String password,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await login(LoginParams(email: email, password: password));
    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (user) => emit(AuthState.authenticated(user)),
    );
  }

  Future<void> _register(
    String email,
    String password,
    String name,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await register(
      RegisterParams(email: email, password: password, name: name),
    );
    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (user) => emit(AuthState.authenticated(user)),
    );
  }

  Future<void> _logout(Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await logout();
    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (_) => emit(const AuthState.unauthenticated()),
    );
  }

  Future<void> _checkAuthStatus(Emitter<AuthState> emit) async {
    final result = await getCurrentUser();
    result.fold(
      (_) => emit(const AuthState.unauthenticated()),
      (user) => emit(AuthState.authenticated(user)),
    );
  }
}
