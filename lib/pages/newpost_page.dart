
import 'package:flutter/material.dart';

class NewPost extends StatefulWidget {
  const NewPost({Key? key}) : super(key: key);

  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  List<Camera> cameras = [];
  CameraController? cameraController;
  XFile? imagem;
  Size? size;

  
  void cameraState() {
    _loadCameras();
  }

  _loadCameras() async {}
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class XFile {}

class CameraController {}

class Camera {}
