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
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
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
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: bottomContainerColour,
                    margin: EdgeInsets.only(top: 10.0),
                    width: double.infinity,
                    height: bottomContainerHeight,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Text('1'),
                        ),
                        Expanded(
                          child: Text('2'),
                        ),
                        Expanded(
                          child: Text('3'),
                        ),
                      ],
                    )
                 ),
                ),
              ),
            ],      
          ),
        ),
      ),
    );
  }
}



