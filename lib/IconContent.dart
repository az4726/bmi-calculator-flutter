import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color defaultCardColor = Color(0xFF111428);
const Color selectedCardColor = Color(0xFF1D1F33);
const Color defaultTextColor = Color(0xFF8D8E98);
const Color selectedTextColor = Color(0xFFFFFFFF);
const Color accentColor = Color(0xFFFF0167);

class IconContent extends StatelessWidget {
  IconContent(this.iconName, this.gender);

  final IconData iconName;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 75.0,
          color: defaultTextColor,
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          gender,
          style: TextStyle(
            fontSize: 18.0,
            color: defaultTextColor,
          ),
        )
      ],
    );
  }
}
