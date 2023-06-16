import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gallerypage')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Padding(
              padding: EdgeInsets.all(10),
              child:  Text(
                "GALLERY PAGE",
                style: TextStyle(fontSize: 30),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: ()=>Navigator.of(context).popAndPushNamed('/homepage'),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    child: const Text(
                      "<< HOMEPAGE",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              TextButton(
                   onPressed: ()=>Navigator.of(context).pushNamed('/photo'),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                    child: const Text(
                      "PHOTO PAGE >>",
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          )
        ],
      )),
    );
  }
}
