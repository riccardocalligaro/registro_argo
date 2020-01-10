import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
  
  @override
  List<Object> get props => [];
}

/// Event that is emitted when the user clicks on
/// the [login] button
class SignIn extends AuthEvent {
  final String username;
  final String password;
  final String schoolCode;

  SignIn({
    @required this.username,
    @required this.password,
    @required this.schoolCode,
  }) : assert(username != null && password != null && schoolCode != null);

  @override
  List<Object> get props => [username, password];
}

class SignOut extends AuthEvent {}

/// Event emitted when the user opens the application
class AutoSignIn extends AuthEvent {}
