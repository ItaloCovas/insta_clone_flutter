import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/constant/post_json.dart';
import 'package:insta_clone/constant/story_json.dart';
import 'package:insta_clone/theme/colors.dart';
import 'package:insta_clone/widgets/post_item.dart';
import 'package:insta_clone/widgets/story_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return body();
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 15, left: 15, bottom: 0),
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
                                    image: DecorationImage(
                                        image: NetworkImage(profile),
                                        fit: BoxFit.cover)),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    width: 19,
                                    height: 19,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: white),
                                    child: const Icon(
                                      Icons.add_circle,
                                      color: buttonFollowColor,
                                      size: 18,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(
                            width: 70.0,
                            child: Text('framework.digital',
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
          ),
          Divider(
            color: white.withOpacity(0.3),
          ),
          Column(
              children: List.generate(posts.length, (index) {
            return PostItem(
              postImg: posts[index]['postImg'],
              profileImg: posts[index]['profileImg'],
              name: posts[index]['name'],
              caption: posts[index]['caption'],
              isLoved: posts[index]['isLoved'],
              viewCount: posts[index]['commentCount'],
              likedBy: posts[index]['likedBy'],
              dayAgo: posts[index]['timeAgo'],
            );
          })),
        ],
      ),
    );
  }
}
