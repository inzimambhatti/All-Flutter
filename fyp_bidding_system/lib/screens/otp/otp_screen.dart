import 'package:flutter/material.dart';
import 'package:fyp_bidding_system/size_config.dart';

import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
      ),
      body: Body(),
    );
  }
}