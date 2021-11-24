import 'package:flutter/material.dart';
import 'package:insta_clone/screens/camera_screen.dart';
import 'package:image_picker/image_picker.dart';

final picker = ImagePicker();

class NewPost extends StatelessWidget {
  final pickedFile = picker.getImage(
      source: ImageSource.camera, maxWidth: 800, imageQuality: 50);

  NewPost({Key? key}) : super(key: key);

  Future Getcamera() async {}
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
