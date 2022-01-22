import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:fyp_bidding_system/constants.dart';
class ButtonsRowBox extends StatelessWidget {
  const ButtonsRowBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GlowButton(
          splashColor: Colors.red,
          glowColor: kPrimaryColor,

          width: 150,
          onPressed: () {},
          color: kPrimaryColor,
          child: Text('Recharge',style: TextStyle(
            color: Colors.white
          ),
          ),
        ),
        SizedBox(width: 20),
        GlowButton(
          splashColor: Colors.red,
          glowColor: kPrimaryColor,
          width: 150,
          onPressed: () {},
          color: Colors.green,
          child: Text('Withdraw',style: TextStyle(
              color: Colors.white
          ),),
        ),

      ],
    );
  }
}
