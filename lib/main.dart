import 'package:flutter/material.dart';
import 'dart:math';
import 'home.dart';

void main() {
  runApp(MyApp());
}

//grid view
class MyApp extends StatelessWidget {
  List<Container> myList = List.generate(
      90,
      (index) => Container(
            color: Color.fromARGB(255, Random().nextInt(256),
                Random().nextInt(256), Random().nextInt(256)),
          ));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
