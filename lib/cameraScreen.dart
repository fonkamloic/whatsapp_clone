import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/main.dart';

List<CameraDescription> cameras;

class CameraScreen extends StatefulWidget {
  CameraScreen(cameras);
  @override
  _State createState() => _State();
}

class _State extends State<CameraScreen> {
  CameraController controller;

  @override
  void initState() {
    controller = CameraController(cameras[0], ResolutionPreset.high);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (controller.value.isInitialized) {
      return Container();
    }
    return Container(
      child: AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: CameraPreview(
          controller,
        ),
      ),
    );
  }
}
