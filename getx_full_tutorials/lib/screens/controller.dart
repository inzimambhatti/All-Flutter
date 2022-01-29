import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../student.dart';
class MyController extends GetxController{
  var student=Student();
  var count=0.obs;
  void increment(){
    count++;
  }
  void uppercase(){
    student.name.value=student.name.value.toUpperCase();
    update();
  }

  void changeLanguage(var param1,var param2)
  {
    var locale = Locale(param1, param2);
    Get.updateLocale(locale);
  }
}