import 'package:flutter/cupertino.dart';
import 'package:movie_app/icons/cinapp_icons_icons.dart';
import 'package:movie_app/theme/colors/cinapp_colors.dart';

class ButtonNav extends StatelessWidget {
  const ButtonNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        height: 50,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            children: [
              Container(
                height: 2,
                color: CinappColors.sky1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    CinappIcons.message_ico,
                    color: CinappColors.sky1,
                    size: 30,
                  ),
                  Icon(
                    CinappIcons.maki_cinema_ico,
                    color: CinappColors.sky1,
                    size: 30,
                  ),
                  Icon(
                    CinappIcons.map_pin_ico,
                    color: CinappColors.sky1,
                    size: 30,
                  ),
                  Icon(
                    CinappIcons.bi_people_ico,
                    color: CinappColors.sky1,
                    size: 30,
                  ),
                  Icon(
                    CinappIcons.signout_ico,
                    color: CinappColors.sky1,
                    size: 30,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
