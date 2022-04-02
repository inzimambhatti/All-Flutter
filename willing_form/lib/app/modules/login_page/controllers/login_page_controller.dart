import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:willing_form/firebase_services.dart';

import '../../../../constants.dart';

class LoginPageController extends GetxController {
  //TODO: Implement LoginPageController
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  var fs = firebaseServices();
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  adminLogin() {
    return Get.defaultDialog(
      title: 'Enter admin password',
      content: Form(
        key: formKey,
        child: Column(
          children: [buildEmailFormFiled(), buildPasswordFormFiled()],
        ),
      ),
      textCancel: 'Cancel',
      confirmTextColor: Colors.white,
      onConfirm: () {
        var isValid = formKey.currentState?.validate();
        if (isValid!) {
          fs.signInWithEmailAndPassword(
              emailController.text, passwordController.text);
        }
      },
      barrierDismissible: false,
    );
  }

  optionsDialog() {
    return Get.defaultDialog(
      title: 'Options',
      content: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Delete Account"),
            Text("Change Password"),
            Text("Edit Account"),
            Text("More"),
          ],
        ),
      ),
      textCancel: 'Cancel',
      confirmTextColor: Colors.white,
      onConfirm: () {
        Get.snackbar("Success", "Operation is done!",
            backgroundColor: Colors.teal);
      },
      barrierDismissible: false,
    );
  }

  buildEmailFormFiled() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return "Provide valid email";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return "Email is invalid";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  //password filed
  buildPasswordFormFiled() {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return "Enter password";
        } else if (value.length < 8) {
          return "Password is too short";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",

        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
