import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 120,
            ),
            _buildHeaderText(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderText() {
    return Container(
      child: RichText(
        text: TextSpan(
          text: 'Log in with',
          style: TextStyle(color: Colors.black, fontSize: 23),
          children: <TextSpan>[
            TextSpan(
              text: ' Argo',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
