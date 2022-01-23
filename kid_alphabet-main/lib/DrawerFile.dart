import 'package:flutter/material.dart';
import 'package:kid_alphabet/main.dart';

import 'package:kid_alphabet/playScreen.dart';
class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // DrawerHeader(child: Text('Ahmer')),
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.orange
              //gradient: LinearGradient(colors: [Colors.blue, Colors.green,Colors.purple]),
            ),
            accountName: const Text('Inzimam Bhatti'),
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
            onDetailsPressed: () {

            },
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyHomePage()));
            },
           // enabled: false,
            selected: true,
          ),

          ListTile(
            leading: Icon(Icons.contact_page),
            title: Text('Contact Us'),
            onTap: () {
             // Navigator.of(context)
                 // .push(MaterialPageRoute(builder: (context) => WebViewExample()));
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
                  Navigator.of(context).pop();
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
