import 'package:flutter/material.dart';
import 'package:fyp_bidding_system/constants.dart';
class ProductOwnerDetails extends StatelessWidget {
  const ProductOwnerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 12,),
              Text("Seller :",),
              Text("bxj_alikhan",style: kHeadingextStyle,),

            ],
          ),
          Row(
            children: [
              SizedBox(width: 12,),
              Text("Address :",),
              Text(",vehari,Punjab,Pakistan",style: kHeadingextStyle,),

            ],
          ),
        ],
      ),
    );
  }
}
