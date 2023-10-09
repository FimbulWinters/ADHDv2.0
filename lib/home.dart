// import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';
// import 'package:pie_chart/pie_chart.dart';

import 'Login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int getLoginCredentials() {
    return 1;
  }

  Widget homeLayout(data) {
    return const Placeholder();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return homeLayout(snapshot.data);
        } else if (snapshot.hasError) {
          return const Placeholder();
        } else {
          return const Login();
        }
      },
    );
  }
}
