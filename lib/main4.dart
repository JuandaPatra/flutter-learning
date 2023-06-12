
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//List view 2
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> myList2 = List.generate(
        100,
        (index) => Text(
              '${index + 1}',
              style: TextStyle(fontSize: 10 + double.parse('${index}')),
            ));

    final List<Widget> myList = [
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
        body: ListView.separated(
          separatorBuilder: (context, index) => const Divider(
            color: Colors.black,
          ),
          padding: const EdgeInsets.all(10),
          itemCount: myList2.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Text('${index+1}', style: TextStyle(fontSize: index.toDouble()+30, color: index % 2 == 0 ? Colors.black : Colors.blue),),
        ),
      ),
    );
  }
}
