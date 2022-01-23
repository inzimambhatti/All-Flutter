import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fyp_bidding_system/size_config.dart';

const kPrimaryColor = Colors.blueAccent;
const kMintGreen = Color(0x3EB489);
const kPrimaryLightColor = Color(0xFFFFECDF);

const kPrimaryGradientColor = LinearGradient(


  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
final kAppbarTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kUserNameNullError = "Please Enter your username";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

const kBottomContainerHeight = 50.0;
const kActiveCardColour = Colors.white;
const kIconColor= Colors.black;
const kInactiveCardColour = Color(0xFF111328);
const kBottomContainerColour = Color(0xFFEB1555);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

const kNumberTextStyle = TextStyle(
  color: Colors.blue,
  fontSize: 14.0,
  fontWeight: FontWeight.w900,
);
const kEarningNumberTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kNormalTextStyle = TextStyle(
  fontSize: 13.0,
  fontWeight: FontWeight.w400,
  color: Colors.grey,

);
const kHeadingextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w800,
  color: Colors.black,

);
DatabaseReference dbRef =
FirebaseDatabase.instance.reference().child("FypUsers");

