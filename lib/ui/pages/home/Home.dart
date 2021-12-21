import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/components/card_home.dart';
import 'package:movie_app/domain/controllers/auth_controller.dart';
import 'package:movie_app/ui/theme/background/Background.dart';
import 'package:movie_app/ui/theme/colors/cinapp_colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Controllerauth controluser = Get.find();
    return BackgroundMain(
        child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text(
                "Recomendaciones",
                style: TextStyle(
                    color: CinappColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
        ),
        CardHome(),
        CardHome(),
        CardHome(),
      ],
    ));
  }
}
