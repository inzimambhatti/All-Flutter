import 'package:bidding_application_fyp/seller_screens/seller_home/components/Earnings_box.dart';
import 'package:bidding_application_fyp/seller_screens/seller_home/components/dashboard_box.dart';
import 'package:bidding_application_fyp/seller_screens/seller_home/components/profile_header.dart';
import 'package:bidding_application_fyp/seller_screens/seller_home/components/views_status.dart';
import 'package:bidding_application_fyp/size_config.dart';
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
      child: SingleChildScrollView(
        //padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: Column(

          children: const [
             ProfileHeader(),
             DashboardBox(),
             EarningBox(),
            ViewStatus()
                
          ],
        ),
      ),

    ));
  }
}
