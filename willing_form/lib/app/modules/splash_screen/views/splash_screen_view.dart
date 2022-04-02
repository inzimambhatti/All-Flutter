import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:willing_form/app/modules/wrapper/views/wrapper_view.dart';

import '../../../../constants.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                // ColorizeAnimatedText(
                //   'Bidding App',
                //   textStyle: controller.colorizeTextStyle,
                //   colors: controller.colorizeColors,
                // ),
                WavyAnimatedText(
                  "CU-FYP's",
                  textStyle: controller.colorizeTextStyle,
                  speed: Duration(milliseconds: 180),

                  // colors: controller.colorizeColors,
                ),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
            CachedNetworkImage(
              width: 180,
              height: 180,
              fit: BoxFit.cover,
              imageUrl:
                  "https://seeklogo.com/images/C/comsats-university-islamabad-logo-B7C2E461B5-seeklogo.com.png",
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(
                      value: downloadProgress.progress,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            AnimatedTextKit(
              animatedTexts: [
                // ColorizeAnimatedText(
                //   'Bidding App',
                //   textStyle: controller.colorizeTextStyle,
                //   colors: controller.colorizeColors,
                // ),
                WavyAnimatedText(
                  "...",
                  textStyle: controller.colorizeTextStyle,
                  speed: Duration(milliseconds: 90),

                  // colors: controller.colorizeColors,
                ),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                Get.to(WrapperView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
