import 'dart:math';

class CalculatorBrain {
  final int density;
  final int familyMembers;

  double _covidResult;

  CalculatorBrain({this.density, this.familyMembers});

  String calculateBMI() {
    _covidResult = familyMembers / pow(density / 100, 2);
    return _covidResult.toStringAsFixed(1);
  }

  String getResult() {
    if (_covidResult >= 25) {
      return 'Corona Positive';
    } else if (_covidResult > 18.5) {
      return 'Possibly Corona Positive';
    } else {
      return 'Corona Negative';
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
