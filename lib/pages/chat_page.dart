import 'package:flutter/material.dart';
import 'package:insta_clone/constant/story_json.dart';
import 'package:insta_clone/theme/colors.dart';
import 'package:insta_clone/widgets/chat_item.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'framework.digital',
                  style: TextStyle(
                    color: white,
                    fontSize: 16,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down, size: 19),
              ],
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.camera_alt_outlined, color: white),
                SizedBox(width: 15),
                Icon(Icons.edit, color: white),
              ],
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Container(
          width: size.width,
          color: Colors.black,
          child: Column(
            children: <Widget>[
              TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 2,
                tabs: const [
                  Tab(
                    text: "Bate-papos",
                  ),
                  Tab(text: "Ligações"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                            children: List.generate(
                          stories.length,
                          (index) {
                            return ChatItem(
                              img: stories[index]['img'],
                              name: stories[index]['name'],
                            );
                          },
                        )),
                      ),
                    ),
                    Container(color: Colors.blue),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
