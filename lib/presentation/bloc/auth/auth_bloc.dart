import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:registro_argo/domain/repository/auth_repository.dart';
import 'package:registro_argo/utils/global_utils.dart';

import './bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository authRepository;

  AuthBloc({
    @required this.authRepository,
  });

  @override
  AuthState get initialState => Init();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is SignIn) {
      yield* _mapSignInEventToState(
        username: event.username,
        password: event.password,
        schoolCode: event.schoolCode,
      );
    } else if (event is SignOut) {
      yield* _mapSignOutEventToState();
    } else if (event is AutoSignIn) {
      yield* _mapAutoSignInEventToState();
    }
  }

  Stream<AuthState> _mapSignInEventToState({
    @required String username,
    @required String password,
    @required String schoolCode,
  }) async* {
    yield SignInLoadInProgress();
    final _logInResult = await authRepository.login(
      username: username,
      password: password,
      schoolCode: schoolCode,
    );

    _logInResult.fold(
      (failure) async* {
        yield SignInLoadError(
            errorCode: GlobalUtils.mapFailureToErrorCode(failure));
      },
      (profile) async* {
        yield SignInLoadSuccess();
      },
    );
  }

  Stream<AuthState> _mapSignOutEventToState() async* {}

  Stream<AuthState> _mapAutoSignInEventToState() async* {}
}
