import 'package:bidding_application_fyp/components/coustom_bottom_nav_bar.dart';
import 'package:bidding_application_fyp/components/custom_card.dart';
import 'package:bidding_application_fyp/components/default_button.dart';
import 'package:bidding_application_fyp/constants.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter/material.dart';



import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [

          ProfilePic(),
          default_card(userName: ("inzimam bhatti"),balance: ("        PB:1000/Rs"), ),
          //SizedBox(height: 20),
          // DefaultButton(
          //   text: "Seller Mode",
          //   press: () {
          //
          //   // isBuyer=true;
          //    // Navigator.pushNamed(context, SignInScreen.routeName);
          //   },
          // ),
          ToggleSwitch(
            minWidth: 102.0,
            minHeight: 40.0,
            fontSize: 16.0,
            initialLabelIndex: 1,
            activeBgColor: [kPrimaryColor],
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.teal,
            inactiveFgColor: Colors.grey[900],
            totalSwitches: 3,
            labels: ['Seller', 'Buyer', 'Logout'],
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
