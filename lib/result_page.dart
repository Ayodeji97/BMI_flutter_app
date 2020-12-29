import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'reusable_bottom_container.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                child: Text('Your Result', style: kResultPageHeadingTextStyle,),
              ),
          ),

          Expanded(
            flex: 5,
            child: ReusableCard(
              varyCardColor: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'NORMAL',
                    style: kResultPageCardTextStyle,
                  ),
                  Text(
                    '21.4',
                    style: kBmiTextStyle,
                  ),
                  Text(
                    'Your BMI is roughly in good shape! Try to eat moderately to maintain it. Thumb up!',
                    textAlign: TextAlign.center,
                    style: kBmiBodyTextStyle,
                  )
                ],
              ),
            )
          ),
          ReusableBottomContainer(
            onTap: () {
            Navigator.pop(context);
          },

            bottomContainerText: 'RE-CALCULATE',

          )
        ],
      ),
    );
  }
}
