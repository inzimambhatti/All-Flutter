import 'package:bidding_application_fyp/components/bottom_navigation.dart';
import 'package:bidding_application_fyp/components/custom_card.dart';
import 'package:bidding_application_fyp/constants.dart';
import 'package:flutter/material.dart';
import 'package:switcher/core/switcher_size.dart';
import 'package:switcher/switcher.dart';
import '../../../size_config.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          ProfilePic(),
          Stack(
            children: [
              default_card(userName: ("inzimam bhatti"),balance: (" PB:112323/Rs"), ),
              Container(
                margin:EdgeInsets.only(left: 31,top: 63) ,
                width: getProportionateScreenWidth(300),
                height: getProportionateScreenHeight(40),
                decoration: BoxDecoration(
                    color: Colors.black
                    ,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                //color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text("Seller mode Coming soon",style: kNormalTextStyle,),
                    const SizedBox(width: 100,),


                  ],
                ),
              )

            ],
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
          ),

        ],
      ),
    );
  }
}

