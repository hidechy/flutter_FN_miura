// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(UserModel user, bool selectedBook) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(UserModel user, bool selectedBook)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(UserModel user, bool selectedBook)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateUnauthenticated value) unauthenticated,
    required TResult Function(UserStateAuthenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserStateUnauthenticated value)? unauthenticated,
    TResult Function(UserStateAuthenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateUnauthenticated value)? unauthenticated,
    TResult Function(UserStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$$UserStateUnauthenticatedCopyWith<$Res> {
  factory _$$UserStateUnauthenticatedCopyWith(_$UserStateUnauthenticated value,
          $Res Function(_$UserStateUnauthenticated) then) =
      __$$UserStateUnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateUnauthenticatedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$$UserStateUnauthenticatedCopyWith<$Res> {
  __$$UserStateUnauthenticatedCopyWithImpl(_$UserStateUnauthenticated _value,
      $Res Function(_$UserStateUnauthenticated) _then)
      : super(_value, (v) => _then(v as _$UserStateUnauthenticated));

  @override
  _$UserStateUnauthenticated get _value =>
      super._value as _$UserStateUnauthenticated;
}

/// @nodoc

class _$UserStateUnauthenticated implements UserStateUnauthenticated {
  const _$UserStateUnauthenticated();

  @override
  String toString() {
    return 'UserState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(UserModel user, bool selectedBook) authenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(UserModel user, bool selectedBook)? authenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(UserModel user, bool selectedBook)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateUnauthenticated value) unauthenticated,
    required TResult Function(UserStateAuthenticated value) authenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserStateUnauthenticated value)? unauthenticated,
    TResult Function(UserStateAuthenticated value)? authenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateUnauthenticated value)? unauthenticated,
    TResult Function(UserStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UserStateUnauthenticated implements UserState {
  const factory UserStateUnauthenticated() = _$UserStateUnauthenticated;
}

/// @nodoc
abstract class _$$UserStateAuthenticatedCopyWith<$Res> {
  factory _$$UserStateAuthenticatedCopyWith(_$UserStateAuthenticated value,
          $Res Function(_$UserStateAuthenticated) then) =
      __$$UserStateAuthenticatedCopyWithImpl<$Res>;
  $Res call({UserModel user, bool selectedBook});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserStateAuthenticatedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$$UserStateAuthenticatedCopyWith<$Res> {
  __$$UserStateAuthenticatedCopyWithImpl(_$UserStateAuthenticated _value,
      $Res Function(_$UserStateAuthenticated) _then)
      : super(_value, (v) => _then(v as _$UserStateAuthenticated));

  @override
  _$UserStateAuthenticated get _value =>
      super._value as _$UserStateAuthenticated;

  @override
  $Res call({
    Object? user = freezed,
    Object? selectedBook = freezed,
  }) {
    return _then(_$UserStateAuthenticated(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      selectedBook: selectedBook == freezed
          ? _value.selectedBook
          : selectedBook // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserStateAuthenticated implements UserStateAuthenticated {
  const _$UserStateAuthenticated(
      {required this.user, required this.selectedBook});

  @override
  final UserModel user;

  /// 母子手帳選択済み
  @override
  final bool selectedBook;

  @override
  String toString() {
    return 'UserState.authenticated(user: $user, selectedBook: $selectedBook)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateAuthenticated &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.selectedBook, selectedBook));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(selectedBook));

  @JsonKey(ignore: true)
  @override
  _$$UserStateAuthenticatedCopyWith<_$UserStateAuthenticated> get copyWith =>
      __$$UserStateAuthenticatedCopyWithImpl<_$UserStateAuthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function(UserModel user, bool selectedBook) authenticated,
  }) {
    return authenticated(user, selectedBook);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(UserModel user, bool selectedBook)? authenticated,
  }) {
    return authenticated?.call(user, selectedBook);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function(UserModel user, bool selectedBook)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user, selectedBook);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateUnauthenticated value) unauthenticated,
    required TResult Function(UserStateAuthenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserStateUnauthenticated value)? unauthenticated,
    TResult Function(UserStateAuthenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateUnauthenticated value)? unauthenticated,
    TResult Function(UserStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class UserStateAuthenticated implements UserState {
  const factory UserStateAuthenticated(
      {required final UserModel user,
      required final bool selectedBook}) = _$UserStateAuthenticated;

  UserModel get user;

  /// 母子手帳選択済み
  bool get selectedBook;
  @JsonKey(ignore: true)
  _$$UserStateAuthenticatedCopyWith<_$UserStateAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
