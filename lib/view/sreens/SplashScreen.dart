import 'package:flutter/material.dart';
import 'package:nabda/view/sreens/OnBoardScreen.dart';
import 'package:splashscreen/splashscreen.dart';



class SplashScreens extends StatelessWidget {
  const SplashScreens({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return SplashScreen(
      seconds: 14,
      navigateAfterSeconds: OnBoardScreen(),
     imageBackground: const AssetImage(
       ('assets/splash.png'),
     ),
  );
}
}
