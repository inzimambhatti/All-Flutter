import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:willing_form/app/modules/contactus/views/contactus_view.dart';
import 'package:willing_form/app/modules/home/views/home_view.dart';
import 'package:willing_form/app/modules/settings/views/settings_view.dart';
import 'package:willing_form/firebase_services.dart';

import '../controllers/drawer_file_controller.dart';

class DrawerFileView extends GetView<DrawerFileController> {
  @override
  Widget build(BuildContext context) {
    var fs = firebaseServices();
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue
                //gradient: LinearGradient(colors: [Colors.blue, Colors.green,Colors.purple]),
                ),
            accountName: Text('Inzimam Bhatti'),
            accountEmail: Text('inzimamb5@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: Text('I'),
              backgroundColor: Colors.white,
            ),
            otherAccountsPictures: [
              CircleAvatar(
                child: Text('B'),
                backgroundColor: Colors.white,
              )
            ],
            onDetailsPressed: () {},
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text('Home'),
            onTap: () {
              Get.to(HomeView());
            },
            // enabled: false,
            selected: true,
          ),
          Divider(thickness: 1.0),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () {
              print('Pressed');
              Get.off(SettingsView());
            },
            // enabled: false,
            // selected: true,
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: Text('Contact Us'),
            onTap: () {
              Get.to(ContactusView());
            },
            // enabled: false,
            // selected: true,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log out'),
            onTap: () {
              fs.signOut();
            },
            // enabled: false,
            // selected: true,
          ),
          Divider(thickness: 1.0),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: ListTile(
                leading: Icon(Icons.close),
                title: Text('Close'),
                onTap: () {
                  Get.back();
                  print('Pressed');
                },
                //enabled: false,
                //selected: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
