import 'package:flutter/material.dart';

import 'components/body.dart';
class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);
  static String routeName="/ my_account_screen";

  @override
  Widget build(BuildContext context) {
    return Body();
  }
}
