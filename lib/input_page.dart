import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'Reuseable_Card.dart';

const Color inactiveCardColor = Color(0xFF111428);
const Color activeCardColor = Color(0xFF1D1F33);
const Color defaultTextColor = Color(0xFF8D8E98);
const Color selectedTextColor = Color(0xFFFFFFFF);
const Color accentColor = Color(0xFFFF0167);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateCardColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    } else if (gender == Gender.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

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
                onTap: () {
                  setState(() {
                    updateCardColor(Gender.male);
                  });
                },
                child: ReuseableCard(
                    colour: maleCardColor,
                    cardChild: IconContent(FontAwesomeIcons.male, 'MALE')),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateCardColor(Gender.female);
                  });
                },
                child: ReuseableCard(
                  colour: femaleCardColor,
                  cardChild: IconContent(FontAwesomeIcons.female, 'FEMALE'),
                ),
              ),
            ),
          ]),
        ),
//        Expanded(
//          child: Row(children: <Widget>[
//            Expanded(
//              child: ReuseableCard(activeCardColor),
//            ),
//          ]),
//        ),
//        Expanded(
//          child: Row(children: <Widget>[
//            Expanded(
//              child: ReuseableCard(activeCardColor),
//            ),
//            Expanded(
//              child: ReuseableCard(activeCardColor),
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
