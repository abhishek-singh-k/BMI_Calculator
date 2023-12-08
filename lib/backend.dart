import 'dart:io';
import 'dart:math';
import 'package:bmi_calculator/second_scrren.dart';

import 'input_page.dart';
import 'main.dart';


class calculateBrain {


  double _bmi=0.0;


  String calculation({int? height1, int? weigth1}) {
    _bmi = weigth1! / pow(height1! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }



  String? getresult(double bmi)
  {
    if(bmi>25)
      {
        return 'overweight';
      }
    else if(bmi>=18.5)
      {
        return 'Normal';
      }
    else if (bmi<18.5)
      {
        return 'Underweight';
      }
  }

  String getadvise(double bmi)
  {
    if(bmi>25)
    {
      return 'You have higher than the normal body weight. Try to more excercise';
    }
    else if(bmi>18.5)
    {
      return 'You have normal body weight. Good Job';
    }
    else
    {
      return 'You have lower than the normal body weight. Try to eat more';
    }
  }


}