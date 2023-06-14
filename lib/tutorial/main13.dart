import 'package:flutter/material.dart';
import 'dart:math';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid View'),
          centerTitle: true,
        ),
        body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 4 / 3),
          children: myList,
        ),
      ),
    );
  }
}
