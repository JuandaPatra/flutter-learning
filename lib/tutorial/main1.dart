import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//title text first day learning 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.pinkAccent,
          appBar: AppBar(
              title: const Text(
            'halo semua2esdfdafaasfa2waadafaaaaaaaaaaaaaaaaaaaaaaaaaaaaadddddddddddddddddddsfasfasf',
            maxLines: 2,
          )),
          body: const Center(
              child: Text(
            'tengah',
            style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w100, fontFamily: 'Roboto-Regular', decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.solid, decorationColor: Colors.black,),
          )),
        ));
  }
}
