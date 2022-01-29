import 'package:flutter_glow/flutter_glow.dart';
import 'package:fyp_bidding_system/components/bottom_navigation.dart';
import 'package:fyp_bidding_system/components/custom_card.dart';
import 'package:fyp_bidding_system/constants.dart';
import 'package:flutter/material.dart';
import 'package:fyp_bidding_system/screens/my_account/my_account_screen.dart';
import 'package:fyp_bidding_system/seller_screens/become_seller/become_seller_screen.dart';
import 'package:fyp_bidding_system/services/authentications.dart';
import 'package:fyp_bidding_system/theme.dart';
import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:provider/provider.dart';
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
  bool switchSelected = false;
  Widget build(BuildContext context) {
    final authService=Provider.of<AuthService>(context);
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          ProfilePic(),
          Stack(
            children: [
              const default_card(userName: ("inzimam bhatti"),balance: ("   PB:1000/Rs"), ),
              Container(
                margin:EdgeInsets.only(left: 31,top: 63) ,
                width: getProportionateScreenWidth(300),
                height: getProportionateScreenHeight(40),
                decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                //color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    isBuyer==true?
                    const Text("Buyer Mode"):const Text("Seller Mode"),
                    SizedBox(width: 140,),
                    GlowSwitch(
                      onChanged: (value) {
                        print(value);

                        setState(() {
                          switchSelected = value;
                          print(value);
                          value=false;
                          print(value);
                         isBuyer=value;


                        });
                      },
                      value: switchSelected,
                      activeColor: kPrimaryColor.withOpacity(0.6),
                      blurRadius: 4,

                    ),


                  ],
                ),
              )

            ],
          ),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {
              Navigator.pushNamed(context,MyAccountScreen.routeName),
            },
          ),

          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {
              Get.bottomSheet(


                Container(
                  child: Wrap(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.wb_sunny_outlined,
                        ),
                        title: Text("Light"),
                        onTap: (){Get.changeTheme(ThemeData.light());},
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.wb_sunny,
                        ),
                        title: Text("Dark"),
                        onTap: (){Get.changeTheme(ThemeData.dark());},
                      )
                    ],
                  ),
                ),
                  backgroundColor: kPrimaryColor,

              );
              
            },
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () async{
              await authService.signOut();
            },
          ),

        ],
      ),
    );
  }
}

