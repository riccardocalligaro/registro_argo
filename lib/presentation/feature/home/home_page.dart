import 'package:f_logs/f_logs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Login request'),
              onPressed: () {
                FLog.info(text: 'Test');
                // final LoginRepository loginRepository = LoginRepositoryImpl(
                //   networkInfo: sl.get<NetworkInfo>(),
                //   argoClient: sl.get<ArgoClient>(),
                // );

                // final res = await loginRepository.login(
                //   schoolCode: 'a',
                //   username: 'a',
                //   password: 'a',
                // );
                // print(res.fold(
                //   (failure) => print("Failure"),
                //   (loginResponse) => print(loginResponse.token),
                // ));
              },
            )
          ],
        ),
      ),
    );
  }
}
