import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
class StorageEmail extends StatelessWidget {
   StorageEmail({Key? key}) : super(key: key);
  var emailEditingController = TextEditingController();
  var storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetStorage & Email Validation")),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  controller: emailEditingController,
                )),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                child: Text("Write"),
                onPressed: () {
                  if (GetUtils.isEmail(emailEditingController.text)) {
                    storage.write("email",
                        emailEditingController.text);
                    Get.snackbar(
                        "Seccess", "Email stored successfully",
                        colorText: Colors.white,
                        backgroundColor: Colors.green,
                        snackPosition: SnackPosition.BOTTOM);

                  } else {
                    Get.snackbar(
                        "InCorrect Email", "Provide Email in valid format",
                        colorText: Colors.white,
                        backgroundColor: Colors.red,
                        snackPosition: SnackPosition.BOTTOM);
                  }
                },
              ),
            ),
            SizedBox(
              height: 3,
            ),
            ElevatedButton(
              child: Text('Read'),
              onPressed: (){
                print("The Email is ${storage.read("email")}");


              },
            ),
            Text("see your project console to see stored email"),

          ],
        ),
      ),
    );
  }
}
