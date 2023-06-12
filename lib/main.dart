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
            body: Container(
                width: 400,
                height: 450,
                // color: Colors.green,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('juanda_p106'),
                      leading: CircleAvatar(),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.grey,
                          weight: 30,
                        ),
                        onPressed: () => null,
                      ),
                      contentPadding: EdgeInsets.only(left: 10, right: 20),
                    ),
                    Container(
                      child: Image.network("https://picsum.photos/400/300/"),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 50,
                            color: Colors.amber,
                          ),
                          
                        ],
                      ),
                    )
                  ], 
                ))));
  }
}
