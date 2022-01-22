import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class default_card extends StatelessWidget {
  const default_card({
    Key? key,
    required this.userName,
    required this.balance,

    this.press,
  }) : super(key: key);

  final String userName ,balance;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: kPrimaryColor,
          padding: EdgeInsets.all(20),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: kPrimaryColor,
        ),
        onPressed: press,
        child: Row(
          children: [


            Expanded(child: Text(userName,style: TextStyle(color: Colors.white,fontSize: 18),)),
            SizedBox(width: 5),
            Expanded(child: Text(balance,style: TextStyle(color: Colors.white,fontSize: 16),)),

          ],
        ),
      ),
    );
  }
}
