import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: footer(),
    );
  }

  Widget footer() {
     List bottomItems = [
       "assets/images/home_active_icon.svg",
       "assets/images/search_active_icon.svg",
       "assets/images/upload_active_icon.svg",
       "assets/images/love_active_icon.svg",
       "assets/images/account_active_icon.svg",
     ];

     return Container(
       width: double.infinity,
       height: 80.0,
       decoration: BoxDecoration(
          color: Colors.black,
       ),
       child: Padding(
         padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 20.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: List.generate(bottomItems.length, (index) {
             return SvgPicture.asset(bottomItems[index], width: 27.0,);
           }),
         ),
       ),
     );
  }
}