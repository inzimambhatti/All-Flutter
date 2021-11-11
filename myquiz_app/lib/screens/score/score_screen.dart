import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myquiz_app/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myquiz_app/screens/quiz/quiz_screen.dart';
import 'package:myquiz_app/screens/welcome/welcome_screen.dart';

import '../../constants.dart';

class ScoreScreen extends StatelessWidget {
  String pic='';

  @override
  Widget build(BuildContext context) {

    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
           // SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
            SizedBox(height: 40,),


            Column(

              children: [
                SizedBox(height: 100,),
                if(_qnController.numOfCorrectAns>=3)...{
                  Container(
                    width: 220,
                    height: 220,
                    child:SvgPicture.asset("assets/icons/trophy.svg",) ,
                  ),

                  SizedBox(height: 10,),
                  Text(
                    "${_qnController.numOfCorrectAns}/${_qnController.questions.length }",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: Colors.orange),
                  ),

                  Text(
                    "Congratulations!",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: Colors.orange),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: () => Get.to(exit(0)),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Close App",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                }else...{
                  SvgPicture.asset("assets/icons/failed.svg",),
                  SizedBox(height: 10,),
                  Text(
                    "${_qnController.numOfCorrectAns }/${_qnController.questions.length }",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: Colors.red),
                  ),
                  Text(
                    "hmmm!Better Luck Next Time",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.redAccent),
                  ),
SizedBox(height: 10,),
                  InkWell(
                    onTap: () => Get.to(WelcomeScreen(),

                    ),

                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Try Again",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                },



               // Spacer(flex: 3),
              ],
            )
          ],
        ),
      ),
    );
  }
}
