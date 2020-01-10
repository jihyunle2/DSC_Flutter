import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('image/pengsoo.jpg'),
                ),
              SizedBox(height: 10.0,),
              Text(
                'PENGSOO',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'GIANT PENGTV YOUTUBE CREATOR',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(
                height: 20.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.grey[600],
                  ),
                  title: Text(
                    '+82 10 1234 5678',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                     ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.grey[600],
                  ),
                  title: Text(
                    'pengsoo@ebs.go.kr',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                     ),
                  ),
                ),
              ),
                
            ]
          ),
        ),
      ),
    );
  }

}