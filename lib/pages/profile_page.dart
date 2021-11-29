import 'package:flutter/material.dart';
import 'package:insta_clone/constant/profile_json.dart';
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
    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                            image: DecorationImage(
                              image: AssetImage(profile),
                              fit: BoxFit.cover,
                            ))),
                    const SizedBox(width: 20),
                    Flexible(
                      child: Column(
                        children: const <Widget>[
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
                    ),
                    const SizedBox(width: 20),
                    Flexible(
                      child: Column(
                        children: const <Widget>[
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
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        children: const <Widget>[
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
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
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
                    Flexible(
                      child: Container(
                        width: 320,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.2, color: Colors.grey.shade600),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                          ),
                          child: const Text('Editar perfil',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(width: 7),
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
                        icon: const Icon(Icons.keyboard_arrow_down,
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
                      children: const <Widget>[
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
                    const Text(
                      'Mantenha seus stories favoritos no seu perfil',
                      style: TextStyle(
                        color: white,
                      ),
                    ),
                    const SizedBox(
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
                            child: const Icon(Icons.add, color: white),
                          ),
                          const SizedBox(width: 15),
                          Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade900,
                                shape: BoxShape.circle,
                              )),
                          const SizedBox(width: 15),
                          Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade900,
                                shape: BoxShape.circle,
                              )),
                          const SizedBox(width: 15),
                          Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade900,
                                shape: BoxShape.circle,
                              )),
                          const SizedBox(width: 15),
                          Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade900,
                                shape: BoxShape.circle,
                              )),
                          const SizedBox(width: 15),
                          Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade900,
                                shape: BoxShape.circle,
                              )),
                          const SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: TabBar(
                  indicatorColor: Colors.grey.shade100,
                  indicatorWeight: 2,
                  tabs: const [
                    Tab(
                      icon: Icon(
                        Icons.grid_on,
                        color: Colors.white,
                      ),
                    ),
                    Tab(
                        icon: Icon(
                      Icons.assignment_ind_outlined,
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: TabBarView(
                  children: <Widget>[
                    GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(0),
                        crossAxisSpacing: 3,
                        mainAxisSpacing: 3,
                        crossAxisCount: 3,
                        children: List.generate(profilePostImg.length, (index) {
                          var size = MediaQuery.of(context).size;

                          return Container(
                            width: (size.width - 3) / 3,
                            height: (size.height - 3) / 3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(profilePostImg[index]),
                                  fit: BoxFit.cover),
                            ),
                          );
                        })),
                    GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(0),
                        crossAxisSpacing: 3,
                        mainAxisSpacing: 3,
                        crossAxisCount: 3,
                        children: List.generate(taggedImgs.length, (index) {
                          var size = MediaQuery.of(context).size;

                          return Container(
                            width: (size.width - 3) / 3,
                            height: (size.height - 3) / 3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(taggedImgs[index]),
                                  fit: BoxFit.cover),
                            ),
                          );
                        })),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
