import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//List view 1
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      Container(
        height: 300,
        width: 100,
        color: Colors.amber,
      ),
      Container(
        height: 300,
        width: 100,
        color: Colors.blueGrey,
      ),
      Container(
        height: 300,
        width: 100,
        color: Colors.cyan,
      ),
      Container(
        height: 300,
        width: 100,
        color: Colors.green,
      ),
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text('List View'),
        )),
        body: ListView(scrollDirection: Axis.vertical, children:myList),
      ),
    );
  }
}
