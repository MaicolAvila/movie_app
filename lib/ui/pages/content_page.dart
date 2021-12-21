import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/domain/controllers/auth_controller.dart';
import 'package:movie_app/domain/controllers/connectivity.dart';
import 'package:movie_app/domain/controllers/themecontroller.dart';
import 'package:movie_app/ui/locations/locations_screen.dart';
import 'package:movie_app/ui/pages/chat/comentarios.dart';
import 'package:movie_app/ui/pages/estados/listarestados.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Controllerauth controluser = Get.find();
    ThemeController controltema = Get.find();
    late ConnectivityController connectivityController;
    connectivityController = Get.find<ConnectivityController>();

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            // Icons.light_mode_rounded
            // Icons.dark_mode_rounded,
            IconButton(
              onPressed: () {
                controltema.selecciontema();
              },
              icon: Obx(
                () => Icon(
                  (controltema.themedark)
                      ? Icons.light_mode_rounded
                      : Icons.dark_mode_rounded,
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  controluser.signOut();
                  Get.offAllNamed('/auth');
                },
                icon: Icon(Icons.exit_to_app_rounded))
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.access_time)),
              Tab(icon: Icon(Icons.work)),
              Tab(icon: Icon(Icons.gps_fixed)),
              Tab(icon: Icon(Icons.chat_bubble)),
            ],
          ),
          title: Text('Red Social'),
        ),
        body: TabBarView(
          children: [
            Obx(() => (connectivityController.connected)
                ? ListaEstados()
                : Center(
                    child: Icon(Icons.wifi_off),
                  )),
            Container(),
            Obx(() => (connectivityController.connected)
                ? Locations()
                : Center(
                    child: Icon(Icons.wifi_off),
                  )),
            Obx(() => (connectivityController.connected)
                ? ListaMensajes()
                : Center(
                    child: Icon(Icons.wifi_off),
                  )),
          ],
        ),
      ),
    );
  }
}
