import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) => switch (event) {
        AuthCheckedEvent() => _authCheckedEvent(event, emit),
      },
    );
  }

  FutureOr<void> _authCheckedEvent(
    AuthCheckedEvent event,
    Emitter<AuthState> emit,
  ) {}
}
