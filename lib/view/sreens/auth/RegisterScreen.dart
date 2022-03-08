import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:nabda/Routes/routes.dart';
import 'package:nabda/utils/custom_text_field.dart';


class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top:20.h),
            child: Container(
              height: 190.h,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding:  EdgeInsets.only(left:10.w,bottom:110.h),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back_ios_outlined),
                      color: Colors.white,
                    ),
                    Text(
                      'Back',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.h),
            child: SizedBox(
              child:Center(
                child: Container(
                  height: 531.h,
                  width: 345.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Center(
                          child: Text(
                            'Register',
                            style: TextStyle(
                                fontSize: 22.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: Text(
                            'Welcome to our community',
                            style: TextStyle(
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          width: 87.w,
                          height: 88.h,
                          child: const CircleAvatar(
                            backgroundImage:
                            (AssetImage('assets/image.png')),),
                        ),
                        SizedBox(height: 20.h,),
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.w, right: 10.w, bottom: 18.h),
                          height: 81.h,
                          child: const CustomTextField(
                            prefixIcon: Icon(Icons.perm_identity),
                            labelText: 'Full name',
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.w, right: 10.w, bottom: 18.h),
                          height: 81.h,
                          child: const CustomTextField(
                            labelText: 'Mobile number',
                            prefixIcon: Icon(Icons.phone),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.w, right: 10.w, bottom: 18.h),
                          height: 81.h,
                          child: const CustomTextField(
                            prefixIcon: Icon(Icons.transgender),
                            labelText: 'Gender',
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.w, right: 10.w, bottom: 18.h),
                          height: 81.h,
                          child: const CustomTextField(
                            labelText: 'Date of birth',
                            prefixIcon: Icon(Icons.calendar_today),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.w, right: 10.w, bottom: 18.h),
                          height: 81.h,
                          child: const CustomTextField(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email_outlined),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.w, right: 10.w, bottom: 18.h),
                          height: 81.h,
                          child: const CustomTextField(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock_outline),
                          ),
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
                                'Register',
                                style:
                                TextStyle(fontSize: 18.sp, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Already have account?'),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.loginScreen);
                                },
                                child: const Text(
                                  'Login',
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}

