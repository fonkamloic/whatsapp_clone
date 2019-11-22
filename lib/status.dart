import 'package:flutter/material.dart';
import 'package:whatsapp_clone/db.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  List<String> names = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff25d366),
        child: Center(
          child: Icon(Icons.photo_camera),
        ),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[0]),
            ),
            title: Text('My Status'),
            subtitle: Text("Tab to add status update"),
          ),
          Container(
            color: Colors.grey[300],
            width: MediaQuery.of(context).size.width,
            height: 20.0,
            child: Text(
              "Recent updates",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Expanded(
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
        ],
      ),
    );
  }
}
