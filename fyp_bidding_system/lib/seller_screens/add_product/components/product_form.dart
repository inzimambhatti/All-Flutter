import 'package:flutter/material.dart';
import 'package:fyp_bidding_system/components/custom_surfix_icon.dart';
import 'package:fyp_bidding_system/components/default_button.dart';
import 'package:fyp_bidding_system/components/form_error.dart';
import 'package:fyp_bidding_system/screens/otp/otp_screen.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'multi_image_picker.dart';

class ProductForm extends StatefulWidget {
  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];
  String? productTitle;
  String? productPrice;
  String? productDiscription;
  String? address;
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime currentDate = DateTime.now();
  List<Asset> images = <Asset>[];
  String _error = 'No Error Dectected';
  //methid to pck the time
  _selectTime(BuildContext context) async {

    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,

    );
    if(timeOfDay != null && timeOfDay != selectedTime)
    {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }
//method to pick the date
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }
//method to load images from gallery image picker 2
  Future<void> loadAssets() async {
    List<Asset> resultList = <Asset>[];
    String error = 'No Error Detected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 6,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: const CupertinoOptions(
          takePhotoIcon: "chat",
          doneButtonTitle: "Fatto",
        ),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
      _error = error;
    });
  }
  //widget for expanded to show grid of picked images
  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];
        return AssetThumb(
          asset: asset,
          width: 200,
          height: 200,
        );
      }),
    );
  }

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [

          buildProductTitleFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildProductPriceFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildProductDiscriptionFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(10)),
        //pickers Column
           Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //date picker
              Column(
               // mainAxisAlignment: MainAxisAlignment.start,
               // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () => _selectDate(context),
                    child: Text('End date',style: TextStyle(fontSize: 16
                        ,fontWeight: FontWeight.bold
                    ),
                    ),

                  ),
                  Text(currentDate.toString()),
                ],
              ),
              //time picker constructor
              Column(
               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      _selectTime(context);
                    },
                    child: const Text("End Time",style: TextStyle(fontSize: 16
                        ,fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  SizedBox(width:10,),
                  Text("${selectedTime.hour}:${selectedTime.minute}"),

                ],
              ),
             // ImagePicker(),
            ],
          )





        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Optional",
        hintText: "Address if changed",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
        Icon(Icons.location_city,color: kPrimaryColor,),
      ),
    );
  }



  TextFormField buildProductPriceFormField() {
    return TextFormField(
      onSaved: (newValue) => productPrice = newValue,
      decoration: InputDecoration(
        labelText: "Price",
        hintText: "Product initial price",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.money,color: kPrimaryColor,)
      ),
    );
  }
  TextFormField buildProductDiscriptionFormField() {
    return TextFormField(
      onSaved: (newValue) => productPrice = newValue,
      decoration: InputDecoration(
        labelText: "Discription",
        hintText: "Details of your Product",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.details,color: kPrimaryColor,),
      ),
    );
  }

  TextFormField buildProductTitleFormField() {
    return TextFormField(
      onSaved: (newValue) => productTitle = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Product Title",
        hintText: "Name your product",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.title,color: kPrimaryColor,),
      ),
    );
  }
}
