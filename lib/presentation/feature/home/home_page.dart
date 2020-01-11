import 'package:flutter/material.dart';
import 'package:registro_argo/data/db/dao/profile_dao.dart';
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
              onPressed: () {
                final ProfileDao profileDao = ProfileDao(sl());
                profileDao.deleteAllProfiles();
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
