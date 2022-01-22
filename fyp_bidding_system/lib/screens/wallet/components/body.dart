import 'package:flutter/material.dart';
import 'package:fyp_bidding_system/screens/wallet/components/buttons_row.dart';
import 'package:fyp_bidding_system/screens/wallet/components/wallet_box.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Wallet",style: TextStyle(
          color: Colors.black
        ),
        ),
      ),
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              WalletBox(),
              ButtonsRowBox()
            ],
          ),
        ),
      ) ,
    ) ;
  }
}
