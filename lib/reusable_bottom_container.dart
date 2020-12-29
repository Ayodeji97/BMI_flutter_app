import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bmi_calculator/result_page.dart';

class ReusableBottomContainer extends StatelessWidget {

  final Function onTap;
  final String bottomContainerText;

  ReusableBottomContainer({@required this.onTap, @required this.bottomContainerText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(bottomContainerText, style: kBottomContainerTextStyle,)),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}