import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_full_tutorials/screens/controller.dart';
import 'package:getx_full_tutorials/student.dart';
class StatemanagementScreen extends StatelessWidget {
   StatemanagementScreen({Key? key}) : super(key: key);
   MyController mycontroller=Get.put(MyController());

          Student student=Student();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(

            children: [
              Obx(
                  ()=>Text("Incremented vale is :${mycontroller.count} "),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                      mycontroller.increment();
                  },
                  child: Text("Increment")),
              SizedBox(height: 10,),
              Obx(
                    ()=>Text("My name is :${mycontroller.student.name} "),
              ),
              ElevatedButton(
                  onPressed: (){
mycontroller.uppercase();
                  },
                  child: Text("Uppercase"))
            ],
          ),
        ),
      ),
    );
  }
}
