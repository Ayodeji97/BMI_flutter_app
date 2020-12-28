import 'package:flutter/material.dart';
import 'constants.dart';


class ReusableCardContent extends StatelessWidget {

  final IconData cardIcon;
  final String cardText;

  ReusableCardContent({this.cardIcon, this.cardText});

  @override
  Widget build(BuildContext context) {
    return Column (
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(cardText, style: kCardTextStyle
        ),
      ],
    );
  }
}
