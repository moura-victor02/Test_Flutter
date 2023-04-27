import 'package:flutter/material.dart';
import './First_app.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      home: Firstapp(),
    );
  }
}
