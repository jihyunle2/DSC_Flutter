import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('peng$soundNumber.mp3');
  }
  Expanded buildKey({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color, 
        onPressed:(){
          playSound(soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              //토이스토리
              buildKey(color: Colors.orange, soundNumber: 2),
              //요들송
              buildKey(color: Colors.yellow, soundNumber: 3),
              //잔소리
              buildKey(color: Colors.green, soundNumber: 4),
              //찹쌀떡
              buildKey(color: Colors.blue, soundNumber: 5),
              //눈이와
              buildKey(color: Colors.blue[900], soundNumber: 6),
              //산타텔미
              buildKey(color: Colors.purple, soundNumber: 7),
              //배드보이
            ],
          ),
        ),
      ),
    );
  }
}
