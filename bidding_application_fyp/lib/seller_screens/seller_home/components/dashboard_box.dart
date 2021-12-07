import 'package:bidding_application_fyp/components/reusable_card.dart';
import 'package:bidding_application_fyp/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bidding_application_fyp/screens/profile/components/profile_pic.dart';
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
     // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 30,
            child:
                //row for avatar
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profile.png"),
                ),
                Text(
                  "Inzimam Bhatti",
                  style: kLabelTextStyle,
                ),
              ],
            ),
          ),
        ),
        //padding 1
        Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 8),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.59,
            color: kPrimaryColor,
            child: Column(
              children: [

                //padding 1
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.56,
                    decoration: BoxDecoration(
                        // color: Colors.yellow,
                        //  border: Border.all (
                        //
                        //    width: 2,
                        //    color: Colors.white,
                        //  ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Here's how you're doing",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Text(
                              "5",
                              style: TextStyle(
                                color: Colors.white,
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
                        //main expandeds
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: ReusableCard(
                                  colour: kActiveCardColour,
                                  cardChild: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
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
                                                color: Colors.white,
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
                                  onPress: () {},
                                ),
                              ),
                              Expanded(
                                child: ReusableCard(
                                  colour: kActiveCardColour,
                                  cardChild: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        'OTD ',
                                        style: kLabelTextStyle,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(0.0),
                                        child: CircularPercentIndicator(
                                          radius: 40.0,
                                          lineWidth: 3.0,
                                          percent: 0.7,
                                          center: Text(
                                            "70%",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                          progressColor: Colors.green,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onPress: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: ReusableCard(
                                  colour: kActiveCardColour,
                                  cardChild: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
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
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              onPressed: () {
                                                print("Pressed");
                                              }),
                                          const Text(
                                            "9",
                                            style: kNumberTextStyle,
                                          ),
                                          //icon: FontAwesomeIcons.minus,
                                        ],
                                      ),
                                    ],
                                  ),
                                  onPress: () {},
                                ),
                              ),
                              Expanded(
                                child: ReusableCard(
                                  colour: kActiveCardColour,
                                  cardChild: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        'Winnings',
                                        style: kLabelTextStyle,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          IconButton(
                                              // Use t
                                              icon: const FaIcon(
                                                FontAwesomeIcons.wineGlass,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              onPressed: () {
                                                print("Pressed");
                                              }),
                                          const Text(
                                            "3",
                                            style: kNumberTextStyle,
                                          ),
                                          //icon: FontAwesomeIcons.minus,
                                        ],
                                      ),
                                    ],
                                  ),
                                  onPress: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: ReusableCard(
                                  colour: kActiveCardColour,
                                  cardChild: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        'Loss',
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
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              onPressed: () {
                                                print("Pressed");
                                              }),
                                          const Text(
                                            "9",
                                            style: kNumberTextStyle,
                                          ),
                                          //icon: FontAwesomeIcons.minus,
                                        ],
                                      ),
                                    ],
                                  ),
                                  onPress: () {},
                                ),
                              ),
                              Expanded(
                                child: ReusableCard(
                                  colour: kActiveCardColour,
                                  cardChild: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        'Sold out',
                                        style: kLabelTextStyle,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          IconButton(
                                              // Use t
                                              icon: const FaIcon(
                                                FontAwesomeIcons
                                                    .thermometerEmpty,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              onPressed: () {
                                                print("Pressed");
                                              }),
                                          const Text(
                                            "3",
                                            style: kNumberTextStyle,
                                          ),
                                          //icon: FontAwesomeIcons.minus,
                                        ],
                                      ),
                                    ],
                                  ),
                                  onPress: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    //color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        //Earnings views text
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text("Earnings",style: kHeadingextStyle,),
        ),
        //pading 2
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 8),
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Card(
                    elevation: 8,

                    color: Colors.white,
                    shadowColor: Colors.orange,
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 190,
                      decoration: const BoxDecoration(

                          color: Colors.white,
                          // border: Border.symmetric(
                          //   vertical: ,
                          // //  width: 2,
                          //  // color: Colors.white,
                          // ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
//main column
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                 // mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Personal balance ",style: kNormalTextStyle,),
                                    Text("Rs12342",style: kNumberTextStyle,),
                                  ],
                                ),
                              ),
                             SizedBox(width: 32,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Earnings in December",style: kNormalTextStyle,),
                                    Text("Rs123",style: kNumberTextStyle,),

                                  ],
                                ),
                              ),




                              //main expandeds
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Active bids",style: kNormalTextStyle,),
                                    Text("3(Rs3k)",style: kNumberTextStyle,),
                                  ],
                                ),
                              ),
                              SizedBox(width: 76,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Canceled bids",style: kNormalTextStyle,),
                                    Text("1",style: kNumberTextStyle,),

                                  ],
                                ),
                              ),




                              //main expandeds
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Saved",style: kNormalTextStyle,),
                                    Text("10",style: kNumberTextStyle,),
                                  ],
                                ),
                              ),
                              SizedBox(width: 105,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Earnings in December",style: kNormalTextStyle,),
                                    Text("Rs123",style: kNumberTextStyle,),

                                  ],
                                ),
                              ),




                              //main expandeds
                            ],
                          ),

                        ],
                      ),
                      //color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        //my bids views text
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text("My ads",style: kHeadingextStyle,),
        ),
        //padding 3
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 8),
          child: Container(
            width: double.infinity,
            height: 120,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Card(
                    elevation: 8,
                    color: Colors.white,
                    shadowColor: Colors.orange,
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 110,
                      decoration: const BoxDecoration(

                          color: Colors.white,
                          // border: Border.symmetric(
                          //   vertical: ,
                          // //  width: 2,
                          //  // color: Colors.white,
                          // ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
//main column
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                 child: Text("Views ",style: kNormalTextStyle,),
                              ),
                              SizedBox(width: 200,),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("1.7K ",style: kNormalTextStyle,),
                              ),




                              //main expandeds
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Clicks ",style: kNormalTextStyle,),
                              ),
                              SizedBox(width: 200,),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("500 ",style: kNormalTextStyle,),
                              ),




                              //main expandeds
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Saved ",style: kNormalTextStyle,),
                              ),
                              SizedBox(width: 200,),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("1K ",style: kNormalTextStyle,),
                              ),




                              //main expandeds
                            ],
                          ),


                        ],
                      ),
                      //color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
