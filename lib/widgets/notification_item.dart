import 'package:flutter/material.dart';
import 'package:insta_clone/constant/story_json.dart';
import 'package:insta_clone/theme/colors.dart';

class NotificationItem extends StatelessWidget {
  final String img;
  final String name;
  const NotificationItem({
    Key? key, required this.img, required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        img,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 10),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
              text: name,
              style:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w700)),
          const TextSpan(
              text: " curtiu sua foto.",
              style:
                  TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                  TextSpan(
              text: " 4h",
              style:
                  TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: white.withOpacity(0.5))),
                  ],
                ),  
              ),
            ],
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(profile),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],     
      ),
    );
  }
}