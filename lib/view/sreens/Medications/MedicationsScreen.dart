import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nabda/utils/theme.dart';

class MedicationsScreen extends StatelessWidget {
  const MedicationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Container(
              height: 130.h,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.h),
            child: SizedBox(
              child: Center(
                child: Container(
                  height: 490.h,
                  width: 345.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                    child:Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                           width: 307.w,
                           height: 80.h,
                            decoration: BoxDecoration(
                              color: K.kColor2,
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                              child:Column(
                                children:[
                                  Padding(
                                    padding:  EdgeInsets.only(right: 10.w,left: 10.w,top: 10.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Medicine',
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                        fontSize: 14.sp),),
                                        CircleAvatar(
                                          radius: 20.r,
                                          backgroundColor: Colors.blue,
                                          child: IconButton(onPressed: (){},
                                              icon: Icon(Icons.add,
                                                  color: Colors.white,
                                              size: 25,)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text('Write the medicine name',
                                    style: TextStyle(fontSize: 14.sp,
                                      color: K.kColor3, ),
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
