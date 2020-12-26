import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(varyCardColor: Color(0xFF1D1E33),),
                ),
                Expanded(
                  child: ReusableCard(varyCardColor: Color(0xFF1D1E33),),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(varyCardColor: Color(0xFF1D1E33),),
          ),
          
          Expanded(
            child: Row(
              children: [
               Expanded(
                 child: ReusableCard(varyCardColor: Color(0xFF1D1E33),),
               ),
                Expanded(
                  child: ReusableCard(varyCardColor: Color(0xFF1D1E33),),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color varyCardColor;
  final Widget cardIcon;

  ReusableCard({@required this.varyCardColor, this.cardIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardIcon,
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
