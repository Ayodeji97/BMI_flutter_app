import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_bottom_container.dart';

class ResultPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

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
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kResultPageHeadingTextStyle,
                ),
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
                    bmiResult.toUpperCase(),
                    style: kResultPageCardTextStyle,
                  ),
                  Text(
                    resultText,
                    style: kBmiTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBmiBodyTextStyle,
                    ),
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
