import 'package:f_logs/f_logs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:registro_argo/component/navigator.dart';
import 'package:registro_argo/presentation/bloc/auth/bloc.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  bool _alreadyInit = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    FLog.info(text: 'Launched splash screen');
    if (!_alreadyInit) {
      _alreadyInit = true;
      _autoSignIn(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          FLog.info(text: 'Splash screen listener -> ${state.toString()}');
          if (state is AutoSignInLoadResult) {
            AppNavigator.instance.navToHome(context);
          } else if (state is AutoSignInLoadErorr) {
            AppNavigator.instance.navToLogin(context);
          }
        },
        child: Center(
          child: Icon(
            Icons.school,
            color: Theme.of(context).accentColor,
            size: 84.0,
          ),
        ),
      ),
    );
  }

  void _autoSignIn(BuildContext context) {
    BlocProvider.of<AuthBloc>(context).add(AutoSignIn());
  }
}
