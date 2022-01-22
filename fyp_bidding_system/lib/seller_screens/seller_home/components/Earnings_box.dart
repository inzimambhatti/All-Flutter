import 'package:flutter/material.dart';

import '../../../constants.dart';
class EarningBox extends StatefulWidget {
  const EarningBox({Key? key}) : super(key: key);

  @override
  _EarningBoxState createState() => _EarningBoxState();
}

class _EarningBoxState extends State<EarningBox> {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        //Earnings views text
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text("Earnings",style: kHeadingextStyle,),
            ),
          ],
        ),
        //pading 2
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 8),
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
                    height: 190,
                    decoration: const BoxDecoration(

                        color: kActiveCardColour,
                        // border: Border.symmetric(
                        //   vertical: ,
                        // //  width: 2,
                        //  // color: kIconColor,
                        // ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
//main column
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Personal balance",style: kNormalTextStyle,),
                                Text("Rs12002",style: kEarningNumberTextStyle,),
                              ],
                            ),
                          ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Active bids",style: kNormalTextStyle,),
                                 Text("3(Rs5k)",style: kEarningNumberTextStyle,),
                               ],
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("saved",style: kNormalTextStyle,),
                                 Text("10",style:kEarningNumberTextStyle,),
                               ],
                             ),
                           )
                         ],
                       ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Earnings in December",style: kNormalTextStyle,),
                                  Text("Rs123",style: kEarningNumberTextStyle,),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Cancelled bids",style: kNormalTextStyle,),
                                  Text("1(Rs10k)",style: kEarningNumberTextStyle,),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Earnings without bid",style: kNormalTextStyle,),
                                  Text("Rs452325",style: kEarningNumberTextStyle,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                    //color: kIconColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
