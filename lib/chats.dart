import 'package:flutter/material.dart';
import 'package:whatsapp_clone/db.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff25d366),
        child: Center(
          child: Icon(Icons.message),
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(images[index]),
                  ),
                  title: Text(names[index]),
                  subtitle: Text(text[index]),
                  trailing: Text('10:00 AM'),
                ),
                Divider(),
              ],
            );
          },
          itemCount: names.length,
        ),
      ),
    );
  }
}
