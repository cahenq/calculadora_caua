import 'package:flutter/material.dart';
import './calculadora.dart'; 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 26, 10, 99),
      ),
      home: Demo(),
    );
  }
}