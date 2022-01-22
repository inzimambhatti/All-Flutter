import 'package:fyp_bidding_system/screens/chat/chat_screen.dart';
import 'package:fyp_bidding_system/screens/profile/components/body.dart';
import 'package:fyp_bidding_system/screens/purchased/purchased_screen.dart';
import 'package:fyp_bidding_system/screens/search/search_screen.dart';
import 'package:fyp_bidding_system/seller_screens/seller_home/seller_home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyp_bidding_system/screens/home/home_screen.dart';
import 'package:fyp_bidding_system/screens/profile/profile_screen.dart';

import '../constants.dart';
import '../enums.dart';

bool isBuyer=true;
class CustomBottomNavBar extends StatelessWidget {

  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {

    //final Color inActiveIconColor = Color(0xFFB6B6B6);
    final Color inActiveIconColor = Colors.black;


    return

      Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if(isBuyer==true)...{
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
               icon: Icon(Icons.chat_outlined),
                // icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
                onPressed: () {
                  Navigator.pushNamed(context, ChatScreen.routeName);
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                //icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
                onPressed: () {
                  Navigator.pushNamed(context, SearchScreen.routeName);
                },
              ),
              IconButton(
                icon: Icon(Icons.wallet_giftcard),
                //icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
                onPressed: () {
                  Navigator.pushNamed(context, PurchasedScreen.routeName);
                },
              ),
              IconButton(
                // icon: SvgPicture.asset(
                //   "assets/icons/User Icon.svg",
                //   color: MenuState.profile == selectedMenu
                //       ? kPrimaryColor
                //       : inActiveIconColor,
                // ),
                icon: Icon(
                  Icons.person_outline,color: MenuState.profile == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, ProfileScreen.routeName),
              ),}
              else...{
                IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/Shop Icon.svg",
                    color: MenuState.home == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                  ),
                  onPressed: () =>
                      Navigator.pushNamed(context, SellerHomeScreen.routeName),
                ),
                IconButton(
                  icon: Icon(Icons.chat_outlined),
                  // icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.wallet_giftcard),
                  //icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
                  onPressed: () {},
                ),
                IconButton(
                  // icon: SvgPicture.asset(
                  //   "assets/icons/User Icon.svg",
                  //   color: MenuState.profile == selectedMenu
                  //       ? kPrimaryColor
                  //       : inActiveIconColor,
                  // ),
                  icon: Icon(
                    Icons.person_outline,color: MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                  ),
                  onPressed: () =>
                      Navigator.pushNamed(context, ProfileScreen.routeName),
                ),
              }
            ],
          )),
    );
  }
}
