import 'package:flutter/material.dart';
import 'package:insta_clone/constant/story_json.dart';
import 'package:insta_clone/theme/colors.dart';

class CallItem extends StatelessWidget {
  final String img;
  final String name;
  final String receivedDeclinedCalls;
  
  const CallItem({
    Key? key, required this.img, required this.name, required this.receivedDeclinedCalls,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white54,
                width: 1,
              ),
              image: DecorationImage(
                  image: NetworkImage(
                    img,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 0),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(name, style: TextStyle(
                color: white,
                fontWeight: FontWeight.w700,
              )),
              SizedBox(height: 5),
              Text(receivedDeclinedCalls, style: TextStyle(
                color: Colors.white54,
              ),),
            ],
          ),
          Icon(Icons.phone_outlined, color: white),
        ],
      ),
    );
  }
}
