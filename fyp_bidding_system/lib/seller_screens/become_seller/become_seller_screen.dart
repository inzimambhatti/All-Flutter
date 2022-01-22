import 'package:flutter/material.dart';

import 'components/body.dart';

class BecomeSellerScreen extends StatelessWidget {
  static String routeName = "/become_seller";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Become a Seller"),
      ),
      body: Body(),
    );
  }
}
