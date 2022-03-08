import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nabda/utils/theme.dart';

class HealthItems extends StatelessWidget {
  const HealthItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
            SizedBox(
              width:343.w,
              height: 160.h,
            ),
               Padding(
                 padding:  EdgeInsets.only(left: 15.w),
                 child: Text('Disease',
              style: TextStyle(fontSize: 20.sp,
              color:Colors.black),),
               ),
              Padding(
                padding: EdgeInsets.only(left:15.w),
                child: Text('detailshgfvfjhuykhiljlk',
                style: TextStyle(fontSize:20.sp,
                    color:Colors.grey ),),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Row(
                    children: [
                      const Icon(Icons.more_vert,
                          color:Colors.black,),
                      SizedBox(width: 17.w,),
                      const Icon(Icons.share_rounded,
                          color:Colors.black,),
                      SizedBox(width: 25.w,),
                      const Icon(Icons.star_border,
                          color:Colors.black),
                      SizedBox(width:100.w),
                      const Text('12 hours ago'),
                    ],
                ),
              ),
            ],
        ),
    );
  }
}
