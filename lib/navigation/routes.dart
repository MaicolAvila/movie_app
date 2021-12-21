import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app/ui/locations/locations_screen.dart';
import 'package:movie_app/ui/pages/chat/comentarios.dart';
import 'package:movie_app/ui/pages/home/Home.dart';
import 'package:movie_app/ui/pages/signin/SignIn.dart';
import 'package:movie_app/ui/pages/signup/SignUp.dart';

class Routes {
  static const splash = '/';
  static const createAccount = '/createAccount';
  static const signInEmail = '/signInEmail';
  static const home = '/home';
  static const comentarios = '/comentarios';
  static const localizacion = '/locations_screen';

  static Route routes(RouteSettings settings) {
    switch (settings.name) {
      // case splash:
      //   return _buildRoute(settings, page: const SplashScreen());
      case home:
        return _buildRoute(settings, page: Home());
      case comentarios:
        return _buildRoute(settings, page: ListaMensajes());
      case createAccount:
        return _buildRoute(settings, page: SignUp());
      case signInEmail:
        return _buildRoute(settings, page: Login());
      case localizacion:
        return _buildRoute(settings, page: Locations());
      default:
        throw Exception('Route does not exists');
    }
  }

  static GetPageRoute _buildRoute(RouteSettings settings,
          {required Widget page}) =>
      GetPageRoute(settings: settings, page: () => page);
}
