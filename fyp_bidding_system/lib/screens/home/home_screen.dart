import 'package:flutter/material.dart';
import 'package:fyp_bidding_system/components/coustom_bottom_nav_bar.dart';
import 'package:fyp_bidding_system/enums.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return

    HomePage();

  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.white])),
      child: Scaffold(
        // By defaut, Scaffold background is white
        // Set its value to transparent
          backgroundColor: Colors.transparent,

          body: Body()),
    );
  }
}
