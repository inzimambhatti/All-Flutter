import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX and Cli project'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed:(){
                Get.toNamed("elegantnumberscreen");
                }, child: Text("Elegant Number Button")),
            ElevatedButton(
                onPressed:(){
                  Get.toNamed("pickers");
                }, child: Text("Pickers"))
          ],
        )
      ),
    );
  }
}
