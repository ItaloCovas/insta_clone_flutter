import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/main.dart';
import 'package:insta_clone/pages/main_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      backgroundColor: Colors.black,
      body: body(),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: footer(),
    );
  }

  Widget body() {
    List<Widget> pages = [
      MainPage(),
         Center(
           child: Text("Home Page", style: TextStyle(
             fontSize: 20.0,
             fontWeight: FontWeight.bold,
             color: Colors.white,
           ),),
         ),
         Center(
           child: Text("Home Page", style: TextStyle(
             fontSize: 20.0,
             fontWeight: FontWeight.bold,
             color: Colors.white,
           ),),
         ),
         Center(
           child: Text("Home Page", style: TextStyle(
             fontSize: 20.0,
             fontWeight: FontWeight.bold,
             color: Colors.white,
           ),),
         ),
         Center(
           child: Text("Conta", style: TextStyle(
             fontSize: 20.0,
             fontWeight: FontWeight.bold,
             color: Colors.white,
           ),),
         ),
    ];

    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

   getAppBar() {
    if (pageIndex == 0) {
      return AppBar(
        backgroundColor: Color(0xFF131313),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SvgPicture.asset(
              "assets/images/camera_icon.svg",
              width: 30.0,
            ),
            Text(
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
      return AppBar(backgroundColor: Color(0xFF131313));
    } else if (pageIndex == 2) {
      return AppBar(
        backgroundColor: Color(0xFF131313),
        title: Text('Nova Publicação'),

      );
    } else if (pageIndex == 3) {
      return AppBar(
        backgroundColor: Color(0xFF131313),
        title: Text('Atividade'),

      );
    } else {
      return AppBar(
        backgroundColor: Color(0xFF131313),
        title: Text('Conta'),

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
      height: 80.0,
      decoration: BoxDecoration(
        color: Color(0xFF131313),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 20.0),
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
