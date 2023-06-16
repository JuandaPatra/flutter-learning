import 'package:flutter/material.dart';
import 'dart:math';

class PhotoPage extends StatefulWidget {
  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  bool _valueSwitch = false;
  List<Container> myList = List.generate(
      90,
      (index) => Container(
            color: Color.fromARGB(255, Random().nextInt(256),
                Random().nextInt(256), Random().nextInt(256)),
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PhotoPage')),
      drawer: Drawer(child: Text("data")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Photo PAGE",
                style: TextStyle(fontSize: 30),
              )),
              Switch(value: _valueSwitch,activeColor: Colors.orange,   onChanged: (bool value){
                setState(() {
                  _valueSwitch = !_valueSwitch;
                });
              } ),
        
        ],
      )),
    );
  }
}
