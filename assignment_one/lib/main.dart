import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.pink,
        body: SafeArea(

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                CircleAvatar(
                  backgroundImage:AssetImage("images/flag.png"),
                  //child: Image(image: AssetImage('images/user.png')),
                  radius: 90.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'ISMA TAHIR',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoSlab',
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  ' Mobile app developer',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 250,
                  height: 30.0,
                  child: Divider(
                    color: Colors.white,
                    thickness: 1.0,
                  ),
                ),
                Card(
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 25.0,
                    ),
                    title: Text(
                      '+90887898989',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Card(
                  margin:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 25.0,
                    ),
                    title: Text(
                      'ismach@gmail.com',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}



