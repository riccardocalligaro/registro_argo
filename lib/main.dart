import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:registro_argo/component/simple_bloc_delegate.dart';
import 'package:registro_argo/presentation/feature/login/login_page.dart';
import 'package:registro_argo/presentation/global/application.dart';

import 'injector_container.dart' as di;

void main() async {
  // Init the dependency injection with Get It
  await di.init();
  initApp();
  runApp(MyApp());
}

void initApp() async {
  // BloC supervisor delegate to show all the different states of the bloc
  BlocSupervisor.delegate = SimpleBlocDelegate();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Application(
      builder: (bCtx, initData) {
        _setSystemUI(initData.materialThemeData.brightness);
        return MaterialApp(
          title: 'Registro elettronico',
          locale: initData.locale,
          theme: initData.materialThemeData,
          supportedLocales: initData.supportedLocales,
          localizationsDelegates: initData.localizationsDelegates,
          localeResolutionCallback: initData.localeResolutionCallback,
          // routes: Routes.routes,
          onUnknownRoute: (settings) {
            return MaterialPageRoute(builder: (ctx) => LoginPage());
          },
        );
      },
    );
  }

  _setSystemUI(Brightness brightness) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
  }
}
