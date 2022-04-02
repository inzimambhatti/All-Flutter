import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:willing_form/app/modules/drawerFile/views/drawer_file_view.dart';
import 'package:willing_form/app/modules/home/views/components/willingnessForm.dart';

import '../../../../constants.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerFileView(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        toolbarHeight: 40,
        title: Text(
          'Welcome to CU_FYP',
          style: GoogleFonts.aladin(textStyle: TextStyle(color: kPrimaryColor)),
        ),
        centerTitle: true,
      ),
      body: WillingnessForm(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GlowButton(
          height: 50,
          child: CachedNetworkImage(
            height: 50,
            color: Colors.white,
            imageUrl:
                "https://media1.giphy.com/media/UQ80FKLkT1MuN6jg4k/200.gif",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          onPressed: () {
            controller.submitRecord();
          },
        ),
      ),
    );
  }
}
