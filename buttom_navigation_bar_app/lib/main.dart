import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.white,

        body: SafeArea(
          child: Center(
            child: Container(

            ),

          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor:Colors.white ,
          selectedItemColor: Colors.white,
          iconSize: 25,
          unselectedFontSize: 10,
          selectedFontSize: 15,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.orange,
          items: const [
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
                  title: Text("HOME"),

              // backgroundColor: Colors.orange,
            ),
            //navBarr item2
            BottomNavigationBarItem(
                icon:Icon(Icons.mail_outline),
                title: Text("CHAT"),
              backgroundColor: Colors.orange,
            ),
            //navBarr item3
            BottomNavigationBarItem(
                icon:Icon(Icons.search),
                title: Text("SEARCH"),
             // backgroundColor: Colors.orangeAccent,
            ),
            //navBarr item4
            BottomNavigationBarItem(
                icon:Icon(Icons.shopping_basket),
                title: Text("LOTS"),
             // backgroundColor: Colors.orangeAccent,
            ),
            //navBarr item 5
            BottomNavigationBarItem(
                icon:Icon(Icons.person_outline),
                title: Text("ACCOUNT"),
             // backgroundColor: Colors.orangeAccent,
            ),
          ],
            onTap: (index){
        setState(() {
          _currentIndex=index;
        });
},
        ),

      ),
    );
  }
}
