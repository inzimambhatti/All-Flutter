import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_full_tutorials/main.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Text("This is Home Screen"),
              //next screen button
              ElevatedButton(
                  onPressed: (){
                    Get.to(
                      Get.snackbar("prssd", "I am Home screen")
                    );
                  },
                  child: Text("Next Screen"),

              ),
              //received data from main screen
              Text("${Get.arguments}"),
              //back button
              ElevatedButton(
                onPressed: (){
                Get.back();
                },
                child: Text("Back to Main"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
