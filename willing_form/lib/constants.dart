import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Colors.blueAccent;
var kBoxDecoration = BoxDecoration(
  color: CupertinoColors.systemGrey,
  borderRadius: BorderRadius.circular(22),
);
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
