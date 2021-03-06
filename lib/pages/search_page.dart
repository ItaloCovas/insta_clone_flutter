import 'package:flutter/material.dart';
import 'package:insta_clone/constant/search_json.dart';
import 'package:insta_clone/theme/colors.dart';
import 'package:insta_clone/widgets/search_category_item.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return body();
  }

  Widget body() {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Row(
              children: <Widget>[
                const SizedBox(width: 15),
                Container(
                  width: size.width - 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: textFieldBackground,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon:
                          Icon(Icons.search, color: white.withOpacity(0.3)),
                    ),
                    style: const TextStyle(
                      color: white,
                    ),
                    cursorColor: white.withOpacity(0.3),
                  ),
                ),
                const SizedBox(width: 15),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Row(
                children: List.generate(searchCategories.length, (index) {
                  return CategoryStoryItem(
                    name: searchCategories[index],
                  );
                }),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            spacing: 1,
            runSpacing: 1,
            children: List.generate(searchImages.length, (index) {
              return Container(
                width: (size.width - 3) / 3,
                height: (size.height - 3) / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(searchImages[index]),
                      fit: BoxFit.cover),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
