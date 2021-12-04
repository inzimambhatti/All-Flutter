import 'package:bidding_application_fyp/screens/profile/components/body.dart';
import 'package:bidding_application_fyp/screens/splash/components/body.dart';
import 'package:bidding_application_fyp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:switcher/core/switcher_size.dart';
import 'package:switcher/switcher.dart';

import 'custom_card.dart';




class StackInProfile extends StatefulWidget {
  const StackInProfile({Key? key}) : super(key: key);

  @override
  _StackInProfileState createState() => _StackInProfileState();
}

class _StackInProfileState extends State<StackInProfile> {
  @override
  Widget build(BuildContext context) {
    return Center(
child: Stack(
  children: [
    default_card(userName: ("inzimam bhatti"),balance: ("        PB:1000/Rs"), ),
   Container(
     margin:EdgeInsets.only(left: 31,top: 63) ,
     width: getProportionateScreenWidth(300),
     height: getProportionateScreenHeight(40),
     decoration: BoxDecoration(
       color: Colors.green,
         border: Border.all(
           color: Colors.white,
         ),
         borderRadius: BorderRadius.all(Radius.circular(20))
     ),
     //color: Colors.teal,
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         const Text("Seller mode",style:
         TextStyle(color: Colors.black,
             fontWeight: FontWeight.bold),),
         const SizedBox(width: 100,),


     Switcher(
     value: false,
     size: SwitcherSize.medium,
     switcherButtonRadius: 50,
     enabledSwitcherButtonRotate: true,
     iconOff: Icons.lock,
     iconOn: Icons.lock_open,
     colorOff: Colors.black,
     colorOn: Colors.blue,
     onChanged: (bool state) {
       setState(() {
         if(state==true){
           isBuyer=true;
         }
         else{
           isBuyer=false;
         }
       });
       //
     },
   ),
       ],
     ),
   )

  ],
),
    )
           ;
  }
}
