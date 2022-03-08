
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:nabda/view/sreens/OnBoardScreen.dart';
import 'package:nabda/view/sreens/SplashScreen.dart';
import 'package:nabda/view/sreens/auth/ForgotPassword.dart';
import 'package:nabda/view/sreens/auth/LoginScreen.dart';
import 'package:nabda/view/sreens/auth/RegisterScreen.dart';

class AppRoute {
  //initialRoute
  static const splashScreens = Routes.splashScreens;


  static final routes = [
  GetPage(
  name: Routes.onBoardScreen,
  page: () => OnBoardScreen(),
  ),

    GetPage(
      name: Routes.splashScreens,
      page: () => SplashScreens(),
    ),

    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
    ),

    GetPage(
      name: Routes.registerScreen,
      page: () => RegisterScreen(),
    ),

    GetPage(
      name: Routes.forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
    ),
  ];
}
  class Routes {
  static const splashScreens = '/splashScreens';
  static const onBoardScreen = '/onBoardScreen';
  static const loginScreen = '/loginScreen';
  static const registerScreen = '/registerScreen';
  static const forgotPasswordScreen = '/forgotPasswordScreen';
  }


