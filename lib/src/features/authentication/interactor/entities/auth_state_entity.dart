// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:asp/asp.dart';

import 'user_entity.dart';

class AuthStateEntity {
  final Atom<UserEntity> user;
  final Atom<String> password;
  final Atom<bool> isLoading;
  final Atom<bool> hasError;

  AuthStateEntity({
    required this.user,
    required this.isLoading,
    required this.password,
    required this.hasError,
  });

  factory AuthStateEntity.initial() {
    return AuthStateEntity(
      user: atom(UserEntity.empty()),
      isLoading: atom(false),
      password: atom(''),
      hasError: atom(false),
    );
  }

  AuthStateEntity copyWith({
    Atom<UserEntity>? user,
    Atom<String>? password,
    Atom<bool>? isLoading,
    Atom<bool>? hasError,
  }) {
    return AuthStateEntity(
      user: user ?? this.user,
      password: password ?? this.password,
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
    );
  }
}
