import 'package:flutter/material.dart';
import 'package:movie_app/components/buttonnav.dart';
import 'package:movie_app/components/card_home.dart';
import 'package:movie_app/theme/background/Background.dart';
import 'package:movie_app/theme/colors/cinapp_colors.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BackgroundMain(
        child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(99),
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
      ],
    ));
  }
}
