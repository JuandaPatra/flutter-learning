import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


//column and row
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: const Text('Row and Column'),
      ),body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 50,
            color: Colors.amber,
          ),
          Container(
            width: 100,
            height: 400,
            color: Colors.blue,
          )
        ],
      )),
    );
  }
}
