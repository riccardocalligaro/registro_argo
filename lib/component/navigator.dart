import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:registro_argo/component/routes.dart';
import 'package:registro_argo/presentation/global/localizations/app_localizations.dart';

class AppNavigator {
  static AppNavigator _instance;

  AppNavigator._();

  static AppNavigator get instance {
    if (_instance == null) {
      _instance = AppNavigator._();
    }
    return _instance;
  }

  void navToHome(BuildContext context) {
    Navigator.pushReplacementNamed(context, Routes.HOME);
  }

  void navToLogin(BuildContext context) {
    Navigator.pushReplacementNamed(context, Routes.LOGIN);
  }

  Future showMessageDialog(
      BuildContext context, String title, String message) async {
    await showDialog(
      context: context,
      builder: (bCtx) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () => Navigator.of(bCtx).pop(),
          )
        ],
      ),
    );
  }

  void showSnackBar(BuildContext context, String content) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(content)));
  }

  BuildContext showAlertDialog(BuildContext context,
      {@required Widget content,
      Widget title = const Text("Attention"),
      List<Widget> actions}) {
    if (actions == null) {
      actions = [];
    }
    BuildContext alertContext;
    SchedulerBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (bCtx) {
          alertContext = bCtx;
          return AlertDialog(
            title: title,
            content: content,
            actions: actions
              ..add(FlatButton(
                onPressed: () => Navigator.of(bCtx).pop(),
                child: Text(AppLocalizations.of(context).translate('close')),
              )),
          );
        },
      );
    });
    return alertContext;
  }
}
