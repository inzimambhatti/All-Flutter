import 'dart:async';
import 'package:flutter/material.dart';

import 'package:firebaseproject_inzimam/main.dart';




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
        builder: (context) => MyHomePage(),
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
            "Password Diary !!",
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