import 'package:bidding_application_fyp/components/coustom_bottom_nav_bar.dart';
import 'package:bidding_application_fyp/components/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:switcher/core/switcher_size.dart';
import 'package:switcher/switcher.dart';
import '../../../size_config.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';
bool isBuyer=false;
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
              default_card(userName: ("inzimam bhatti"),balance: ("        PB:1000/Rs"), ),
              Container(
                margin:EdgeInsets.only(left: 31,top: 63) ,
                width: getProportionateScreenWidth(300),
                height: getProportionateScreenHeight(40),
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                //color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Seller mode",style:
                    TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold),),
                    const SizedBox(width: 100,),


                    Switcher(
                      value: false,
                      size: SwitcherSize.medium,
                      switcherButtonRadius: 50,
                      enabledSwitcherButtonRotate: true,
                      iconOff: Icons.lock,
                      iconOn: Icons.lock_open,
                      colorOff: Colors.black,
                      colorOn: Colors.blue,
                      onChanged: (bool state){

                          isBuyer=state;

                        //
                      },
                    ),
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
            press: () {},
          ),
        ],
      ),
    );
  }
}

