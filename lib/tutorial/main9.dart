import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Mapping List
class MyApp extends StatelessWidget {
  List<Map<String, dynamic>> myList = [
    {
      "name": "Rahmad",
      "age": 25,
      "favColor": [
        "red",
        "blue",
        "yellow",
        "green",
        "pink",
        "grey",
        "black",
        "white"
      ]
    },
    {
      "name": "Juanda",
      "age": 25,
      "favColor": ["red", "blue", "yellow"]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Mapping List')),
        ),
        body: ListView(
            children: myList.map((data) {
          List favColor = data['favColor'];
          return Card(
              child: Container(
            color: Colors.amberAccent,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nama:  ${data['name']} "),
                        Text(
                          "Usia:      ${data['age']}",
                        ),
                      ],
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: favColor.map((color) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        color,
                      ),
                    );
                  }).toList()),
                ),
              ],
            ),
          ));
        }).toList()),
      ),
    );
  }
}
