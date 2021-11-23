import 'package:flutter/material.dart';
import 'package:insta_clone/constant/story_json.dart';
import 'package:insta_clone/theme/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(profile),
                            fit: BoxFit.cover,
                          ))),
                  SizedBox(width: 15),
                  Column(
                    children: <Widget>[
                      Text('10',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: white)),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                          width: 70,
                          child: Text('Publicações',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center)),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: <Widget>[
                      Text('7.273',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: white)),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                          width: 65,
                          child: Text('Seguidores',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center)),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      Text('1.234',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: white)),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                          width: 70,
                          child: Text('Seguindo',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'framework.digital',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Criando experiências que fazem sentido. 💜',
                    style: TextStyle(
                      fontSize: 14,
                      color: white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 288,
                    height: 35,
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 1.2, color: Colors.grey.shade600),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                      child: Text('Editar perfil',
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                  ),
                  SizedBox(width: 7),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 1.2, color: Colors.grey.shade600),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_down,
                          color: Colors.white, size: 20),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Destaque dos stories',
                        style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_up, color: white),
                    ],
                  ),
                  Text(
                    'Mantenha seus stories favoritos no seu perfil',
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1.2,
                              color: white,
                            ),
                          ),
                          child: Icon(Icons.add, color: white),
                        ),
                        SizedBox(width: 10),
                        Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                              shape: BoxShape.circle,
                            )),
                        SizedBox(width: 10),
                        Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                              shape: BoxShape.circle,
                            )),
                        SizedBox(width: 10),
                        Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                              shape: BoxShape.circle,
                            )),
                        SizedBox(width: 10),
                        Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                              shape: BoxShape.circle,
                            )),
                        SizedBox(width: 10),
                        Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                              shape: BoxShape.circle,
                            )),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 15, 10),
              child: Text('Novo', style: TextStyle(
                color: white,
              )),
              )
          ],
        ),
      ),
    );
  }
}
