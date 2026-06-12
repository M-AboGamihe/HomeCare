import 'package:dio/dio.dart';
import '../../../features/auth/data/datasources/auth_local_datasource.dart';

class AuthInterceptor extends Interceptor {
  final AuthLocalDataSource authLocalDataSource;

  AuthInterceptor({required this.authLocalDataSource});

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await authLocalDataSource.getToken();

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return handler.next(options);
  }
}
