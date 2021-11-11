import 'dart:async';





import 'package:flutter/material.dart';
import 'package:profile/Screens/ProfilePage.dart';


main() {
  runApp(new MaterialApp(
    title: 'Fluter Profile Page',
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
        primaryColor: Color(0xff0082CD),

        primaryColorDark: Color(0xff0082CD)),
    home: new ProfilePage(),
    routes: <String, WidgetBuilder>{
      //SPLASH_SCREEN: (BuildContext context) => new MapScreen(),
     // PROFILE: (BuildContext context) => new ProfilePage(),
    },
  ));
}
