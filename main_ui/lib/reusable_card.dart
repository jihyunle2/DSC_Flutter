import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget{
  ReusableCard({@required this.colour});

  final Color colour;
  static const mainTextStyle = TextStyle(
    fontSize: 20.0,
  );

  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              '20',
              style: mainTextStyle,
            ),
          ),
          Expanded(
            flex: 9,
            child: Text(
              '새벽 4시에 잤다.',
              style: mainTextStyle,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              '+',
              style: mainTextStyle,
            ),
          ),
        ],
      ),
      margin: EdgeInsets.all(10.0),
      height: 50.0,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}