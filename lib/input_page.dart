
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'reusable_card_content.dart';
import 'constants.dart';


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
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
            },
            child: Container(
              child: Center(child: Text('CALCULATE', style: kBottomContainerTextStyle,)),
              color: kBottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 20.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          )
        ],
      )
    );
  }
}

class RoundIconButton extends StatelessWidget {

  final IconData icon;
  final Function onPressed;


  RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 2.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
    );
  }
}






