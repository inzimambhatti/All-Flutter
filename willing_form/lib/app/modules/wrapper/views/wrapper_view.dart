import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:willing_form/app/modules/login_page/views/login_page_view.dart';
import 'package:willing_form/firebase_services.dart';

import '../../../../firebase_services.dart';
import '../../../../model.dart';
import '../../home/views/home_view.dart';
import '../controllers/wrapper_controller.dart';

class WrapperView extends GetView<WrapperController> {
  @override
  Widget build(BuildContext context) {
    final firebaseService = Provider.of<firebaseServices>(context);
    return StreamBuilder<Users?>(
        stream: firebaseService.user,
        builder: (_, AsyncSnapshot<Users?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final Users? user = snapshot.data;
            return user == null ? LoginPageView() : HomeView();
          } else {
            return Scaffold(
              body: Container(
                width: 200,
                height: 200,
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
