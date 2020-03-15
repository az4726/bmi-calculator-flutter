import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reuseable_Card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String resultSummaryLabel = 'NORMAL';
  final String resultLabel = '22.5';
  final String resultDescription = 'You have a normal body weight. Good job!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Your Result',
                textAlign: TextAlign.justify,
                style: kLargeText,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Container(
                child: ReuseableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultSummaryLabel,
                        style: kResultSummaryText,
                      ),
                      Text(
                        resultLabel,
                        style: kResultReadingText,
                      ),
                      Text(
                        resultDescription,
                        style: kResultDescriptionText,
                      ),
                    ],
                  ),
                ),
              )),
          BottomButton('RE-CALCULATE YOUR BMI', () {
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
