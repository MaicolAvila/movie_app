import 'package:flutter/material.dart';
import 'package:movie_app/components/buttonnav.dart';
import 'package:movie_app/theme/colors/cinapp_colors.dart';

class BackgroundMain extends StatelessWidget {
  final Widget child;
  const BackgroundMain({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.15,
                    bottom: MediaQuery.of(context).size.height * 0.15),
                child: child),
            ButtonNav()
          ],
        ),
      ),
    );
  }
}
