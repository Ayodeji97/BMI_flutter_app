
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import '../components/reusable_card_content.dart';
import '../constants.dart';
import 'result_page.dart';
import '../components/reusable_bottom_container.dart';
import '../components/round_icon_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';


enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender genderSelected;
  int height = 180;
  int weight = 50;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        genderSelected = Gender.male;
                      });
                    },
                    cardChild: ReusableCardContent(
                      cardIcon: FontAwesomeIcons.mars,
                      cardText: 'MALE',
                    ),
                    varyCardColor: (genderSelected == Gender.male) ? kActiveCardColour : kInactiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        genderSelected = Gender.female;
                      });
                    },
                    cardChild: ReusableCardContent(
                      cardIcon: FontAwesomeIcons.venus,
                      cardText: 'FEMALE',
                    ),
                    varyCardColor: (genderSelected == Gender.female) ? kActiveCardColour : kInactiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              varyCardColor: kActiveCardColour,
              cardChild: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Text('HEIGHT', style: kCardTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(),
                        style: kCardInputNumberStyle
                      ),
                      Text('cm', style: kCardTextStyle,)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      overlayColor: Color(0x29EB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: kMinimumHeight,
                      max: kMaximumHeight,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                    },

                    ),
                  )
                ],
              )
            ),
          ),
          
          Expanded(
            child: Row(
              children: [
               Expanded(
                 child: ReusableCard(
                   varyCardColor: kActiveCardColour,
                   cardChild: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Text('WEIGHT', style: kCardTextStyle,),
                       Text(weight.toString(), style: kCardInputNumberStyle,),

                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[

                           RoundIconButton(
                             icon: FontAwesomeIcons.minus,
                             onPressed: () {
                               setState(() {
                                 weight--;
                               });
                             },
                           ),
                           SizedBox(width: 10.0,),

                           RoundIconButton(
                             icon: FontAwesomeIcons.plus,
                             onPressed: () {
                               setState(() {
                                 weight++;
                               });
                             },
                           ),
                         ],
                       )
                     ],
                   ),
                 ),
               ),
                Expanded(
                  child: ReusableCard(
                    varyCardColor: kActiveCardColour,
                    cardChild : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE', style: kCardTextStyle,),
                        Text(age.toString(), style: kCardInputNumberStyle,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0,),

                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ReusableBottomContainer(
            onTap: () {
              CalculatorBrain calculatedBMI = CalculatorBrain(height: height, weight: weight);


            Navigator.push(context, MaterialPageRoute(
                builder: (context) => ResultPage(interpretation: calculatedBMI.getInterpretation(), resultText: calculatedBMI.getResult(), bmiResult: calculatedBMI.calculateBMI(),)));
          },
            bottomContainerText: 'CALCULATE',
          ),
        ],
      )
    );
  }
}









