import 'package:flutter/material.dart';
import 'package:insta_clone/theme/colors.dart';

class CategoryStoryItem extends StatelessWidget {
  final String name;
  const CategoryStoryItem({
    Key? key, required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
              decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: black,
      border: Border.all(
        color: white.withOpacity(0.2),
      ),
              ),
              child: Padding(
      padding: const EdgeInsets.all(7),
      child: Text(name, style: TextStyle(
        color: white,
        fontWeight: FontWeight.w500,
        fontSize: 15,
      )),
              ),
            ),
    );
  }
}