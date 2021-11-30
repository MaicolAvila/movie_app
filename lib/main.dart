import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/app.dart';
import 'package:movie_app/repository/auth_repository.dart';
import 'package:movie_app/repository/implementations/auth_repository.dart';
import 'package:movie_app/repository/implementations/my_user_repository.dart';
import 'package:movie_app/repository/my_user_repository.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Get.put<AuthRepository>(AuthRepositoryImp());
  Get.put<MyUserRepository>(MyUserRepositoryImp());

  runApp(MyApp());
}
