import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget{
  ReusableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(
       
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text('20'),
          ),
          Expanded(
            flex: 4,
            child: Text('새벽 4시에 잤다.'),
          ),
          Expanded(
            flex: 1,
            child: Text('+'),
          ),
        ],
        
      ),
      margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
    );
  }
}