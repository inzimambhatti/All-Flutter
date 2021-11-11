import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myquiz_app/main.dart';

import 'package:myquiz_app/screens/welcome/welcome_screen.dart';


class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => WelcomeScreen(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: Text(
            "QuizApp\nPowerFul UI !!",
            style: TextStyle(
              fontSize: 50.0,
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