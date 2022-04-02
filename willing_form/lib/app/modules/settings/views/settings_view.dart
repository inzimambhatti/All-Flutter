import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:willing_form/firebase_services.dart';

import '../../../../constants.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    var fs = firebaseServices();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
          toolbarHeight: 40,
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            Container(
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: kPrimaryColor,
                ),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.wb_sunny_outlined,
                              color: kPrimaryColor,
                            ),
                            title: Text(
                              "Light",
                              style: TextStyle(color: kPrimaryColor),
                            ),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.wb_sunny,
                              color: kPrimaryColor,
                            ),
                            title: Text(
                              "Dark",
                              style: TextStyle(color: kPrimaryColor),
                            ),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          )
                        ],
                      ),
                    ),
                    backgroundColor: Colors.white,
                  );
                },
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.notifications_active_outlined,
                  color: kPrimaryColor,
                ),
                onTap: () {
                  Get.snackbar('Ops', 'Soory this feature not available yet');
                },
              ),
            ),
          ]),
        ));
  }
}
