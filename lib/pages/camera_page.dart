import 'dart:io' show File;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

final picker = ImagePicker();

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File? _image;
  Future getImagefromcamera() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    final pickedFile = await picker.getImage(
        source: ImageSource.camera, maxWidth: 800, imageQuality: 50);
    setState(() {
      _image = _image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: getImagefromcamera,
                tooltip: "pickImage",
                child: Icon(
                  Icons.add_a_photo,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _picker {
  static pickImage({ImageSource? source}) {}
}
