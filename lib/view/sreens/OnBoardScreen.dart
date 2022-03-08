
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'auth/LoginScreen.dart';

class OnBoardScreen extends StatefulWidget {
  OnBoardScreen({Key? key}) : super(key: key);

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverBoard(
        pages: pages,
        showBullets: true,
        skipCallback: () {
         Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        finishCallback: () {
         Navigator.of(context).pushReplacement(
           MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
      ),
    );
  }

  final pages = [
    PageModel(
      title: '',
        doAnimateImage: true,
        color: Colors.white,
        imageAssetPath: 'assets/On1.png',
        body: 'Track Your Health/n Reports With Us',
        ),
    PageModel(
      doAnimateImage: true,
        color: Colors.white,
        imageAssetPath: 'assets/On2.png',
        title:' Get Reminders For Your Medications' ,
        body: 'See the increase in productivity & output',
       ),
    PageModel(
      title: '',
        doAnimateImage: true,
        color: Colors.white,
        imageAssetPath: 'assets/On3.png',
        body: 'Share your Reports With Your Doctors',
       ),
    PageModel(
      title: '',
      doAnimateImage: true,
      color: Colors.white,
      imageAssetPath: 'assets/On4.png',
      body: 'Book Appointment',
    ),
  ];
}