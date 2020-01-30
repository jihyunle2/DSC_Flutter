import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: Color(0xFF4C4F5E),
            child: Icon(
              Icons.add,
              color: Colors.white
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

class RoundIconButton extends StatelessWidget{
  
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context){
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

RoundIconButton(
  icon: FontAwesomeIcons.plus,
  onPressed:(){
    setState(() {
      weight--;
    });
  }
),