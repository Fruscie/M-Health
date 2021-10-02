import 'package:flutter/material.dart';

import '../theme.dart';

class Categories extends StatelessWidget {
  const Categories(
      {Key? key, required this.iconCategories, required this.textCategories})
      : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final iconCategories;
  final String textCategories;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Icon(
            iconCategories,
            size: 30,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            textCategories,
            style: primaryTextStyle,
          ),
        ],
      ),
    );
  }
}
