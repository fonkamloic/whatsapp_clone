import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<CameraScreen> {
  File imageFile;

  _openGallery(BuildContext context) async {
    dynamic picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    dynamic picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RaisedButton(
            color: Colors.blue,
            onPressed: () => _openCamera(context),
            child: Text("Open Camera"),
          ),
          RaisedButton(
            color: Colors.blue[200],
            onPressed: () => _openGallery(context),
            child: Text("Open Gallery"),
          ),
        ],
      ),
    );
  }
}
