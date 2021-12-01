import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/components/buttonnav.dart';
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
                  padding: new EdgeInsets.all(90.0),
                  child: Column(
                    children: [
                      Text(
                        "Recomendaciones",
                        style: TextStyle(
                            color: CinappColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ButtonNav()
          ],
        ),
      ),
    );
  }
}
