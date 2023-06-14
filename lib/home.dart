import 'package:flutter/material.dart';
import 'dart:math';

class MyHomePage extends StatelessWidget {
  List<Container> myList = List.generate(
      90,
      (index) => Container(
            color: Color.fromARGB(255, Random().nextInt(256),
                Random().nextInt(256), Random().nextInt(256)),
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('CONFIRM'),
                  content: const Text("Are you sure delete this data"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Yes')),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('No'))
                  ],
                );
              });
        },
        backgroundColor: Colors.red,
        hoverColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 4 / 3),
        children: myList,
      ),
    );
  }
}
