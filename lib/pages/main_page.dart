import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/constant/post_json.dart';
import 'package:insta_clone/constant/story_json.dart';
import 'package:insta_clone/theme/colors.dart';
import 'package:insta_clone/widgets/story_item.dart';


class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return body();
  }

  Widget body() {
    return Column(
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 15.0),
            child: Column(
                children: <Widget>[
                  Container(
                    width: 65,
                    height: 65,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: NetworkImage(profile), fit: BoxFit.cover)
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  SizedBox(width: 70.0,
                  child: Text('name',
                  overflow: TextOverflow.ellipsis, 
                  style: TextStyle(
                    color: white,
                  ))),
                ],
            ),
          ),
            Row(
              children: List.generate(stories.length, (index) {
                return StoryItem(
                  img: stories[index]['img'],
                  name: stories[index]['name'],
                );
              }),
            ),
            ],
          ),
        ),
      ],
    );
  }
}