import 'package:bidding_application_fyp/screens/home/components/default_button_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:bidding_application_fyp/components/coustom_bottom_nav_bar.dart';
import 'package:bidding_application_fyp/enums.dart';

import 'components/body.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/profile";

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      //bottomNavigationBar: DefaultBottomNavBar(),
      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}

