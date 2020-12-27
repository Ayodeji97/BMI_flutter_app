import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color varyCardColor;
  final Widget cardChild;

  ReusableCard({@required this.varyCardColor, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration (
        color: varyCardColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      height: 200.0,
      width: 170.0,
      margin: EdgeInsets.all(15.0),
    );
  }
}