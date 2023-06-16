import 'package:flutter/material.dart';
import 'package:flutter_application_1/tutorial/day-4/pages/pages2.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Pages 1')),
        body: Center(child: Text("Ini Page 1")),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        floatingActionButton:Padding(padding: EdgeInsets.only(top: 100),child: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () =>
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return PageDua();
          })),
          child: Icon(Icons.arrow_right),
        ) // ,)
         ),
        );
  }
}
