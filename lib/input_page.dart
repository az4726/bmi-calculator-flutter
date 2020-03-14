import 'package:flutter/material.dart';

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
              child: ReuseableCard(Color(0xFF111428)),
            ),
            Expanded(
              child: ReuseableCard(Color(0xFF111428)),
            ),
          ]),
        ),
        Expanded(
          child: Row(children: <Widget>[
            Expanded(
              child: ReuseableCard(Color(0xFF111428)),
            ),
          ]),
        ),
        Expanded(
          child: Row(children: <Widget>[
            Expanded(
              child: ReuseableCard(Color(0xFF111428)),
            ),
            Expanded(
              child: ReuseableCard(Color(0xFF111428)),
            ),
          ]),
        ),
        Container(
          color: Color(0xFFFF0167),
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
