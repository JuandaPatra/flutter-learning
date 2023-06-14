import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Extract widget
class MyApp extends StatelessWidget {
  var faker =  Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Extract Widget'),
          ),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) => ChatItem(subtitle: faker.lorem.sentence(),title: faker.internet.userName(),imageUrl: "https://picsum.photos/id/$index/400/300/",),
          
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? subtitle;
  const ChatItem({
    super.key,this.title,this.subtitle, this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: CircleAvatar(backgroundColor: Colors.blueAccent,backgroundImage: NetworkImage('$imageUrl'),),
      title: Text('$title'),
      subtitle: Text('$subtitle', maxLines: 1,overflow: TextOverflow.ellipsis,),
      trailing: const Text('10:00 PM'),
    );
  }
}