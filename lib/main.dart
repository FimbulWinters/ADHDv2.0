import 'package:adhd_app/Providers/FormProvider.dart';
import 'package:adhd_app/home.dart';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
// import 'EditDay.dart';

void main() {
  GetIt.instance.registerSingleton<Auth0>(Auth0(
      'dev-t4n7cuw6z42sat3g.uk.auth0.com', 'mjb6v1QP0RlRkZSovESYJuKC0YPyL3zd'));

  final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => Home()),
  ]);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => EditDayFormProvider())
      ],
      child: MaterialApp.router(
        routerConfig: router,
      ),
    ),
  );
}
