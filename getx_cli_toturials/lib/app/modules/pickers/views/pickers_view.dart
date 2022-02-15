import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

import '../controllers/pickers_controller.dart';

class PickersView extends GetView<PickersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Picker page'),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          children: [
            SizedBox(height: 20,),
            Obx(
                  () => Text(
                "${controller.selectedTime.value.hour}:${controller.selectedTime.value.minute}",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ElevatedButton(
                onPressed:(){
                  controller.chooseTime();
                }, child: Text("Time Picker")),
            SizedBox(height: 20,),
            Obx(()=>Text("Start:"+DateFormat("dd-MM-yy").format(controller.dateRange.value.start))),
            Obx(()=>Text("End:"+DateFormat("dd-MM-yy").format(controller.dateRange.value.end))),

            ElevatedButton(
                onPressed:(){
                  controller.chooseDateRangePicker();
                }, child: Text("Date Range picker")),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed:(){
                  Get.toNamed("emojipicker");
                }, child: Text("Emoji Picker"))
          ],
        )
      ),
    );
  }
}
