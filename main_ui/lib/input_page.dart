import 'package:flutter/material.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
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
      body: Container(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10.0),
                margin: EdgeInsets.all(10.0),
                child: Text(
                  
                  '실수리스트',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    ),
                  textAlign: TextAlign.left,
                ),
              ),
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
                child: ReusableCard(
                  colour: CardColour,
                ),
              ),
              Container(
                child: ReusableCard(
                  colour: CardColour,
                ),
              ),
            ],      
          ),
        ),
      ),
    );
  }
}



