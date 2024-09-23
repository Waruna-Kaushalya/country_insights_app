part of 'auth_bloc.dart';

enum AuthStateStateStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == AuthStateStateStatus.initial;

  bool get isLoading => this == AuthStateStateStatus.loading;

  bool get isSuccess => this == AuthStateStateStatus.success;

  bool get isFailure => this == AuthStateStateStatus.failure;
}

@immutable
class AuthState {
  final AuthStateStateStatus authState;

  const AuthState({
    required this.authState,
  });

  static AuthState initial() => const AuthState(
        authState: AuthStateStateStatus.initial,
      );
}
