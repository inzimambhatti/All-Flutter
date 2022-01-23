import 'package:flutter/material.dart';
import 'package:kid_alphabet/DrawerFile.dart';
import 'package:kid_alphabet/playScreen.dart';
import 'package:kid_alphabet/splash.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inzimam',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: splashscreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

bool alphaCase = true;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text('kids app'),
        backgroundColor: Colors.orange,
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  alphaCase = true;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ps()),
                  );
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white70,
                    ),
                    height: 75,
                    width: 250,
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Capital A-Z',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: () {
                  alphaCase = false;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ps()),
                  );
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white70,
                    ),
                    height: 75,
                    width: 250,
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Small a-z',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                        textAlign: TextAlign.center,
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}