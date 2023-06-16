import 'package:flutter/material.dart';
import 'package:flutter_application_1/tutorial/day-4/pages/gallery_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Homepage')),
      drawer: Drawer(
          child: Padding(
        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                leading: CircleAvatar(),
                contentPadding: EdgeInsets.all(10),
                title: Text("MY PROFILE"),
              ),
              Container(
                height: 35,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  leading: Icon(Icons.home),
                  title: Align(
                    alignment: Alignment(-1.3, 0),
                    child: Text("Home"),
                  ),
                ),
              ),
              Container(
                height: 35,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => GalleryPage()));
                  },
                  leading: Icon(Icons.person),
                  title: Align(
                    alignment: Alignment(-1.3, 0),
                    child: Text("Profile"),
                  ),
                ),
              ),
             
              
              
            ],
          ),
        ),
      )),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("HOME PAGE"),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed('/gallery'),
        child: Icon(Icons.arrow_right_sharp),
      ),
    );
  }
}
