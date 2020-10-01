import 'package:bmi_calculator/Components/ReusableCard.dart';
import 'package:bmi_calculator/Components/bottom_bar.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult, this.bmiStatement, this.resultText});
  final String bmiResult;
  final String resultText;
  final String bmiStatement;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result!',
                style: kTitleText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultText,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    bmiStatement,
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomBar(
            label: ' RE - CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
