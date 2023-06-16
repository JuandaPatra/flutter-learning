import 'package:flutter/material.dart';
import 'package:flutter_application_1/tutorial/day-4/pages/gallery_page.dart';
import 'package:flutter_application_1/tutorial/day-4/pages/home_page.dart';
import 'package:flutter_application_1/tutorial/day-4/pages/pages1.dart';
import 'package:flutter_application_1/tutorial/day-4/pages/photo_page.dart';

void main() {
  runApp(MyApp());
}

//Navigation
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: PageSatu(),
      home: HomePage(),
      // initialRoute: '/homepage',
      routes: {
        '/homepage'   : (context)=>HomePage(),
        '/gallery'    : (context) => GalleryPage(),
        '/photo'       :(context) => PhotoPage()
      },
    );
  }
}
