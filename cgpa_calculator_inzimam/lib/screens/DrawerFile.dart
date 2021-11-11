import 'package:bmi_calculator/screens/HomePage.dart';
import 'package:bmi_calculator/screens/GpaFile.dart';
import 'package:flutter/material.dart';

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
            decoration: BoxDecoration(
              color: Colors.blue
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
            onDetailsPressed: () {

            },
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
           // enabled: false,
            selected: true,
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
