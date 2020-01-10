import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:registro_argo/injector_container.dart';
import 'package:registro_argo/presentation/bloc/auth/bloc.dart';

class AppBlocDelegate {
  static AppBlocDelegate _instance;

  List<BlocProvider> _blocProviders;
  //List<RepositoryProvider> _repositoryProviders;

  AppBlocDelegate._(BuildContext context) {
    //_repositoryProviders = [];

    _blocProviders = [
      BlocProvider<AuthBloc>(
        create: (bCtx) => AuthBloc(authRepository: sl()),
      ),
    ];
  }

  static AppBlocDelegate instance(BuildContext context) {
    if (_instance == null) {
      _instance = AppBlocDelegate._(context);
    }
    return _instance;
  }

  List<BlocProvider> get blocProviders => _blocProviders;

  //List<RepositoryProvider> get repositoryProviders => _repositoryProviders;
}
