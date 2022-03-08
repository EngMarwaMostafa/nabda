import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nabda/Routes/routes.dart';
import 'package:nabda/view/sreens/BluetoothScreen.dart';
import 'package:nabda/view/sreens/HomeScreen.dart';
import 'package:nabda/view/sreens/Medications/MedicationsScreen.dart';
import 'package:nabda/view/sreens/auth/EnterCode.dart';
import 'package:nabda/view/sreens/auth/HealthInterestScreen.dart';
import 'package:nabda/view/sreens/auth/NewPasswordScreen.dart';
import 'package:nabda/view/sreens/auth/RegisterScreen.dart';
import 'package:nabda/view/widgets/health/health_items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize : const Size(375,667),
      builder:  () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NABDA',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
     home:MedicationsScreen(),
    //  initialRoute:AppRoute.splashScreens,
      getPages:AppRoute.routes,
      ),
    );
  }
}