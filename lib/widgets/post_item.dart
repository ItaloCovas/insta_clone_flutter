import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

class PostItem extends StatelessWidget {
  final String profileImg;
  final String name;
  final String postImg;
  final String caption;
  final bool isLoved;
  final String likedBy;
  final String viewCount;
  final String dayAgo;

  const PostItem({
    Key? key, required this.profileImg, required this.name, required this.postImg, required this.isLoved, required this.likedBy, required this.viewCount, required this.dayAgo, required this.caption
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                                    image: NetworkImage(profileImg),
                                    fit: BoxFit.cover)),
                          ),
                           const SizedBox(
                            width: 6,
                          ),
                          Text(
                            name,
                            style: const TextStyle(
                                color: white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                 const Icon(
                  LineIcons.verticalEllipsis,
                  color: white,
                )
              ],
            ),
          ),
           const SizedBox(
            height: 10,
          ),
          Container(
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(postImg),
                    fit: BoxFit.cover)),
          ),
           const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    isLoved ? SvgPicture.asset(
                      "assets/images/loved_icon.svg",
                      width: 27,
                    ) : SvgPicture.asset(
                      "assets/images/love_icon.svg",
                      width: 27,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(
                      "assets/images/comment_icon.svg",
                      width: 27,
                    ),
                    const SizedBox(
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
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: RichText(
                text: TextSpan(children: [
              const TextSpan(
                  text: "Curtido por",
                  style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              TextSpan(
                  text: " $likedBy",
                  style:
                      const TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
              const TextSpan(
                  text: " e",
                  style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              const TextSpan(
                  text: " outras pessoas",
                  style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
            ])),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: name,
                  style:
                      const TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
              TextSpan(
                  text: caption,
                  style:
                      const TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
            ])),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Ver todos os $viewCount comentários",
              style: TextStyle(
                  color: white.withOpacity(0.5),
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
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
                                image: NetworkImage(profileImg),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
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
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "❤️",
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      const Text(
                        "😊",
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
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
              const SizedBox(height: 12.0,),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                        "há 1 dia",
                        style: TextStyle(
                            color: white.withOpacity(0.5),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
              ),
        ],
      ),
    );
  }
}
