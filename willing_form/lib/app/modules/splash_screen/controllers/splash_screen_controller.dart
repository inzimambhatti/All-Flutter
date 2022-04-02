import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:willing_form/app/modules/wrapper/views/wrapper_view.dart';

class SplashScreenController extends GetxController {
  //TODO: Implement SplashscreenController

  final count = 0.obs;
  final colorizeColors = [
    Colors.white,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];
  final colorizeTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 35.0,
      fontFamily: 'roboto',
      fontWeight: FontWeight.bold);
  @override
  void onInit() {
    super.onInit();
    print('launched');
    Timer(Duration(seconds: 2), () {
      Get.to(() => WrapperView());
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
