import 'package:flutter/material.dart';
import 'package:insta_clone/constant/story_json.dart';
import 'package:insta_clone/widgets/notification_item.dart';


class ActivityPage extends StatefulWidget {
  const ActivityPage({ Key? key }) : super(key: key);

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(stories.length, (index) {
          return NotificationItem(
            img: stories[index]['img'],
            name: stories[index]['name'],
          );
        }),
      ),
    );
  }
}

