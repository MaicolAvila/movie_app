import 'package:flutter/cupertino.dart';
import 'package:movie_app/theme/colors/cinapp_colors.dart';

class ButtonNav extends StatelessWidget {
  const ButtonNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        height: 60,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            children: [
              Container(
                height: 2,
                color: CinappColors.sky1,
              ),
              Row(
                children: [],
              )
            ],
          ),
        ));
  }
}
