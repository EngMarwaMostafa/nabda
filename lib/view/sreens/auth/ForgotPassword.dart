import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:nabda/utils/custom_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h),
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
                padding: EdgeInsets.only(left: 10.w, bottom: 110.h),
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
              child: Center(
                child: Container(
                  height: 531.h,
                  width: 345.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30.h,
                          ),
                          Image.asset('assets/for.png'),
                          SizedBox(height: 35.h,),
                          Text('Forgot Password',
                          style: TextStyle(fontSize: 22.sp,
                          fontWeight: FontWeight.bold),),
                          SizedBox(height: 10.h,),
                          Text('Enter your mobile number to reset your password',
                          style: TextStyle(fontSize: 14.sp),),
                          SizedBox(height: 40.h,),
                          Container(
                            padding: EdgeInsets.only(
                                left: 15.w, right: 10.w, bottom: 18.h),
                            height: 81.h,
                            child: const CustomTextField(
                              labelText: 'Mobile number',
                              prefixIcon: Icon(Icons.phone),
                            ),
                          ),
                          SizedBox(height: 40.h,),
                          Center(
                            child: SizedBox(
                              width: 208.w,
                              height: 48.h,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.blue),
                                child: Text(
                                  'Send',
                                  style:
                                  TextStyle(fontSize: 18.sp, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
