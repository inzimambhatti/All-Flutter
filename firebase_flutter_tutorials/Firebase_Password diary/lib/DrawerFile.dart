import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';


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
            leading: Icon(Icons.lock),
            title: Text('Add Password'),
            onTap: () {
             // Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomeScreen()));
            },
           // enabled: false,
            selected: true,
          ),
          ListTile(
            leading: Icon(Icons.upload),
            title: Text('Save to Cloud'),
            onTap: () {
              MotionToast.success(

                  title:  "Success",
                  titleStyle: TextStyle(fontWeight: FontWeight.bold),
                  description:  "Record uploaded",
                  descriptionStyle: TextStyle(fontSize:  12),
                  width:  300
              ).show(context);
            //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomeScreen()));
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
            },
           // enabled: false,
           // selected: true,
          ),

          ListTile(
            leading: Icon(Icons.contact_page),
            title: Text('Contact Us'),
            onTap: () {
             // Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebViewExample()));
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
