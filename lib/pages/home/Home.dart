import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:movie_app/components/columna_scroll_widget.dart';
import 'package:movie_app/components/estados_usuarios_widget.dart';
import 'package:movie_app/components/servicio_pelicul_widget.dart';
import 'package:movie_app/flutter_flow/flutter_flow_theme.dart';
import 'package:movie_app/flutter_flow/flutter_flow_widgets.dart';
import 'package:movie_app/nueva_nota/nueva_nota_widget.dart';
import 'package:movie_app/nuevo_estado/nuevo_estado_widget.dart';
import 'package:movie_app/repository/auth_repository.dart';
import 'package:movie_app/theme/colors/cinapp_colors.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final _authRepository = Get.find<AuthRepository>();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: CinappColors.purple1),
        child: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset('assets/vector-home.png', fit: BoxFit.fill)),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(100),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Text(
                        "CinApp",
                        style: TextStyle(
                            color: CinappColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 36),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
