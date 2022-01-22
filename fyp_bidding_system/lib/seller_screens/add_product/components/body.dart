import 'package:fyp_bidding_system/components/default_button.dart';
import 'package:fyp_bidding_system/seller_screens/add_product/components/multi_image_picker.dart';
import 'package:fyp_bidding_system/seller_screens/add_product/components/product_form.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';

import '../../../constants.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  //All Variables
  String choosenValue='--Choose category';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              alignment: Alignment.center,
              width: double.infinity,

              decoration: BoxDecoration(

                color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton<String>(
                      value: choosenValue,

                      elevation: 20,
                      style: TextStyle(color: Colors.black),

                      items: <String>[
                        '--Choose category',
                        'Property',
                        'Electronics',
                        'Antiqueues',
                        'Watches and jewellery',
                        'Vehicles',
                        'Programming and tech',
                        'Home goods',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(

                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      hint: const Text(
                        "Please choose a langauage",
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      onChanged: (String ?value) {
                        if(choosenValue!=null){
                        }
                        setState(() {
                          choosenValue = value!;
                        });

                      }),
                  SizedBox(width: 10,),
                  ElevatedButton(onPressed: (){
                    MotionToast.success(
                        title:  Text("Success"),
                        description:  Text("Add is live now"),
                        height: 50,
                        width:  300
                    ).show(context);
                    //Navigator.pushNamed(context, CategoriesPicker.routeName);
                  }, child: Text("Live Now")),
                ],
              ),
            ),
          ),
          ProductForm(),
         ImagePicker(),



        ],
      ),
    )  ;
  }
}
