import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//AppBar
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
        title: const Text('AppBar'),
        centerTitle: true,
        leadingWidth: 50,
        leading: Container(
          color: Colors.red,
        ),
        actions: [
          Container(
            color: Colors.amber,
            width: 50,
          ),
          Container(
            color: Colors.pink,
            width: 150,
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(300),
          child: Container(
            color: Colors.blueGrey,
            height: 220,
            width: 200,
          ),
        ),
        flexibleSpace: Container(
          width: 30,
          height: 30,
          color: Colors.green,
        ),
      )),
    );
  }
}
