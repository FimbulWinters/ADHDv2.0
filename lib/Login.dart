import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Credentials? _credentials;
  static const appScheme = 'ADHD';

  late Auth0 auth0;

  @override
  void initState() {
    super.initState();
    auth0 = ;
  }

  @override
  Widget build(BuildContext context) {

      return ElevatedButton(
          onPressed: () async {
            final credentials =
            await auth0.webAuthentication(scheme: appScheme).login();

            setState(() {
              _credentials = credentials;
            });
          },
          child: const Text("Log in")
      );
    }

}