import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reuseable_Card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      this.resultLabel, this.resultSummaryLabel, this.resultDescription);

  final String resultSummaryLabel;
  final String resultLabel;
  final String resultDescription;

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
                        resultSummaryLabel.toUpperCase(),
                        style: kResultSummaryText,
                      ),
                      Text(
                        resultLabel,
                        style: kResultReadingText,
                      ),
                      Text(
                        resultDescription,
                        style: kResultDescriptionText,
                        textAlign: TextAlign.center,
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
