import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app.dart';
import 'package:movie_app/controllers/auth_controller.dart';
import 'package:movie_app/controllers/controllerfirestore.dart';
import 'package:movie_app/controllers/controlrealtime.dart';
import 'package:movie_app/controllers/messages_controller.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(Controllerauth());
  Get.put(ControllerRealtime());
  Get.put(Controlchat());
  Get.put(ControllerFirestore());
  runApp(MyApp());
}
