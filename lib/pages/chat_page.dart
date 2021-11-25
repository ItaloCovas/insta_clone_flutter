import 'package:flutter/material.dart';
import 'package:insta_clone/constant/story_json.dart';
import 'package:insta_clone/theme/colors.dart';
import 'package:insta_clone/widgets/call_item.dart';
import 'package:insta_clone/widgets/chat_item.dart';

import 'camera_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final String texto = '''Envie um link  para fazer uma ligação
de vídeo com os amigos
  ''';

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
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CameraPage()));
                  },
                  child: Icon(Icons.camera_alt_outlined, color: white),
                ),
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
              SizedBox(height: 10),
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
                    Container(
                      color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white54,
                                      width: 1,
                                    ),
                                  ),
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: const Icon(Icons.photo_camera_front,
                                        color: Colors.white, size: 20),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text('Crie uma sala',
                                        style: TextStyle(
                                          color: white,
                                          fontWeight: FontWeight.w700,
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(texto,
                                        style: TextStyle(
                                          color: Colors.white54,
                                        ),
                                        textAlign: TextAlign.start),
                                  ],
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.navigate_next_rounded,
                                    color: Colors.white54),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text('Recentes',
                                style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, top: 15),
                            child: Column(
                              children:
                                  List.generate(stories.length - 5, (index) {
                                return CallItem(
                                  img: stories[index]['img'],
                                  name: stories[index]['name'],
                                  receivedDeclinedCalls:
                                      receivedDeclinedCalls[index],
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
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
