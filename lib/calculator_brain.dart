import 'dart:math';

class CalculatorBMI {

  CalculatorBMI({this.height, this.weight});

  final height;
  final weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation(){
    if (_bmi >= 25){
      return "You have a higher than Normal body weight";
    } else if (_bmi > 18){
      return "You have a normal weight, that is good";
    } else{
      return "You have a lower than normal body weight, You can eat a bit more";
    }
  }

}


