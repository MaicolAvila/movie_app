import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/icons/cinapp_icons_icons.dart';
import 'package:movie_app/repository/auth_repository.dart';
import 'package:movie_app/theme/colors/cinapp_colors.dart';

class ButtonNav extends StatelessWidget {
  const ButtonNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authRepository = Get.find<AuthRepository>();
    return Positioned.fill(
        bottom: 0,
        child: Align(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 2,
                    color: CinappColors.sky1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => {},
                        icon: Icon(
                          CinappIcons.message_ico,
                          color: CinappColors.sky1,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () => {},
                        icon: Icon(
                          CinappIcons.maki_cinema_ico,
                          color: CinappColors.sky1,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () => {},
                        icon: Icon(
                          CinappIcons.map_pin_ico,
                          color: CinappColors.sky1,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () => {},
                        icon: Icon(
                          CinappIcons.bi_people_ico,
                          color: CinappColors.sky1,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () => {_authRepository.signOut()},
                        icon: Icon(
                          CinappIcons.signout_ico,
                          color: CinappColors.sky1,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )));
  }
}
