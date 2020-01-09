import 'package:flutter/material.dart';
import 'package:registro_argo/core/network/network_info.dart';
import 'package:registro_argo/data/network/service/api/argo_client.dart';
import 'package:registro_argo/data/network/service/api/argo_client_impl.dart';
import 'package:registro_argo/data/repository/login_repository_impl.dart';
import 'package:registro_argo/domain/repository/login_repository.dart';
import 'package:registro_argo/injector_container.dart';

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
              onPressed: () async {
                final LoginRepository loginRepository = LoginRepositoryImpl(
                  networkInfo: sl.get<NetworkInfo>(),
                  argoClient: sl.get<ArgoClient>(),
                );

                final res = await loginRepository.login(
                  schoolCode: 'a',
                  username: 'a',
                  password: 'a',
                );
                print(res.fold(
                  (failure) => print("Failure"),
                  (loginResponse) => print(loginResponse.token),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
