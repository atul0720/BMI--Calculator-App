import 'dart:math'; // importing math function
class CalculatorBrain{

  CalculatorBrain({required this.height,required this.weight});

  final int height;
  final int weight;


  late double _bmi;// Making Bmi Private for this Class
  //ToDo: Calculate BMI Function
  String calculateBMI() {
     _bmi = weight/pow(height/100, 2); //calculating bmi by Formula BMI = weight/(Height) square
    return _bmi.toStringAsFixed(1);// For converting Double to String as Taking precision Upto fixed Decimal Places
  }

  String getResult() {
    if(_bmi < 18.5){
      return 'Underweight';
    }
    else if(_bmi >= 18.5 && _bmi <= 25){
      return 'Normal';
    }
    else if(_bmi > 25 && _bmi <= 30){
      return 'Overweight';
    }
    else{
      return 'Obese';
    }
  }

  String getInterpretation() {

    if(_bmi < 18.5){
      return 'You have a lower than Normal body Weight. You can eat a bit more.';
    }
    else if(_bmi >= 18.5 && _bmi <= 25){
      return 'You have a normal body Weight. Good Job! Keep Maintaining it';
    }
    else if(_bmi > 25 && _bmi <= 30){
      return 'You have a higher than Normal body Weight. Try to exercise more.';
    }
    else{
      return 'Your weight lies in Obese Category. Consult a Doctor Immediately! ';
    }

  }

}