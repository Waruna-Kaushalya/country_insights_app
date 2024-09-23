part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthCheckedEvent extends AuthEvent {}

class AuthLoginEvent extends AuthEvent {
  final String email;
  final String password;
  AuthLoginEvent({
    required this.email,
    required this.password,
  });
}
