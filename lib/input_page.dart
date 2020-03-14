import 'package:flutter/material.dart';

const Color defaultCardColor = Color(0xFF111428);
const Color selectedCardColor = Color(0xFF1D1F33);
const Color accentColor = Color(0xFFFF0167);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Row(children: <Widget>[
            Expanded(
              child: ReuseableCard(defaultCardColor),
            ),
            Expanded(
              child: ReuseableCard(defaultCardColor),
            ),
          ]),
        ),
        Expanded(
          child: Row(children: <Widget>[
            Expanded(
              child: ReuseableCard(defaultCardColor),
            ),
          ]),
        ),
        Expanded(
          child: Row(children: <Widget>[
            Expanded(
              child: ReuseableCard(defaultCardColor),
            ),
            Expanded(
              child: ReuseableCard(defaultCardColor),
            ),
          ]),
        ),
        Container(
          color: accentColor,
          margin: EdgeInsets.only(top: 16.0),
          width: double.infinity,
          height: 80.0,
        )
      ]),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard(this.colour);
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: colour,
      ),
    );
  }
}
