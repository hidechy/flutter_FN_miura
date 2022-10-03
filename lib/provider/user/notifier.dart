import 'package:family_notes/data/model/user/model.dart';
import 'package:family_notes/data/repository/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifier.freezed.dart';

@freezed
class UserState with _$UserState {
  /// 未認証
  const factory UserState.unauthenticated() = UserStateUnauthenticated;

  /// 認証済み
  const factory UserState.authenticated({
    /// ユーザー
    required UserModel user,

    /// 母子手帳選択済み
    required bool selectedBook,
  }) = UserStateAuthenticated;
}

/// ユーザーの状態を管理するプロバイダ
final userStateProvider =
    StateNotifierProvider<UserStateNotifier, UserState>((ref) {
  return UserStateNotifier(
    repository: ref.watch(authRepositoryProvider),
  );
});

class UserStateNotifier extends StateNotifier<UserState> {
  UserStateNotifier({
    required this.repository,
  }) : super(const UserStateUnauthenticated()) {
    load();
  }

  final AuthRepository repository;

  void load() {
    //TODO(miura): 認証済みの場合はこのタイミングで state = UserState.authenticated()
  }

  void login({
    required String email,
    required String password,
    required VoidCallback onFailed,
  }) {
    if (email.isEmpty || password.isEmpty) {
      return;
    }
    repository.login(email: email, password: password).then((UserModel? user) {
      if (user == null) {
        onFailed();
        state = const UserState.unauthenticated();
        return;
      }
      state = UserState.authenticated(
        user: user,
        selectedBook: false,
      );
    });
  }

  void logout({
    required VoidCallback onFailed,
  }) {
    // すでに未認証のためスルー
    if (state is UserStateUnauthenticated) {
      return;
    }
    try {
      repository
          .logout(userId: (state as UserStateAuthenticated).user.userId)
          .then((response) {
        if (!response) {
          onFailed();
          return;
        }
        state = const UserState.unauthenticated();
      });
    } on Exception catch (_) {
      onFailed();
    }
  }

  /// 母子手帳選択
  void onSelectedBook() {
    if (state is UserStateUnauthenticated) {
      return;
    }
    state = (state as UserStateAuthenticated).copyWith(
      selectedBook: true,
    );
  }
}
