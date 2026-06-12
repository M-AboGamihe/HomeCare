import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class RetryInterceptor extends Interceptor {
  final Dio dio;
  final int maxRetries;
  final Duration retryDelay;

  RetryInterceptor({
    required this.dio,
    this.maxRetries = 3,
    this.retryDelay = const Duration(seconds: 2),
  });

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    int retries = err.requestOptions.extra['retries'] ?? 0;

    if (_shouldRetry(err) && retries < maxRetries) {
      retries++;
      err.requestOptions.extra['retries'] = retries;

      debugPrint('🔄 Retrying request... ($retries/$maxRetries)');

      await Future.delayed(retryDelay);

      try {
        final options = err.requestOptions;
        final response = await dio.fetch(options);
        return handler.resolve(response);
      } catch (e) {
        return super.onError(err, handler);
      }
    }

    return super.onError(err, handler);
  }

  bool _shouldRetry(DioException err) {
    return err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.connectionError ||
        (err.response?.statusCode != null && err.response!.statusCode! >= 500);
  }
}
