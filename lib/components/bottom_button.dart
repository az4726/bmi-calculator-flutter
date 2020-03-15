import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton(this.buttonTitle, this.onTap);

  final String buttonTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(buttonTitle, style: kLargeButtonTextStyle)),
        color: kAccentColor,
        margin: EdgeInsets.only(top: 16.0),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}
