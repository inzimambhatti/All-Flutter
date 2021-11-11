import 'dart:math';

import 'package:bmi_calculator/screens/GpaFile.dart';

class CalculatorBrain {
  CalculatorBrain({this.totalMarks, this.obtainedMarks});

  final int totalMarks;
  final int obtainedMarks;
  int credits=labCredits+theoryCredits;
  double gpa;

  String calculateBMI() {

    gpa = (obtainedMarks / totalMarks)*credits;
    return gpa.toStringAsFixed(1);
  }

  String getResult() {
    if (gpa >= (credits * (3 / 4))) {
      return 'You Are Amazing';
    } else if (gpa > credits / 2) {
      return 'Better';
    }
    else {
      return 'Bad';
    }
  }
  String getInterpretation() {
    if (gpa >= (credits * (3 / 4))) {
      return 'You have a good Result .We really appreciate Your efforts.Keep it up!';
    } else if (gpa >credits/2 ) {
      return 'Your are doing nice ,But still, it can be increased a lot!';
    }
    else  {
      return 'Too much disappointing you need a lot of hardwork!';
    }
  }
}
