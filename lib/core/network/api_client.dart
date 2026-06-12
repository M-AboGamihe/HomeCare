import 'package:dio/dio.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/logging_interceptor.dart';
import 'interceptors/retry_interceptor.dart';

class ApiClient {
  late final Dio dio;

  ApiClient({AuthInterceptor? authInterceptor, bool enableLogging = true}) {
    dio = Dio(
      BaseOptions(
        baseUrl: '',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );

    final interceptors = <Interceptor>[];

    if (authInterceptor != null) {
      interceptors.add(authInterceptor);
    }

    if (enableLogging) {
      interceptors.add(LoggingInterceptor());
    }

    interceptors.add(RetryInterceptor(dio: dio));

    dio.interceptors.addAll(interceptors);
  }

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) {
    return dio.get(path, queryParameters: queryParameters);
  }

  Future<Response> post(String path, {dynamic data}) {
    return dio.post(path, data: data);
  }

  Future<Response> put(String path, {dynamic data}) {
    return dio.put(path, data: data);
  }

  Future<Response> delete(String path) {
    return dio.delete(path);
  }
}
