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
            child: Stack(children: [
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child:
                      Image.asset('assets/vector-home.png', fit: BoxFit.fill)),
              Column(
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
                  Container(
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: CinappColors.purple3),
                    width: 350,
                    height: 144,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "  El Señor de los anillos\n",
                              style: TextStyle(
                                  color: CinappColors.white, fontSize: 15),
                            ),
                            Container(
                              width: 350 * 0.5,
                              child: Text(
                                " El Señor Oscuro Sauron ordenó forjar una serie de anillos de poder; tres para los reyes...",
                                style: TextStyle(
                                    color: CinappColors.white, fontSize: 15),
                                overflow: TextOverflow.clip,
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/pelicula1.png',
                                fit: BoxFit.fill),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.star, color: Colors.green[500]),
                                Icon(Icons.star, color: Colors.green[500]),
                                Icon(Icons.star, color: Colors.green[500]),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: CinappColors.purple3),
                    width: 350,
                    height: 144,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "  El Señor de los anillos\n",
                              style: TextStyle(
                                  color: CinappColors.white, fontSize: 15),
                            ),
                            Text(
                              " El Señor Oscuro \n Sauron ordenó \n forjar una serie \n de anillos de poder; \n tres para los reyes...",
                              style: TextStyle(
                                  color: CinappColors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/pelicula1.png',
                                fit: BoxFit.fill),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.green[500]),
                            Icon(Icons.star, color: Colors.green[500]),
                            Icon(Icons.star, color: Colors.green[500]),
                            Icon(Icons.star, color: Colors.black),
                            Icon(Icons.star, color: Colors.black),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: CinappColors.purple3),
                    width: 350,
                    height: 144,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "  El Señor de los anillos\n",
                              style: TextStyle(
                                  color: CinappColors.white, fontSize: 15),
                            ),
                            Text(
                              " El Señor Oscuro \n Sauron ordenó \n forjar una serie \n de anillos de poder; \n tres para los reyes...",
                              style: TextStyle(
                                  color: CinappColors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/pelicula1.png',
                                fit: BoxFit.fill),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.green[500]),
                            Icon(Icons.star, color: Colors.green[500]),
                            Icon(Icons.star, color: Colors.green[500]),
                            Icon(Icons.star, color: Colors.black),
                            Icon(Icons.star, color: Colors.black),
                          ],
                        )
                      ],
                    ),
                  ),
                  ButtonNav()
                ],
              ),
            ])));
  }
}
