import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nabda/Routes/routes.dart';
import 'package:nabda/utils/custom_text_field.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 190.h,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                 bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 531.h,
                width: 345.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 22.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(
                      child: Text(
                        'Hello, youve been missed!',
                        style: TextStyle(
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 15.w, right: 10.w, bottom: 18.h),
                      height: 81.h,
                      child: const CustomTextField(
                        prefixIcon:Icon(Icons.email),
                        labelText: 'Email',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 15.w, right: 10.w, bottom: 18.h),
                      height: 81.h,
                      child: const CustomTextField(
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        labelText: 'Password',
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        onTap: () {
                         Get.toNamed(Routes.forgotPasswordScreen);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: SizedBox(
                        width: 208.w,
                        height: 48.h,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue),
                          child: Text(
                            'Login',
                            style:
                            TextStyle(fontSize: 18.sp, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Text(
                        'Or use one of your social profiles:',
                        style: TextStyle(
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                 const ImageIcon(
                            AssetImage('assets/icons/facebook.png'),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          const ImageIcon(
                            AssetImage('assets/icons/google-symbol.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Dont have account?'),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.registerScreen);
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
