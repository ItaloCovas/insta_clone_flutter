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
                  Text('framework.digital', style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: white,
                  ),),
                  SizedBox(height: 5),
                  Text('Criando experiências que fazem sentido. 💜', style: TextStyle(
                    fontSize: 14,
                    color: white,
                  ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
