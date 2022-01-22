import 'package:fyp_bidding_system/components/default_button.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class PlaceBid extends StatelessWidget {
  const PlaceBid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

       // width: SizeConfig.screenWidth,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kSecondaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [

            TextField(
              onChanged: (value) => print(value),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(0),
                      vertical: getProportionateScreenWidth(7)),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: "Enter your max bid in Rupees",
                  prefixIcon: Icon(Icons.edit)
      ),
            ),
            DefaultButton(
              text: "Place Bid",
              press: () {
                MotionToast.success(
                    title:  Text("Success"),
                    description:  Text("You are now part of the bidding process"),
                    height: 70,
                    width:  300
                ).show(context);
               // Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
