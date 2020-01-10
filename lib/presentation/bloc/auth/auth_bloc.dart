import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:f_logs/f_logs.dart';
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
      FLog.info(text: 'Got event to sign in');
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
    FLog.info(text: 'Loading sign in from authrepository');
    final _logInResult = await authRepository.login(
      username: username,
      password: password,
      schoolCode: schoolCode,
    );

    FLog.info(text: 'Got sign in result, proceeding to emit state');

    yield _logInResult.fold(
      (failure) => SignInLoadError(
        errorCode: GlobalUtils.mapFailureToErrorCode(failure),
      ),
      (success) => SignInLoadSuccess(),
    );
  }

  Stream<AuthState> _mapSignOutEventToState() async* {}

  Stream<AuthState> _mapAutoSignInEventToState() async* {}
}
