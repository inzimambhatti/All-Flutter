

import 'package:bidding_application_fyp/components/default_button.dart';
import 'package:bidding_application_fyp/constants.dart';
import 'package:bidding_application_fyp/seller_screens/add_product/components/product_form.dart';
import 'package:bidding_application_fyp/size_config.dart';
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


