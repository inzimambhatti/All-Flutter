import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee Game App by Inzimam'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftUp_image=1,
      rightUp_image=1,
      leftDown_image=1,
      rightDown_image=1,
      scorePlayer1=0,
      scorePlayer2=0,
      scorePlayer3=0,
      scorePlayer4=0,
      index1=0,
      index2=0,
      index3=0,
      index4=0 ,
      flag=1,
      total1=0;
  String playerIndex="1st Players`s turn";
  String textWined="Meet Winner";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(

        child: Column(
          children: [
            SizedBox(height: 20,),
            Text(
              playerIndex,
              style: const TextStyle(
                color: Colors.yellow,
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                //exp1

                Expanded(

                  child: GestureDetector(
                    child: Column(
                      children: [
                        Image.asset('images/dice$leftUp_image.png'),
                        Text(
                          ' Total : $scorePlayer1',
                          style: const TextStyle(
                            color: Colors.white,
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Score : $leftUp_image',
                          style: const TextStyle(
                              color: Colors.yellow,
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    onTap: () {
                      if (flag == 1) {
                        setState(
                              () {
                            if (index1 <= 10) {
                              leftUp_image = Random().nextInt(6) + 1;
                              scorePlayer1 = leftUp_image + scorePlayer1;
                              print(index1);
                              print(leftUp_image);
                              print(scorePlayer1);
                              if (leftUp_image == 6) {
                                flag = 1;
                                playerIndex = 'Again 1st Player`s Turn';
                              } else {
                                flag = 2;
                                playerIndex = '2nd Player`s Turn';
                                index1 = 1 + index1;
                              }
                            }
                          },
                        );
                      }
                    },
                  ),

                ),

                SizedBox(width: 10,),

                //exp2
                Expanded(

                  child: GestureDetector(
                    child: Column(
                      children: [
                        Image.asset('images/dice$rightUp_image.png'),
                        Text(
                          ' Total : $scorePlayer2',
                          style: const TextStyle(
                            color: Colors.white,
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Score : $rightUp_image',
                          style: const TextStyle(
                              color: Colors.yellow,
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    onTap: () {
                      if (flag == 2) {
                        setState(
                              () {
                            if (index2 <= 10) {
                              rightUp_image = Random().nextInt(6) + 1;
                              scorePlayer2 = rightUp_image + scorePlayer2;
                              print(index2);
                              print(rightUp_image);
                              print(scorePlayer2);
                              if (rightUp_image == 6) {
                                flag = 2;
                                playerIndex = 'Again 2nd Player`s Turn';
                              } else {
                                flag = 3;
                                playerIndex = '3rd Player`s Turn';
                                index2 = 1 + index2;
                              }
                            }
                          },
                        );
                      }
                    },
                  ),

                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
//exp 3
                Expanded(

                  child: GestureDetector(
                    child: Column(
                      children: [
                        Image.asset('images/dice$leftDown_image.png'),
                        Text(
                          ' Total : $scorePlayer3',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Score : $leftDown_image',
                          style: const TextStyle(
                              color: Colors.yellow,
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    onTap: () {
                      if (flag == 3) {
                        setState(
                              () {
                            if (index3<= 10) {
                              leftDown_image = Random().nextInt(6) + 1;
                              scorePlayer3 = leftUp_image + scorePlayer3;
                              print(index3);
                              print(leftDown_image);
                              print(scorePlayer3);
                              if (leftDown_image == 6) {
                                flag = 3;
                                playerIndex = 'Again 3rd Player`s Turn';
                              } else {
                                flag = 4;
                                playerIndex = '4th Player`s Turn';
                                index3 = 1 + index3;
                              }
                            }
                          },
                        );
                      }
                    },
                  ),

                ),
                SizedBox(width: 10,),

                //exp4
                Expanded(

                  child: GestureDetector(
                    child: Column(
                      children: [
                        Image.asset('images/dice$rightDown_image.png'),
                        Text(
                          ' Total : $scorePlayer4',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Score : $rightDown_image',
                          style: const TextStyle(
                              color: Colors.yellow,
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    onTap: () {
                      if (flag == 4) {
                        setState(
                              () {
                            if (index4 <= 10) {
                              rightDown_image = Random().nextInt(6) + 1;
                              scorePlayer4 = rightDown_image + scorePlayer4;
                              print(index4);
                              print(rightDown_image);
                              print(scorePlayer4);
                              if (rightDown_image == 6) {
                                flag = 4;
                                playerIndex = 'Again 4th Player`s Turn';
                              } else {
                                flag = 1;
                                playerIndex = '1st Player`s Turn';
                                index4 = 1 + index4;
                              }
                              if (index4 == 11) {
                                playerIndex = 'Finished';
                              }
                            }
                          },
                        );
                      }
                    },



                  ),

                ),
              ],
            ),
            SizedBox(height: 0,),

            Row(
                children: [
                  SizedBox(width: 10,),

            MaterialButton(
                child: Text(textWined,style: TextStyle(fontSize: 26,color: Colors.green),),
                onPressed: (){
              if (index1 == 11 &&
                  index2 == 11 &&
                  index3 == 11 &&
                  index4 == 11) {
                if (scorePlayer1 > scorePlayer2 && scorePlayer1 > scorePlayer3 && scorePlayer1 > scorePlayer4) {
                  textWined="Congrats! 1st Won";
                }
                if (scorePlayer2 > scorePlayer1 && scorePlayer2 > scorePlayer3 && scorePlayer2 > scorePlayer4) {
                  textWined="Congrats! 2nd Won";
                }
                if (scorePlayer3 > scorePlayer2 && scorePlayer3 > scorePlayer1 && scorePlayer3 > scorePlayer4) {
                  textWined="Congrats! 3drd Won";
                }
                if (scorePlayer4 > scorePlayer2 && scorePlayer4 > scorePlayer3 && scorePlayer4 > scorePlayer1) {
                  textWined="Congrats! 4th Won";
                }
              } else {
                showDialog(
                    context: context,
                    builder: (_) => const AlertDialog(
                      backgroundColor: Colors.white,
                      title: Text(
                        'Sorry!',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      content: Text(
                        'All players must Complete their turns',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ));
              }

            }),
             // Text(textWined,style: TextStyle(color: Colors.lightGreenAccent,fontSize: 26),
               // ),
                  SizedBox(width: 10,),
                  FloatingActionButton(

                      backgroundColor: Colors.orange,
                      child: Icon(Icons.refresh),
                      elevation: 0.5,
                      onPressed: () {
    if (index1 == 11 &&
    index2 == 11 &&
    index3 == 11 &&
    index4 == 11) {
      leftUp_image = 1;
      rightUp_image = 1;
      leftDown_image = 1;
      rightDown_image = 1;
      scorePlayer1 = 0;
      scorePlayer2 = 0;
      scorePlayer3 = 0;
      scorePlayer4 = 0;
      index1 = 0;
      index2 = 0;
      index3 = 0;
      index4 = 0;
      flag = 1;
      total1 = 0;
      playerIndex = "1st Players`s turn";
      textWined = "Meet Winner";
    }
    else{
      playerIndex="Only refresh when Game is Complted";
    }
                      },
                      ),
                ],
            ),

          ],
        ),

      ),
    );
  }
}
