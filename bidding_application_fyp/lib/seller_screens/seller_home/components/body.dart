import 'package:bidding_application_fyp/seller_screens/seller_home/components/dashboard_box.dart';
import 'package:flutter/material.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(
      child: Column(
        children: [
               DashboardBox(),
        ],
      ),

    ));
  }
}