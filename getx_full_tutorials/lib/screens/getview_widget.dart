import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_full_tutorials/screens/controller.dart';

//GetView
// ==========
// If we have single controller as a  dependency then we can use GetView
//instead of Statelesswidget and avoid writing Get.find

//GetWidget
// ==========
//It is similar to GetView with one difference it gives the same instance of
//Get.find everytime. It becomes very useful when used in combination with
//Get.create

class GetViewVsWidget extends GetView<MyController> {

  @override
  Widget build(BuildContext context) {
    Get.put(MyController());
    //Get.create(() => CountController());


      return Scaffold(
        appBar: AppBar(
          title: Text('GetView and GetWidget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                    () => Text(
                  'The value is ${controller.count}',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                child: Text('Increment'),
                onPressed: () {
                  print(controller.hashCode);
                  controller.increment();
                },
              ),
            ],
          ),
        ),
      );

  }
}