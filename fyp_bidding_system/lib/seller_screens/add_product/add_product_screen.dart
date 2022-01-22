

import 'package:fyp_bidding_system/components/default_button.dart';
import 'package:fyp_bidding_system/constants.dart';
import 'package:fyp_bidding_system/seller_screens/add_product/components/product_form.dart';
import 'package:fyp_bidding_system/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';

import 'components/body.dart';


class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);
  static String routeName="/add_product";


  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body:
    Body(),
    );
  }
}


