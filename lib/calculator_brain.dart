
import 'dart:math';

class CalculatorBrain {

  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});


  String calculateBMI () {
    _bmi = weight / pow(height/ 100, 2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getResult () {
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi >18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation () {
    if (_bmi >= 25.0) {
      return 'Your body weight to your height is more greater than normal! Try to burn out some calories!';
    } else if (_bmi > 18.5) {
      return 'Your BMI is in good shape! Try to eat moderately to maintain it. Thumb up!';
    } else {
      return 'Your body weight to your height is lower. Eat more to add more weight!';
    }
  }

}