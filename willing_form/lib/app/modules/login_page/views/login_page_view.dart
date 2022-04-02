import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:willing_form/constants.dart';
import 'package:willing_form/firebase_services.dart';

import '../../../../firebase_services.dart';
import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  @override
  Widget build(BuildContext context) {
    firebaseServices firebaseService = firebaseServices();
    Get.put(LoginPageController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 40,
        title: Text(
          'Login to CU_FYP',
          style: GoogleFonts.aladin(textStyle: TextStyle(color: kPrimaryColor)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: Get.width,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://media3.giphy.com/media/pzrC181f1kPXeaHV1W/giphy.gif",
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  Positioned(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Supervisor:',
                      style: GoogleFonts.aladin(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ))
                ],
              ),
              SignInButton(
                Buttons.Google,
                text: "Signin with Google",
                elevation: 5,
                onPressed: () async {
                  User? user =
                      await firebaseService.signInWithGoogle(context: context);
                  if (user != null) {
                    //firebaseService.addUserDataToFirestore(context, user.uid);
                  }
                },
              ),
              Divider(
                height: 20,
                color: kPrimaryColor,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Admin:',
                      style: GoogleFonts.aladin(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              CachedNetworkImage(
                width: 250,
                height: 250,
                imageUrl:
                    "https://seeklogo.com/images/C/comsats-university-islamabad-logo-B7C2E461B5-seeklogo.com.png",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              SizedBox(
                height: 10,
              ),
              GlowButton(
                  width: 225,
                  color: kPrimaryColor,
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {
                    controller.adminLogin();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
