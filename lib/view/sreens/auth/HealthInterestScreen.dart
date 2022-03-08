import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nabda/utils/theme.dart';

class HealthInterestScreen extends StatelessWidget {
  const HealthInterestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K.kColor1,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 20.w, right: 10.w, top: 50.h,),
              child: Row(
                children: [
                  SizedBox(
                    height: 42.h,
                    width: 260.w,
                    child: TextField(
                      onTap: () {},
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: K.mainColor,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Color(0xffECECEC),
                          ),
                        ),
                        hintText: "Search Health Interest",
                        prefixIcon: const Icon(Icons.search),
                        hintStyle: TextStyle(
                            color: const Color(0xff515C6F), fontSize: 10.sp),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    children: [
                      const Icon(
                        Icons.star_border,
                        color: Colors.black,
                      ),
                      Text(
                        'favorite',
                        style: TextStyle(fontSize: 8.sp, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 32.w,
                    height: 32.h,
                    child: const CircleAvatar(
                      backgroundImage: (AssetImage('assets/man.png')),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: 343.w,
                height: 230.h,
                  child:const Card(
                      child: Image(image: AssetImage('assets/health1.png'),),
                  ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(3),
              child: Container(
                width: 343.w,
                height: 230.h,
                child:const Card(
                  child: Image(image: AssetImage('assets/health2.png'),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                decoration:BoxDecoration(borderRadius:BorderRadius.circular(10.r)),
                width: 343.w,
                height: 230.h,
                child:const Card(
                  child: Image(image: AssetImage('assets/health1.png'),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
