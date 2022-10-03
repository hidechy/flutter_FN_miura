import 'package:family_notes/data/http/client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/user/model.dart';

/// ユーザー認証関連のRepository
abstract class AuthRepository {
  Future<UserModel?> login({
    required String email,
    required String password,
  });

  Future<bool> logout({
    required int userId,
  });
}

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required this.client,
  });

  final HttpClient client;

  @override
  Future<UserModel?> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await client.post(path: 'login', body: {
        'email': email,
        'password': password,
      });
      return UserModel.fromJson(response as Map<String, dynamic>);
    } on Exception catch (_) {
      return null;
    }
  }

  @override
  Future<bool> logout({
    required int userId,
  }) async {
    try {
      final response = await client.post(path: 'logout', body: {
        'user_id': userId,
      }) as Map<String, dynamic>;
      return (response['status'] as String) == 'success';
    } on Exception catch (_) {
      return false;
    }
  }
}

final Provider<AuthRepository> authRepositoryProvider =
    Provider<AuthRepository>((ProviderRef<AuthRepository> ref) {
  final client = ref.read(httpClientProvider);
  return AuthRepositoryImpl(
    client: client,
  );
});
