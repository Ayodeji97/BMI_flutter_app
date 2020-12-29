import 'package:bmi_calculator/constants.dart';
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
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Container(
                child: Text('Your Result', style: kResultPageHeadingTextStyle,),
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              height: 300.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kActiveCardColour,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          ReusableBottomContainer(onTap: () {
            Navigator.pop(context);
          },
            bottomContainerText: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
