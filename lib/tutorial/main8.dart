import 'dart:async';
import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//stateful widget
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Stateful Widget')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              counter.toString(),
              style:  TextStyle(
                fontSize: 20 + double.parse(counter.toString()),
                backgroundColor: Colors.amber,
                color: Colors.blue,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => {
                          setState(
                            () => counter++,
                          )
                        },
                    child: const Text('+')),
                ElevatedButton(
                    onPressed: () => {
                          if (counter != 1) {
                            setState(() => counter--,)
                            }
                        },
                    child: const Text('-'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
