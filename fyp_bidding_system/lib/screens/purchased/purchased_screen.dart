import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:fyp_bidding_system/bidding_components/place_bid.dart';
import 'package:fyp_bidding_system/components/default_button.dart';
import 'package:fyp_bidding_system/screens/details/components/color_dots.dart';
import 'package:fyp_bidding_system/screens/details/components/product_description.dart';
import 'package:fyp_bidding_system/screens/details/components/product_images.dart';
import 'package:fyp_bidding_system/screens/details/components/product_owner_details.dart';
import 'package:fyp_bidding_system/screens/details/components/top_rounded_container.dart';
import 'package:motion_toast/motion_toast.dart';

import '../../constants.dart';
import '../../size_config.dart';



class PurchasedScreen extends StatefulWidget {
  const PurchasedScreen({Key? key}) : super(key: key);
 static String routeName="/purchased_Screen";
  @override
  _PurchasedScreenState createState() => _PurchasedScreenState();
}

class _PurchasedScreenState extends State<PurchasedScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(body: ListView(
        children: [
         buildTimer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GlowButton(
                      splashColor: Colors.orange,
                      glowColor: kPrimaryColor,
                      width:150,
                        child: Text("Re schedual!",style: TextStyle(color: Colors.white),), onPressed: (){
                      MotionToast.info(
                          width:300,
                          height: 100,
                          title: Text("Finished"),
                          description: Text(" your bid has been re schedualed successful")).show(context);
                    }
                    ),
                    SizedBox(width: 10,),
                    GlowButton(
                      splashColor: Colors.orange,
                      glowColor: Colors.red,
                      width:150,
                        child: Text("Finish bid!"), onPressed: (){
                      MotionToast.warning(
                          width:300,
                          height: 100,
                          title: Text("Finished"),
                          description: Text(" your bid has been finished successful")
                      ).show(context);
                    }
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Max bid:  23800",),
                    SizedBox(width: 35,),
                    Text("opening price:  1000")
                  ],
                ),
                SizedBox(height: 10,),
                Text("Price List",style: kHeadingextStyle,),
                Column(
                  children: [
                    Column(
                      children: [
                        Text("1. 2000  "),
                        Text("2. 3000  "),
                        Text("3. 3500  "),
                        Text("4. 5000  "),
                        Text("5. 23800")
                      ],
                    )
                  ],
                )
              ],
            ),
          )

        ],
    ),
     );
  }
}
Row buildTimer() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Bidding will be finished in "),
      TweenAnimationBuilder(
        tween: Tween(begin: 60.0, end: 0.0),
        duration: Duration(seconds: 60),
        builder: (_, dynamic value, child) => Text(
          "02:${value.toInt()}",
          style: TextStyle(color: Colors.red ,fontSize: 30),
        ),
      ),
    ],
  );}
