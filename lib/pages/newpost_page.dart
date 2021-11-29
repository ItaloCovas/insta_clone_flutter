import 'dart:io' show File;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

final picker = ImagePicker();

class NewPost extends StatefulWidget {
  const NewPost({Key? key}) : super(key: key);

  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
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
