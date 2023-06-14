import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//tab appBar
class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: 'Add',
      icon: Icon(Icons.add_a_photo),
    ),
    Tab(
      text: 'Edit',
      icon: Icon(Icons.edit),
    ),
    Tab(
      text: 'Delete',
      icon: Icon(Icons.delete),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('tes'),
            bottom: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.deepOrangeAccent,
                indicatorWeight: 5,
                indicatorPadding: EdgeInsets.all(-5),
                tabs: myTab),
          ),
          body: TabBarView(children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(
                  child: Text(
                'Tab1',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple,
              child: Center(
                  child: Text('Tab2',
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.pink,
              child: Center(
                  child: Text('Tab3',
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ]),
        ),
      ),
    );
  }
}
