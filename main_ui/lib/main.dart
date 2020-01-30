import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor:  Colors.grey[100],
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: InputPage(),
    );
  }
}


