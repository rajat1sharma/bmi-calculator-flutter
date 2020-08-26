import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calcumateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi >= 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterpretations() {
    if (_bmi >= 25)
      return 'You have higher than normal body weight please exercise more';
    else if (_bmi >= 18.5)
      return 'Your body mass index is perfect. Good job ;)';
    else
      return 'You have a lower than normal body mass index please eat more fruits and vegetables';
  }
}
