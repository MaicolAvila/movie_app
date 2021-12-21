import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/domain/controllers/auth_controller.dart';
import 'package:movie_app/domain/controllers/connectivity.dart';
import 'package:movie_app/domain/controllers/controllerfirestore.dart';
import 'package:movie_app/domain/controllers/controlrealtime.dart';
import 'package:movie_app/domain/controllers/locations.dart';
import 'package:movie_app/domain/controllers/messages_controller.dart';
import 'package:movie_app/domain/controllers/themecontroller.dart';
import 'package:movie_app/ui/app.dart';
import 'package:connectivity/connectivity.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(Controllerauth());
  Get.put(ControllerRealtime());
  Get.put(Controlchat());
  Get.put(ControllerFirestore());
  Get.put(ThemeController());
  // Connectivity Controller
  ConnectivityController connectivityController =
      Get.put(ConnectivityController());
  // Connectivity stream
  Connectivity().onConnectivityChanged.listen((connectivityStatus) {
    connectivityController.connectivity = connectivityStatus;
  });

  //Controlador para la ubicacion

  Get.put(Controllerlocations());

  runApp(MyApp());
}
