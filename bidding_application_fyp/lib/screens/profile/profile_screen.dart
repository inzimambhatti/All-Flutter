import 'package:bidding_application_fyp/components/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:bidding_application_fyp/enums.dart';
import 'components/body.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/seller_profile";

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Body(),
    );
  }
}

