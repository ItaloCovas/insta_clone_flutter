import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/pages/activity_page.dart';

import 'package:insta_clone/pages/chat_page.dart';
import 'package:insta_clone/pages/main_page.dart';
import 'package:insta_clone/pages/newpost_page.dart';
import 'package:insta_clone/pages/search_page.dart';
import 'package:insta_clone/theme/colors.dart';
import 'profile_page.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io' show File;

final picker = ImagePicker();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? _image;
  Future getImagefromcamera() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    final pickedFile = await picker.getImage(
        source: ImageSource.camera, maxWidth: 800, imageQuality: 50);
    setState(() {
      _image = _image;
    });
  }

  int pageIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: getAppBar(),
      backgroundColor: Colors.black,
      body: body(),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: footer(),
    );
  }

  Widget body() {
    List<Widget> pages = [
      const MainPage(),
      const SearchPage(),
      NewPost(),
      const ActivityPage(),
      const ProfilePage(),
    ];

    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  getAppBar() {
    if (pageIndex == 0) {
      return AppBar(
        backgroundColor: const Color(0xFF131313),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                getImagefromcamera();
              },
              child: SvgPicture.asset("assets/images/camera_icon.svg",
                  width: 30.0),
            ),
            const Text(
              "Instagram",
              style: TextStyle(fontFamily: "Billabong", fontSize: 35),
            ),
            GestureDetector(
              child: SvgPicture.asset(
                "assets/images/message_icon.svg",
                width: 30,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatPage()));
              },
            ),
          ],
        ),
      );
    } else if (pageIndex == 1) {
      return null;
    } else if (pageIndex == 2) {
      return null;
    } else if (pageIndex == 3) {
      return AppBar(
        backgroundColor: const Color(0xFF131313),
        title: const Text('Atividade'),
      );
    } else {
      return AppBar(
        backgroundColor: const Color(0xFF131313),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Text('framework.digital',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              SvgPicture.asset("assets/images/upload_icon.svg", width: 22),
              IconButton(
                onPressed: showMenu,
                icon: Icon(Icons.menu),
                color: white,
                padding: EdgeInsets.all(0),
              ),
            ],
          )
        ],
      );
    }
  }

  Widget footer() {
    List bottomItems = [
      pageIndex == 0
          ? "assets/images/home_active_icon.svg"
          : "assets/images/home_icon.svg",
      pageIndex == 1
          ? "assets/images/search_active_icon.svg"
          : "assets/images/search_icon.svg",
      pageIndex == 2
          ? "assets/images/upload_active_icon.svg"
          : "assets/images/upload_icon.svg",
      pageIndex == 3
          ? "assets/images/love_active_icon.svg"
          : "assets/images/love_icon.svg",
      pageIndex == 4
          ? "assets/images/account_active_icon.svg"
          : "assets/images/account_icon.svg",
    ];

    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: const BoxDecoration(
        color: Color(0xFF131313),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return InkWell(
                onTap: () {
                  selectedTab(index);
                },
                child: SvgPicture.asset(
                  bottomItems[index],
                  width: 27.0,
                ));
          }),
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }

  showMenu() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                    height: 300,
                    color: Colors.black,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          alignment: Alignment(0, 0),
                          overflow: Overflow.visible,
                          children: <Widget>[
                            Positioned(
                              child: ListView(
                                physics: NeverScrollableScrollPhysics(),
                                children: <Widget>[
                                  ListTile(
                                    visualDensity: VisualDensity(
                                        horizontal: 0, vertical: -2),
                                    title: Text(
                                      "Configurações",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.settings,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    visualDensity: VisualDensity(
                                        horizontal: 0, vertical: -2),
                                    title: Text(
                                      "Itens Arquivados",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.restore,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    visualDensity: VisualDensity(
                                        horizontal: 0, vertical: -2),
                                    title: Text(
                                      "Sua atividade",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.data_usage,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    visualDensity: VisualDensity(
                                        horizontal: 0, vertical: -2),
                                    title: Text(
                                      "Código QR",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.qr_code_scanner_rounded,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    visualDensity: VisualDensity(
                                        horizontal: 0, vertical: -2),
                                    title: Text(
                                      "Salvos",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.bookmark_border_outlined,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                  ListTile(
                                    visualDensity: VisualDensity(
                                        horizontal: 0, vertical: -2),
                                    title: Text(
                                      "COVID-19: Central de Informações",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.coronavirus_outlined,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            )
                          ],
                        ))),
              ],
            ),
          );
        });
  }
}

class _picker {
  static pickImage({required ImageSource source}) {}
}
