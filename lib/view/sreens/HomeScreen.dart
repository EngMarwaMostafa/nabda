import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nabda/utils/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: K.kColor1,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      height: 130.h,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 10.w, top: 10.w, right: 10.w),
                        child: Row(
                          children: [
                            Text(
                              'NABDA',
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            // SizedBox(width: 50.w,),
                            const Icon((Icons.share), color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 110.h,
                        left: 10.w,
                        right: 10.w,
                      ),
                      child: SizedBox(
                        height: 60.h,
                        width: 360.w,
                        child: TextField(
                          onTap: () {},
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: K.mainColor,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Color(0xffECECEC),
                              ),
                            ),
                            hintText: "Search in your reports",
                            prefixIcon: const Icon(Icons.search),
                            hintStyle: TextStyle(
                                color: const Color(0xff515C6F),
                                fontSize: 15.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                  itemCount: 4,
                  physics: ClampingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,),
                  itemBuilder: (ctx, index) => Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/home1.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                      )),
              Padding(
                padding: EdgeInsets.only(top: 10.h,left: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Text(
                    'Remember Your Medication',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
             ],
                ),
              ),
              SizedBox(
                height: 100.h,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) => Container(
                    height: 80.h,
                    width: 240.w,
                    child: Image(
                      image: AssetImage('assets/blue.png'),
                    ),
                  ),
                  //   reverse: true,
                  padding: const EdgeInsets.all(5),
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left:30.w,right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Doctors nearby You',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 160.h,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (ctx, index) =>
                      Container(
                    height: 158.h,
                    width: 124.w,
                    child: const Image(
                      image: AssetImage('assets/dotor1.png'),
                    ),
                  ),
                  padding: const EdgeInsets.all(5),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:  Colors.white,
      //  currentIndex: controller.currentIndex.value,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color:Colors.black,
            ),
            icon: Icon(
              Icons.home,
              color:Colors.blue,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.medication,
              color:Colors.black,
            ),
            icon: Icon(
              Icons.medication,
              color:Colors.blue,
            ),
            label: 'Medications',
          ),
          BottomNavigationBarItem(
            activeIcon:Icon(
              Icons.perm_identity,
              color:Colors.black,
            ),
            icon: Icon(
              Icons.perm_identity,
              color:Colors.blue,
            ),
            label: 'Calculator',
          ),
          BottomNavigationBarItem(
            activeIcon:Icon(
              Icons.calculate,
              color:Colors.black,
            ),
            icon: Icon(
              Icons.calculate,
              color:Colors.blue,
            ),
            label: 'Calculator',
          ),
        ],
        onTap: (index) {
       //   controller.currentIndex.value = index;
        },
      ),
    );
  }
}
