import 'package:bmi_calculator/Screen/result.dart';
import 'package:flutter/material.dart';

import 'Screen/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090D23),
        scaffoldBackgroundColor: Color(0xFF090D23),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultsPage()
      },
    );
  }
}
