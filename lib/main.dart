import 'package:flutter/material.dart';
import 'package:registro_argo/presentation/feature/login/login_page.dart';

import 'injector_container.dart' as di;

void main() async {
  await di.init();
  // set up logging

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
