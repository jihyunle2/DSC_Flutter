import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('PENGSOO'),
        backgroundColor: Colors.grey[700],
      ),
      body: PengPage(),
    ),
  ),
);


class PengPage extends StatefulWidget{
  @override
  _PengPageState createState() => _PengPageState();
}

class _PengPageState extends State<PengPage>{
  int pengsooNumber1 = 1;
  int pengsooNumber2 = 2;
  int pengsooNumber3 = 3;
  int pengsooNumber4 = 4;
  int pengsooNumber5 = 5;
  int pengsooNumber6 = 6;

  void changePengsoo(){
    setState((){
      pengsooNumber1 = Random().nextInt(3)+1;
      pengsooNumber2 = Random().nextInt(3)+1;
      pengsooNumber3 = Random().nextInt(6)+1;
      pengsooNumber4 = Random().nextInt(6)+1;
      pengsooNumber5 = Random().nextInt(6)+1;
      pengsooNumber6 = Random().nextInt(6)+1;
    });
  }
  
  @override
  Widget build(BuildContext context){
    return Center(
      child: 
      Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    changePengsoo();
                  },
                  child: Image.asset('images/pengsoo$pengsooNumber1.jpg', width: 200, height: 200,),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    changePengsoo();
                  },
                  child: Image.asset('images/pengsoo$pengsooNumber2.jpg', width: 200, height: 200),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    changePengsoo();
                  },
                  child: Image.asset('images/pengsoo$pengsooNumber3.jpg', width: 200, height: 200),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    changePengsoo();
                  },
                  child: Image.asset('images/pengsoo$pengsooNumber4.jpg', width: 200, height: 200),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    changePengsoo();
                  },
                  child: Image.asset('images/pengsoo$pengsooNumber5.jpg', width: 200, height: 200),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    changePengsoo();
                  },
                  child: Image.asset('images/pengsoo$pengsooNumber6.jpg', width: 200, height: 200),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}