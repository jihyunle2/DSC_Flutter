import 'package:flutter/material.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 60.0;
const CardColour = Colors.grey;
const bottomContainerColour = Colors.yellow;

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LET THINK ONE MORE!'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: ReusableCard(
              colour: CardColour,
            ),
          ),
          Container(
            child: ReusableCard(
              colour: CardColour,
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],      
      ),
    );
  }
}



