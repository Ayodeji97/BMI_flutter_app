import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color varyCardColor;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.varyCardColor, this.cardChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration (
          color: varyCardColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 200.0,
        width: 170.0,
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}