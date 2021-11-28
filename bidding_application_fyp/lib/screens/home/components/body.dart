import 'package:bidding_application_fyp/components/become_seller_button.dart';
import 'package:bidding_application_fyp/components/default_button.dart';
import 'package:bidding_application_fyp/constants.dart';
//import 'package:bidding_application_fyp/screens/become_seller/become_seller_screen.dart';
import 'package:bidding_application_fyp/screens/sign_up/sign_up_screen.dart';
import 'package:bidding_application_fyp/seller_screens/become_seller/become_seller_screen.dart';


import 'package:flutter/material.dart';
import 'package:easy_dialog/easy_dialog.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [


            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
           // SizedBox(height: getProportionateScreenWidth(10)),
            Dialog(
              child: Container(
                height:40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                   TextButton(

                        onPressed: (){
                          Navigator.pushNamed(context, BecomeSellerScreen.routeName);
                        }, child: Text("Become Seller in few steps",
                     style: TextStyle(color: kPrimaryColor,),)),
                    TextButton(

                        onPressed: (){
                          Navigator.of(context).pop();
                        }, child: Text("X"))
                  ],
                ),
              ),
            ),
        //BecomeSellerButton(text: "Welcome!Wanna Become a Seller?",),
            DiscountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
