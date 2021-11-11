import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../calculator_brain.dart';
import '../constants.dart';
import 'GpaFile.dart';
class SgpaClass extends StatefulWidget {
  const SgpaClass({key}) : super(key: key);

  @override
  _SgpaClassState createState() => _SgpaClassState();
}

class _SgpaClassState extends State<SgpaClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _cardList = [];
   int  sNumber=0;
  void _addCardWidget() {
    setState(() {
      sNumber++;
      _cardList.add(_card());
    });

  }
  Widget _card() {
    return

          Expanded(
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    ' Subject $sNumber',
                    style: kResultTextStyle,
                  ),
                  Text(
                    ' Choose Credits',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        theoryCredits.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'credits',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                      RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                      RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: theoryCredits.toDouble(),
                      min: 0,
                      max: 8,
                      onChanged: (double newValue) {
                        setState(() {
                          theoryCredits = newValue.round();
                        });
                      },
                    ),
                  ),

                  ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Total Marks',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          totalMarks.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    totalMarks--;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  totalMarks++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
//obtaned marks
                  ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Obtained Marks',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          obtainedMarks.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(
                                      () {
                                    obtainedMarks--;
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    obtainedMarks++;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                  BottomButton(
                    buttonTitle: 'CALCULATE',
                    onTap: () {
                      CalculatorBrain calc =
                      CalculatorBrain(totalMarks: totalMarks, obtainedMarks: obtainedMarks);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultsPage(
                            bmiResult: calc.calculateBMI(),
                            resultText: calc.getResult(),
                            interpretation: calc.getInterpretation(),
                          ),
                        ),
                      );
                    },
                  ),

                ],
              ),
            ),
          );



  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Click + to Add Subjects details"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView.builder(
            itemCount: _cardList.length,
            itemBuilder: (context,index){
              return _cardList[index];
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addCardWidget,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

