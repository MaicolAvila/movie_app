import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app/pages/chat/chat.dart';
import 'package:movie_app/pages/home/Home.dart';
import 'package:movie_app/pages/signin/SignIn.dart';
import 'package:movie_app/pages/signup/SignUp.dart';
import 'package:movie_app/ui/splash_screen.dart';

class Routes {
  static const splash = '/';
  static const createAccount = '/createAccount';
  static const signInEmail = '/signInEmail';
  static const home = '/home';
  static const chat = '/chat';

  static Route routes(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return _buildRoute(settings, page: const SplashScreen());
      case home:
        return _buildRoute(settings, page: Home());
      case chat:
        return _buildRoute(settings, page: ListaMensajes());
      case createAccount:
        return _buildRoute(settings, page: SignUp());
      case signInEmail:
        return _buildRoute(settings, page: SignIn());
      default:
        throw Exception('Route does not exists');
    }
  }

  static GetPageRoute _buildRoute(RouteSettings settings,
          {required Widget page}) =>
      GetPageRoute(settings: settings, page: () => page);
}
