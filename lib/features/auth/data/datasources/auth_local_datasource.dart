import 'package:hive_flutter/hive_flutter.dart';

abstract class AuthLocalDataSource {
  Future<void> cacheToken(String token);
  Future<String?> getToken();
  Future<void> clearToken();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  static const String tokenKey = 'token';

  final Box authBox;

  AuthLocalDataSourceImpl(this.authBox);

  @override
  Future<void> cacheToken(String token) async {
    await authBox.put(tokenKey, token);
  }

  @override
  Future<String?> getToken() async {
    return authBox.get(tokenKey);
  }

  @override
  Future<void> clearToken() async {
    await authBox.delete(tokenKey);
  }
}
