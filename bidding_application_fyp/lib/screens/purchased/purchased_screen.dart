import 'package:flutter/material.dart';



class PurchasedScreen extends StatefulWidget {
  const PurchasedScreen({Key? key}) : super(key: key);
 static String routeName="/purchased_Screen";
  @override
  _PurchasedScreenState createState() => _PurchasedScreenState();
}

class _PurchasedScreenState extends State<PurchasedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("I am Purchased screen"),
      ),
    );
  }
}
