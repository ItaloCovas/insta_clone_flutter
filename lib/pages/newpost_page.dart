import 'package:flutter/material.dart';
import 'dart:async';
import 'package:camera/camera.dart';

List<CameraDescription>? cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
  runApp(const NewPost());
}

class NewPost extends StatefulWidget {
  const NewPost({ Key? key }) : super(key: key);

  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  CameraController? controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras![0], ResolutionPreset.max);
    controller!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }
  
   @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller!.value.isInitialized) {
      return Container();
    }
    return MaterialApp(
      home: CameraPreview(controller!),
    );
  }
}