import 'package:flutter/material.dart';
import 'package:udemy_1/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [Colors.blue, Colors.green, Colors.yellow, Colors.red],
        ),
      ),
    ),
  );
}
