import 'package:flutter/material.dart';
import 'package:insta_clone/constant/story_json.dart';
import 'package:insta_clone/theme/colors.dart';

class ChatItem extends StatelessWidget {
  final String img;
  final String name;
  const ChatItem({
    Key? key, required this.img, required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: <Widget>[
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
              image: DecorationImage(
                  image: NetworkImage(
                    img,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(name,
                  style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.w700)),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                  width: 140,
                  child: Text('Respondeu ao seu story',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.start))
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text('14 min',
                  style: TextStyle(
                    color: white,
                  )),
            ],
          ),
          SizedBox(width: 20),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueAccent,
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.camera_alt_outlined, color: white),
        ],
      ),
    );
  }
}
