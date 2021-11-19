import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/constant/post_json.dart';
import 'package:insta_clone/constant/story_json.dart';
import 'package:insta_clone/theme/colors.dart';
import 'package:insta_clone/widgets/story_item.dart';
import 'package:line_icons/line_icons.dart';

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
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0, left: 15.0, bottom: 20.0),
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
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: white),
                                  child: Icon(
                                    Icons.add_circle,
                                    color: buttonFollowColor,
                                    size: 19,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(height: 6.0),
                      SizedBox(
                          width: 70.0,
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
          Divider(
            color: white.withOpacity(0.3),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 4),
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            posts[0]['profileImg']),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                posts[0]['name'],
                                style: TextStyle(
                                    color: white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(
                      LineIcons.verticalEllipsis,
                      color: white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(posts[0]['postImg']),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/images/loved_icon.svg",
                          width: 27,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          "assets/images/comment_icon.svg",
                          width: 27,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          "assets/images/message_icon.svg",
                          width: 27,
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      "assets/images/save_icon.svg",
                      width: 27,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Curtido por",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                  TextSpan(
                      text: " frameworkdigital",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: " e",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                  TextSpan(
                      text: " outras pessoas",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                ])),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "panhchaneath_ung",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: " Bom dia!!",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                ])),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "Ver todos os 2000 comentários",
                  style: TextStyle(
                      color: white.withOpacity(0.5),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(posts[0]['profileImg']),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Adicione um comentário...",
                            style: TextStyle(
                                color: white.withOpacity(0.5),
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "❤️",
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Text(
                            "😊",
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.add_circle,
                            color: white.withOpacity(0.5),
                            size: 19,
                          )
                        ],
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
