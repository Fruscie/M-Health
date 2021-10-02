import 'package:flutter/material.dart';

import '../theme.dart';

class DetailData extends StatelessWidget {
  final String title;
  final String subTitle;
  const DetailData({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$title :',
              style: primaryTextStyle.copyWith(fontSize: 20),
            ),
            Text(
              subTitle,
              style: primaryTextStyle.copyWith(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
