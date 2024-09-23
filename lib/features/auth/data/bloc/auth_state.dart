part of 'auth_bloc.dart';

enum AuthStateStateStatus {
  unknown,
  loading,
  authenticated,
  unauthenticated,
  failure;

  bool get isUnknown => this == AuthStateStateStatus.unknown;

  bool get isLoading => this == AuthStateStateStatus.loading;

  bool get isAuthenticated => this == AuthStateStateStatus.authenticated;

  bool get isUnauthenticated => this == AuthStateStateStatus.unauthenticated;

  bool get isFailure => this == AuthStateStateStatus.failure;
}

@immutable
class AuthState {
  final AuthStateStateStatus authState;

  const AuthState({
    required this.authState,
  });

  static AuthState initial() => const AuthState(
        authState: AuthStateStateStatus.unknown,
      );

  AuthState copyWith({
    AuthStateStateStatus? authState,
  }) {
    return AuthState(
      authState: authState ?? this.authState,
    );
  }

  @override
  bool operator ==(covariant AuthState other) {
    if (identical(this, other)) return true;

    return other.authState == authState;
  }

  @override
  int get hashCode => authState.hashCode;
}
