import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/screens/DrawerFile.dart';
import 'package:bmi_calculator/screens/GpaFile.dart';
import 'package:bmi_calculator/screens/SgpaFile.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: Text("Choose Calculator"),
        ),
drawer: MyDrawer(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              BottomButton(
                buttonTitle: 'GPA',
                onTap: () {


                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InputPage(
                        //bmiResult: calc.calculateBMI(),
                        //resultText: calc.getResult(),
                        //interpretation: calc.getInterpretation(),
                      ),
                    ),
                  );
                },
              ),
              BottomButton(
                buttonTitle: 'SGPA',
                onTap: () {


                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SgpaClass(
                        //bmiResult: calc.calculateBMI(),
                        //resultText: calc.getResult(),
                        //interpretation: calc.getInterpretation(),
                      ),
                    ),
                  );
                },
              ),
              BottomButton(
                buttonTitle: 'CGPA',
                onTap: () {


                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InputPage(
                        //bmiResult: calc.calculateBMI(),
                        //resultText: calc.getResult(),
                        //interpretation: calc.getInterpretation(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      );

  }
}
