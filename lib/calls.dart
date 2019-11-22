import 'package:flutter/material.dart';

import 'db.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: Text(names[index]),
                subtitle: Row(
                  children: <Widget>[
                    //Icon(Icons.arrow_downward),
                    Text(text[index]),
                  ],
                ),
                trailing: Icon(Icons.phone),
              ),
              Divider(),
            ],
          );
        },
        itemCount: names.length,
      ),
    );
    ;
  }
}
