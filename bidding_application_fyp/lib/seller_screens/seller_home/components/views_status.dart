import 'package:flutter/material.dart';

import '../../../constants.dart';
class ViewStatus extends StatefulWidget {
  const ViewStatus({Key? key}) : super(key: key);

  @override
  _ViewStatusState createState() => _ViewStatusState();
}

class _ViewStatusState extends State<ViewStatus> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    //my bids views text
    Row(
      children: [
        Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Text("My ads",style: kHeadingextStyle,),
        ),
      ],
    ),
    //padding 3
    Padding(
    padding: const EdgeInsets.only(top: 5, bottom: 8),
    child: Container(
    width: double.infinity,
    //height: 206,
    color: kActiveCardColour,
    child: Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 15,right: 15),
    child: Card(
    elevation: 8,
    color: kActiveCardColour,
    shadowColor: Colors.orange,
    shape:  OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: kActiveCardColour)
    ),
    child: Container(
    width: double.infinity,
    //height: 110,
    decoration: const BoxDecoration(

    color: Colors.white,
    // border: Border.symmetric(
    //   vertical: ,
    // //  width: 2,
    //  // color: kIconColor,
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
    child: Text("1.7K ",style: kEarningNumberTextStyle,),
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
    child: Text("500 ",style: kEarningNumberTextStyle,),
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
    child: Text("1K ",style: kEarningNumberTextStyle,),
    ),




    //main expandeds
    ],
    ),


    ],
    ),
    //color: kIconColor,
    ),
    ),
    ),
      ],

    )
    )
    )
    ]
    );
  }
}
