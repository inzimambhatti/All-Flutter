import 'package:flutter/material.dart';

import 'components/body.dart';

class SellerCompleteProfileScreen extends StatelessWidget {
  static String routeName = "/seller_complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seller Complete Profile'),
      ),
      body: Body(),
    );
  }
}
