import 'package:insta_clone/constant/post_json.dart';
import 'package:insta_clone/constant/story_json.dart';
import 'package:story_view/story_view.dart';
import 'package:flutter/material.dart';

class StoryPageView extends StatefulWidget {
  const StoryPageView({ Key? key }) : super(key: key);

  @override
  _StoryPageViewState createState() => _StoryPageViewState();
}

class _StoryPageViewState extends State<StoryPageView> {

  final controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StoryView(
        storyItems: [
          StoryItem.pageImage(url: posts[0]['postImg'], controller: controller),
          StoryItem.pageImage(url: posts[1]['postImg'], controller: controller),
          StoryItem.pageImage(url: posts[2]['postImg'], controller: controller),
          StoryItem.pageImage(url: posts[3]['postImg'], controller: controller),
          StoryItem.pageImage(url: posts[4]['postImg'], controller: controller),
        ],
        controller: controller,
        inline: true,
        repeat: false,
        onComplete: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}