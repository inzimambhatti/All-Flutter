import 'package:bidding_application_fyp/components/reusable_card.dart';
import 'package:bidding_application_fyp/constants.dart';
import 'package:bidding_application_fyp/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bidding_application_fyp/screens/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';

class DashboardBox extends StatefulWidget {
  const DashboardBox({Key? key}) : super(key: key);
  final double personalBalance=10023;

  @override
  _DashboardBoxState createState() => _DashboardBoxState();
}

class _DashboardBoxState extends State<DashboardBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        //height: SizeConfig.screenHeight*03,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kPrimaryColor
        ),
        //column main for all rows
        child: Column(
          children: [
            //row here is how you  doing
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   const Text(
                     "Here's how you're doing",
                     style: TextStyle(
                         color: kActiveCardColour,
                         fontWeight: FontWeight.bold),
                   ),

                   Row(
                     children: const [
                       Text(
                         "5",
                         style: TextStyle(
                           color: kActiveCardColour,
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),

                       ),
                       Icon(
                         Icons.star,
                         color: Colors.yellow,
                       ),
                     ],
                   ),

                 ],
               ),
            //cards row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      //shadowColor: kActiveCardColour,
                      elevation: 7,
                      child: Container(
                        width: getProportionateScreenWidth(100),
                        height: getProportionateScreenWidth(80),
                        decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: kActiveCardColour
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'My Items',
                                style: kLabelTextStyle,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    // Use t
                                      icon: const FaIcon(
                                        FontAwesomeIcons.shopify,
                                        color: kIconColor,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print("Pressed");
                                      }),
                                  const Text(
                                    "12",
                                    style: kNumberTextStyle,
                                  ),
                                  //icon: FontAwesomeIcons.minus,
                                ],
                              ),
                            ],
                          ),
                        ),
                        ),

                      ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      elevation: 7,
                      child: Container(
                        width: getProportionateScreenWidth(100),
                        height: getProportionateScreenWidth(80),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: kActiveCardColour
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'OTD',
                                style: kLabelTextStyle,
                              ),
                              CircularPercentIndicator(

                                radius: 40.0,
                                lineWidth: 3.0,
                                percent: 0.7,
                                center: const Text(
                                  "70%",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                progressColor: Colors.green,
                              ),
                              SizedBox(height: getProportionateScreenWidth(5),)

                            ],
                          ),
                        ),
                      ),

                    ),
                  ),
                ) ,
              ],
            ),
            //card row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      //shadowColor: kActiveCardColour,
                      elevation: 7,
                      child: Container(
                        width: getProportionateScreenWidth(100),
                        height: getProportionateScreenWidth(80),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: kActiveCardColour
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'My Bids',
                                style: kLabelTextStyle,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    // Use t
                                      icon: const FaIcon(
                                        FontAwesomeIcons.hammer,
                                        color: kIconColor,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print("Pressed");
                                      }),
                                  const Text(
                                    "23",
                                    style: kNumberTextStyle,
                                  ),
                                  //icon: FontAwesomeIcons.minus,
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      elevation: 7,
                      child: Container(
                        width: getProportionateScreenWidth(100),
                        height: getProportionateScreenWidth(80),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: kActiveCardColour
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Winings',
                                style: kLabelTextStyle,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    // Use t
                                      icon: const FaIcon(
                                        FontAwesomeIcons.glassCheers,
                                        color: kIconColor,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print("Pressed");
                                      }),
                                  const Text(
                                    "12",
                                    style: kNumberTextStyle,
                                  ),
                                  //icon: FontAwesomeIcons.minus,
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ),
                ) ,
              ],
            ),
            //card row 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      //shadowColor: kActiveCardColour,
                      elevation: 7,
                      child: Container(
                        width: getProportionateScreenWidth(100),
                        height: getProportionateScreenWidth(80),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: kActiveCardColour
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Losts',
                                style: kLabelTextStyle,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    // Use t
                                      icon: const FaIcon(
                                        FontAwesomeIcons.solidSadCry,
                                        color: kIconColor,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print("Pressed");
                                      }),
                                  const Text(
                                    "12",
                                    style: kNumberTextStyle,
                                  ),
                                  //icon: FontAwesomeIcons.minus,
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      elevation: 7,
                      child: Container(
                        width: getProportionateScreenWidth(100),
                        height: getProportionateScreenWidth(80),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: kActiveCardColour
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Sold outs',
                                style: kLabelTextStyle,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    // Use t
                                      icon: const FaIcon(
                                        FontAwesomeIcons.sellcast,
                                        color: kIconColor,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print("Pressed");
                                      }),
                                  const Text(
                                    "12",
                                    style: kNumberTextStyle,
                                  ),
                                  //icon: FontAwesomeIcons.minus,
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ),
                ) ,
              ],
            ),
            SizedBox(
              height: getProportionateScreenWidth(10),
            )


          ],
        ),
      ),
    );
  }
}
