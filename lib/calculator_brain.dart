import 'dart:math';

class CalBrain {
  CalBrain({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;

  String CalculateBmi()
  {
    _bmi= weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String Bmiresult()
  {
    if(_bmi>=25)
      return 'overweight';
    else if(_bmi>=18.5)
      return 'normal';
    else
      return 'underweight';
  }
  String Bmiinterpretation() {
    if(_bmi>=25)
      return 'Eat less your can be fit!';
    else if(_bmi>=18.5)
      return 'Keep it up,you have a perfect Score!';
    else
      return 'Eat more to get a healthy diet';
  }

}