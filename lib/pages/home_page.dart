import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/pages/activity_page.dart';
import 'package:insta_clone/pages/main_page.dart';
import 'package:insta_clone/pages/newpost_page.dart';
import 'package:insta_clone/pages/search_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: getAppBar(),
      endDrawer: (pageIndex == 4) ? Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('This is the Drawer'),
              ElevatedButton(
                onPressed: _closeEndDrawer,
                child: const Text('Close Drawer'),
              ),
            ],
          ),
        ),
      ) : null,
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
      const NewPost(),
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
            SvgPicture.asset(
              "assets/images/camera_icon.svg",
              width: 30.0,
            ),
            const Text(
              "Instagram",
              style: TextStyle(fontFamily: "Billabong", fontSize: 35),
            ),
            SvgPicture.asset(
              "assets/images/message_icon.svg",
              width: 30,
            )
          ],
        ),
      );
    } else if (pageIndex == 1) {
      return null;
    } else if (pageIndex == 2) {
      return AppBar(
        backgroundColor: const Color(0xFF131313),
        title: const Text('Nova Publicação'),
      );
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
            Row(children: const [
                Text('framework.digital', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
                Icon(Icons.keyboard_arrow_down),
            ],),
            SvgPicture.asset("assets/images/upload_icon.svg", width: 22),
          ],
        ),
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
}
