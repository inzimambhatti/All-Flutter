import 'package:bidding_application_fyp/components/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:bidding_application_fyp/enums.dart';
import 'components/body.dart';
class SellerProfileScreen extends StatefulWidget {
  const SellerProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/seller_profile";

  @override
  _SellerProfileScreenState createState() => _SellerProfileScreenState();
}

class _SellerProfileScreenState extends State<SellerProfileScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Body(),
    );
  }
}

