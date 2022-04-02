import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/admin_home_page_controller.dart';

class AdminHomePageView extends GetView<AdminHomePageController> {
  @override
  Widget build(BuildContext context) {
    Get.put(AdminHomePageController());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.white,
        title: Text(
          'Welcome to CU-FYP',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //upload button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(() => GlowButton(
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        controller.uploading.value
                            ? Center(
                                child: Container(
                                  width: 23,
                                  height: 23,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : Text(
                                'Upload',
                                style: GoogleFonts.aladin(
                                    textStyle: TextStyle(color: Colors.white),
                                    fontSize: 22),
                              ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          CupertinoIcons.upload_circle,
                          color: Colors.white,
                        )
                      ],
                    ),
                    onPressed: () async {
                      controller.uploadFile();
                    })),
              ),
              //download button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(() => GlowButton(
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        controller.downloading.value
                            ? Center(
                                child: Container(
                                  width: 23,
                                  height: 23,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : Text(
                                'Download',
                                style: GoogleFonts.aladin(
                                    textStyle: TextStyle(color: Colors.white),
                                    fontSize: 22),
                              ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          CupertinoIcons.download_circle,
                          color: Colors.white,
                        )
                      ],
                    ),
                    onPressed: () async {
                      controller.downloadFile();
                    })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
