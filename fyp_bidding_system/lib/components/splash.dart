import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fyp_bidding_system/constants.dart';
import 'package:fyp_bidding_system/screens/splash/splash_screen.dart';
import 'package:fyp_bidding_system/main.dart';




class splashscreen extends StatefulWidget {
  static String routeName="/splash";
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => SplashScreen(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Center(
          child: Text(
            "BiddingCart",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontFamily: "Satisfy",
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}