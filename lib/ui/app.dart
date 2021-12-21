import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/navigation/routes.dart';
import 'package:movie_app/ui/pages/home/Home.dart';
import 'package:movie_app/ui/pages/signin/SignIn.dart';
import 'package:movie_app/ui/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Autenticacion Firebase',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.ligthTheme,
      darkTheme: MyTheme.darkTheme,
      routes: {
        '/auth': (context) => Login(),
        '/content': (context) => Home(),
      },
      home: Login(),
      onGenerateRoute: Routes.routes,
    );
  }
}
