import 'dart:math';

class CalculatorBrain {
  final int density;
  final int familyMembers;
  final int peopleOnFloor;
  final int floors;
  final int inhabitants;
  final int workHours;
  final int colleagues;
  final int interactions;
  final int jobTypeNum;
  final int age;
  final int genderNum;

  double _covidResult;

  CalculatorBrain(
      {this.density,
      this.familyMembers,
      this.peopleOnFloor,
      this.floors,
      this.inhabitants,
      this.workHours,
      this.colleagues,
      this.interactions,
      this.age,
      this.jobTypeNum,
      this.genderNum});

  String calculateBMI() {
    int genderProb;
    int densityProb;
    int jobProb;
    int floorProb = 17;
    int familyProb;

    if (genderNum == 3) {
      genderProb = 10;
    } else {
      genderProb = 5;
    }

    if (density <= 50) {
      densityProb = 5;
    } else if (density >= 50 && density <= 100) {
      densityProb = 10;
    } else if (density >= 100 && density <= 150) {
      densityProb = 15;
    } else {
      densityProb = 20;
    }

    if (jobTypeNum == 1) {
      jobProb = 5;
    } else {
      jobProb = 10;
    }

    if (familyMembers > 0) {
      familyProb = 5;
    } else {
      familyProb = 0;
    }
    _covidResult = ((age + genderProb) / 2) +
        densityProb +
        floorProb +
        jobProb +
        familyProb;
    if (_covidResult > 99) {
      _covidResult = 99;
    }
    return _covidResult.toStringAsFixed(1);
  }

  String getResult() {
    if (_covidResult >= 75) {
      return 'High Chances of Corona Positive';
    } else if (_covidResult > 50) {
      return 'Moderate Chances of Corona Positive';
    } else {
      return 'Mild Chances of Corona Positive';
    }
  }

  String interpretation() {
    if (_covidResult >= 25) {
      return 'Interpretation 1';
    } else if (_covidResult > 18.5) {
      return 'Interpretation 2';
    } else {
      return 'Interpretation 3';
    }
  }
}
