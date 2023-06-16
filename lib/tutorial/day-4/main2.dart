import 'package:flutter/material.dart';
import 'dart:math';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

//Dismisible
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

class MyHomePage extends StatelessWidget {
  var faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tes'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Dismissible(
            key: Key(index.toString()),
            direction: DismissDirection.endToStart,
            confirmDismiss: (direction) => showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Confirm dismission'),
                    actions: [
                      TextButton(
                        onPressed: () => {
                          Navigator.of(context).pop(true),
                        },
                        child: Text('Yes'),
                      ),
                      TextButton(
                        onPressed: () => {Navigator.of(context).pop(false)},
                        child: Text('No'),
                      )
                    ],
                  );
                }),
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.delete,
              ),
            ),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            )),
        itemCount: 10,
      ),
    );
  }
}
