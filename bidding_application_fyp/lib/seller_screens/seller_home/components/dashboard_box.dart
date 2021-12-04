import 'package:bidding_application_fyp/components/reusable_card.dart';
import 'package:bidding_application_fyp/constants.dart';
import 'package:flutter/material.dart';
class DashboardBox extends StatefulWidget {
  const DashboardBox({Key? key}) : super(key: key);

  @override
  _DashboardBoxState createState() => _DashboardBoxState();
}

class _DashboardBoxState extends State<DashboardBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kPrimaryColor,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ' Totals Bids',
                style: kLabelTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                   "16",
                    style: kNumberTextStyle,
                  ),
                  Text(
                    '/Bi',
                    style: kLabelTextStyle,
                  )
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  inactiveTrackColor: Color(0xFF8D8E98),
                  activeTrackColor: Colors.white,
                  thumbColor: Color(0xFFEB1555),
                  overlayColor: Color(0x29EB1555),
                  thumbShape:
                  RoundSliderThumbShape(enabledThumbRadius: 5.0),
                  overlayShape:
                  RoundSliderOverlayShape(overlayRadius: 30.0),
                ),
                child: Slider(
                  value:3,
                  min: 0,
                  max: 100,
                  onChanged: (double newValue) {
                    setState(() {
                      //theoryCredits = newValue.round();
                    });
                  },
                ),
              ),
            ],
          ),
                  onPress: (){

                  },
                ),
              ),


            ],
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        colour: kActiveCardColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Loss',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              "15",
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                SizedBox(
                                  width: 10.0,
                                ),

                              ],
                            ),
                          ],
                        ), onPress: (){},
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        colour: kActiveCardColour,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'My products',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              "100",
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                SizedBox(
                                  width: 10.0,
                                ),

                              ],
                            )
                          ],
                        ),
                        onPress: (){},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );

  }
}
