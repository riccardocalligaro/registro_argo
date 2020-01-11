import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class Init extends AuthState {}

class SignInLoadInProgress extends AuthState {}

/// State when the user signs in [successfully]
/// When this state is emitted we should log in the user and proceed
class SignInLoadSuccess extends AuthState {}

class SignInLoadError extends AuthState {
  final int errorCode;

  SignInLoadError({
    @required this.errorCode,
  }) : assert(errorCode != null);

  @override
  List<Object> get props => [errorCode];
}

class SignOutSuccess extends AuthState {
  SignOutSuccess();
}

class AutoSignInLoadInProgress extends AuthState {}

class AutoSignInLoadErorr extends AuthState {}

class AutoSignInLoadResult extends AuthState {}
