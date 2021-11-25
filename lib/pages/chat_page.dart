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
                Text('framework.digital',
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                    )),
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
                child: SingleChildScrollView(
                  child: TabBarView(
                    children: <Widget>[
                      Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: size.width - 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: textFieldBackground,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search,
                                  color: white.withOpacity(0.3)),
                              hintText: 'Pesquisar',
                              contentPadding: EdgeInsets.only(bottom: 14),
                              hintStyle: TextStyle(
                                  color: white.withOpacity(0.3),
                                  fontWeight: FontWeight.w500),
                            ),
                            style: const TextStyle(
                              color: white,
                            ),
                            cursorColor: white.withOpacity(0.3),
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              children: List.generate(stories.length, (index) {
                                return ChatItem(
                                  img: stories[index]['img'],
                                  name: stories[index]['name'],
                                );
                              })
                            ),
                          ),
                      ],
                    ),
                  ),
                  Text('oi'),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

