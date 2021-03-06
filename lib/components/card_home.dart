import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/ui/theme/colors/cinapp_colors.dart';

class CardHome extends StatelessWidget {
  const CardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: CinappColors.purple3),
        width: 350,
        height: 144,
        margin: EdgeInsets.all(15),
        child: InkWell(
          onTap: () => {Get.toNamed('/comentarios')},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "  El Señor de los anillos\n",
                    style: TextStyle(color: CinappColors.white, fontSize: 15),
                  ),
                  Container(
                    width: 350 * 0.5,
                    child: Text(
                      " El Señor Oscuro Sauron ordenó forjar una serie de anillos de poder; tres para los reyes...",
                      style: TextStyle(color: CinappColors.white, fontSize: 15),
                      overflow: TextOverflow.clip,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/pelicula1.png', fit: BoxFit.fill),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: CinappColors.yellow),
                      Icon(Icons.star, color: CinappColors.yellow),
                      Icon(Icons.star, color: CinappColors.yellow),
                      Icon(Icons.star, color: Colors.black),
                      Icon(Icons.star, color: Colors.black),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
