import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(String email, String password, String name);
  Future<void> logout();
  Future<UserModel?> getCurrentUser();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  AuthRemoteDataSourceImpl(this.auth, this.firestore);

  @override
  Future<UserModel> login(String email, String password) async {
    final result = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    final user = result.user;
    if (user == null) {
      throw Exception("Login failed");
    }
    final token = await FirebaseMessaging.instance.getToken();
    await firestore.collection('users').doc(user.uid).update({
      'fcmToken': token,
    });

    return UserModel(
      id: user.uid,
      name: user.displayName ?? "",
      email: user.email ?? "",
    );
  }

  @override
  Future<UserModel> register(String email, String password, String name) async {
    final result = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final token = await FirebaseMessaging.instance.getToken();

    final user = result.user;
    if (user == null) {
      throw Exception("Register failed");
    }

    await user.updateDisplayName(name);
    await firestore.collection('users').doc(user.uid).set({
      'id': user.uid,
      'name': name,
      'email': user.email,
      'role': 'user',
      'fcmToken': token,
    });

    return UserModel(id: user.uid, name: name, email: user.email ?? "");
  }

  @override
  Future<void> logout() async {
    await auth.signOut();
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    final user = auth.currentUser;

    if (user == null) return null;

    return UserModel(
      id: user.uid,
      name: user.displayName ?? "",
      email: user.email ?? "",
    );
  }
}
