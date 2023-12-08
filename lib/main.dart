import 'package:flutter/material.dart';
import 'input_page.dart';
import 'second_scrren.dart';

void main() {
  runApp(const BMICalculator());
}
class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // home: InputPage(),
      initialRoute: 'first',
      routes: {
        'first': (context) => InputPage(),
        'second':(context) => second_screen()
      },

    );
  }
}

