import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_full_tutorials/screens/controller.dart';
class InternationalizationScreen extends StatelessWidget {
   InternationalizationScreen({Key? key}) : super(key: key);
   MyController myController=Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('hello'.tr,style: TextStyle(fontSize: 25,color: Colors.purple),),
              RaisedButton(
                child: Text("Hindi"),
                onPressed: () {
                  myController.changeLanguage('hi','IN');

                },
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                child: Text("French"),
                onPressed: () {
                  myController.changeLanguage('fr','FR');

                },
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                child: Text("English"),
                onPressed: () {
                  myController.changeLanguage('en','US');

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
