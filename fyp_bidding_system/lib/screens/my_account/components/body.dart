import 'package:flutter/material.dart';
import 'package:fyp_bidding_system/screens/profile/components/profile_menu.dart';
import 'package:fyp_bidding_system/screens/wallet/wallet_screen.dart';
import 'package:fyp_bidding_system/seller_screens/become_seller/become_seller_screen.dart';
import 'package:motion_toast/motion_toast.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Account",
            style: TextStyle(
                color:Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
           children: [
             ProfileMenu(
               text: "Become Seller",
               icon: "assets/icons/Shop Icon.svg",
               press: () => {
                 Navigator.pushNamed(context,BecomeSellerScreen.routeName),
               },
          ),
               ProfileMenu(
                 text: "Edit Account",
                 icon: "assets/icons/User Icon.svg",
                 press: () => {
                 MotionToast.info(
                 title:  Text("Sory"),
                 description:  Text("Will available soon"),
                 height: 50,
                 width:  300
                 ).show(context)
                 },
               ),
             ProfileMenu(
               text: "My Wallet",
               icon: "assets/icons/Cash.svg",
               press: () => {
                 Navigator.pushNamed(context,WalletScreen.routeName),
               },
             ),
           ],
          ),
        ),
      ),
    );
  }
}
