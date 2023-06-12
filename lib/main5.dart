import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//List tile
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> MyList = [
      ListTile(
        title: Text('Admin'),
        subtitle: Text(
          "Terimakasih telah menghubungi kami",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        leading: CircleAvatar(),
        trailing: Text('10:00 PM'),
        contentPadding: EdgeInsets.only(left: 10, right: 20),
      ),
      Divider(
        color: Colors.black,
      ),
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('List Tile')),
          ),
          body: ListView(children: MyList)),
    );
  }
}

