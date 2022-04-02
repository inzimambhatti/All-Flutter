import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants.dart';
import '../controllers/contactus_controller.dart';

class ContactusView extends GetView<ContactusController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.white,
        title: Text(
          'Help Center',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        toolbarHeight: 40,
      ),
      backgroundColor: Colors.white,
      body: ContactUs(
        textColor: Colors.white,
        companyColor: kPrimaryColor,
        cardColor: kPrimaryColor,
        logo: AssetImage('assets/images/logo.png'),
        email: 'inzimamb5@gmail.com',
        companyName: 'COMSATS Vehari',
        phoneNumber: '+92 306 9797441',
        website: 'inximamb5.wixsite.com/inzimambhatti',
        githubUserName: 'inzimambhatti',
        linkedinURL: 'https://www.linkedin.com/inzimambhatti',
        tagLine: 'NO#1 IT university',
        twitterHandle: 'iamInzimam',
        taglineColor: Colors.black,
        instagram: 'iam.inzimam',
        facebookHandle: 'iaminzimam',
      ),
    );
  }
}
