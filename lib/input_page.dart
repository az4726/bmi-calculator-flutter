import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'Reuseable_Card.dart';

const Color defaultCardColor = Color(0xFF111428);
const Color selectedCardColor = Color(0xFF1D1F33);
const Color defaultTextColor = Color(0xFF8D8E98);
const Color selectedTextColor = Color(0xFFFFFFFF);
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
              child: GestureDetector(
                onTap: () {},
                child: ReuseableCard(
                    colour: defaultCardColor,
                    cardChild: IconContent(FontAwesomeIcons.male, 'MALE')),
              ),
            ),
            Expanded(
              child: ReuseableCard(
                colour: defaultCardColor,
                cardChild: IconContent(FontAwesomeIcons.female, 'FEMALE'),
              ),
            ),
          ]),
        ),
//        Expanded(
//          child: Row(children: <Widget>[
//            Expanded(
//              child: ReuseableCard(defaultCardColor),
//            ),
//          ]),
//        ),
//        Expanded(
//          child: Row(children: <Widget>[
//            Expanded(
//              child: ReuseableCard(defaultCardColor),
//            ),
//            Expanded(
//              child: ReuseableCard(defaultCardColor),
//            ),
//          ]),
//        ),
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
