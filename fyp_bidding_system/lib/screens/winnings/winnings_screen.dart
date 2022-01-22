import 'package:flutter/material.dart';
import 'package:fyp_bidding_system/components/bottom_navigation.dart';
import 'package:fyp_bidding_system/models/Cart.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

class WinningsScreen extends StatelessWidget {
  static String routeName = "/winnings";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
     // bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Column(
        children: [
          isBuyer==true?
          const Text(
            "Your winnings are here!",
            style: TextStyle(color: Colors.black),
          )
           :
          const Text(
            "Your sold outs are here!",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
