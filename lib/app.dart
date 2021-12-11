import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/navigation/routes.dart';
import 'package:movie_app/pages/signin/SignIn.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Autenticacion Firebase',
      debugShowCheckedModeBanner: false,
      home: Login(),
      onGenerateRoute: Routes.routes,
    );
  }
}
