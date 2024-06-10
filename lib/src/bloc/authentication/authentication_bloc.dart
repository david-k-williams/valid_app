import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'authentication_event.dart';
import 'authentication_state.dart';
import '../../repositories/autehntication_repo.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepository _authenticationRepository =
      GetIt.instance<AuthenticationRepository>();

  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<AppStarted>(_onAppStarted);
    on<LoggedIn>(_onLoggedIn);
    on<LoggedOut>(_onLoggedOut);
  }

  FutureOr<void> _onAppStarted(
      AppStarted event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoading());
    try {
      final bool isAuthenticated = _authenticationRepository.isAuthenticated();
      if (isAuthenticated) {
        emit(AuthenticationAuthenticated());
      } else {
        emit(AuthenticationUnauthenticated());
      }
    } catch (e) {
      emit(AuthenticationFailure(error: e.toString()));
    }
  }

  FutureOr<void> _onLoggedIn(
      LoggedIn event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoading());
    try {
      final bool success = await _authenticationRepository.authenticate();
      if (success) {
        emit(AuthenticationAuthenticated());
      } else {
        emit(AuthenticationFailure(error: 'Authentication failed'));
      }
    } catch (e) {
      emit(AuthenticationFailure(error: e.toString()));
    }
  }

  FutureOr<void> _onLoggedOut(
      LoggedOut event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoading());
    try {
      await _authenticationRepository.logout();
      emit(AuthenticationUnauthenticated());
    } catch (e) {
      emit(AuthenticationFailure(error: e.toString()));
    }
  }
}
