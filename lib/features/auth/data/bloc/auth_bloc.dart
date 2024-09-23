import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) async => switch (event) {
        AuthCheckedEvent() => _authCheckedEvent(event, emit),
        AuthLoginEvent() => _authLoginEvent(event, emit),
      },
    );
  }

  FutureOr<void> _authCheckedEvent(
    AuthCheckedEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      state.copyWith(
        authState: AuthStateStateStatus.unauthenticated,
      ),
    );
  }

  FutureOr<void> _authLoginEvent(
    AuthLoginEvent event,
    Emitter<AuthState> emit,
  ) {
    emit(
      state.copyWith(
        authState: AuthStateStateStatus.authenticated,
      ),
    );
  }
}
