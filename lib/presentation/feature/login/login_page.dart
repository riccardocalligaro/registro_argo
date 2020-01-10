import 'package:f_logs/model/flog/flog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:registro_argo/data/db/dao/profile_dao.dart';
import 'package:registro_argo/injector_container.dart';
import 'package:registro_argo/presentation/bloc/auth/bloc.dart';
import 'package:registro_argo/presentation/feature/home/home_page.dart';
import 'package:registro_argo/presentation/feature/widgets/buttons/gradient_green_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Variables for the textbox controllers
  final TextEditingController _schoolCodeController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  /// This becomes `true` when a login error is thrown
  bool _invalid = false;

  /// Text that changes in case of a login [error]
  String _erorrMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is Init || state is SignInLoadError) {
          return _buildInitial();
        } else if (state is SignInLoadInProgress) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SignInLoadSuccess) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        }

        return Container();
      },
    ));
  }

  Widget _buildInitial() {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 120,
              ),
              _buildHeaderText(),
              _buildLoginInput(),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SvgPicture.asset(
            'assets/images/green_waves.svg',
          ),
        ),
      ],
    );
  }

  /// Builds the login with argo [title]
  Widget _buildHeaderText() {
    return Row(
      children: <Widget>[
        Text(
          'Login with',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(
          width: 7,
        ),
        Text(
          'Argo',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
        )
      ],
    );
  }

  Widget _buildLoginInput() {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        // if (state is SignInLoadError) {
        //   print("erorr");
        //   setState(() {
        //     _invalid = true;
        //     //_erorrMessage = 'Credenziali invalide';
        //   });
        // }
      },
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: _schoolCodeController,
            decoration: InputDecoration(
                hintText: 'School code',
                errorText: _invalid ? _erorrMessage : null),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: _usernameController,
            decoration: InputDecoration(
                hintText: 'Username',
                errorText: _invalid ? _erorrMessage : null),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              hintText: 'Password',
              errorText: _invalid ? _erorrMessage : null,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GradientGreenButton(
            center: const Text(
              'Accedi',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 19),
            ),
            onTap: () {
              FLog.info(text: 'Sign in button pressed');

              // final schoolCode = _schoolCodeController.text;
              // final username = _usernameController.text;
              // final password = _passwordController.text;

              final schoolCode = 'SS16585';
              final username = 'enrico.mognato';
              final password = 'password';

              if (schoolCode != '' && username != '' && password != '') {
                FLog.info(
                  text: 'Got valid input, proceeding to adding event to bloc',
                );

                BlocProvider.of<AuthBloc>(context).add(SignIn(
                  schoolCode: schoolCode,
                  username: username,
                  password: password,
                ));
              } else {
                FLog.info(text: 'Got empty input');
                setState(() {
                  _invalid = true;
                  _erorrMessage = "Devi compilare in tutti i campi";
                });
              }
            },
          ),
          // RaisedButton(
          //   child: Text('requiree db'),
          //   onPressed: () async {
          //     final ProfileDao profileDao = ProfileDao(sl());
          //     final profiles = await profileDao.getLoggedInProfile();
          //     print(profiles);
          //   },
          // ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sicuro. ',
                style: TextStyle(color: Colors.grey),
              ),
              GestureDetector(
                onTap: () {
                  // todo: navigate to repository
                },
                child: Text(
                  'Open source.',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
