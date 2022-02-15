import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';
import 'package:get/get.dart';

import '../controllers/elegantnumberscreen_controller.dart';

class ElegantnumberscreenView extends GetView<ElegantnumberscreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elegant number button'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(()=>ElegantNumberButton(
          initialValue: controller.defaultValue.value,
          maxValue: 10,
          minValue: 0,
          buttonSizeHeight: 40,
          buttonSizeWidth: 40,
          color: Colors.purpleAccent,
          step: .5, decimalPlaces: 1,
          onChanged: (value){
            controller.defaultValue.value=value;
          },
        )
        )
      ),
    );
  }
}
