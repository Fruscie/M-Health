import 'package:flutter/material.dart';

import '../theme.dart';

class TitleCategories extends StatelessWidget {
  const TitleCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'No',
            style: primaryTextStyle.copyWith(fontWeight: bold),
          ),
          Text(
            'Kelurahan',
            style: primaryTextStyle.copyWith(fontWeight: bold),
          ),
          Text(
            'RW / RT',
            style: primaryTextStyle.copyWith(fontWeight: bold),
          ),
          Text(
            'Nama KK',
            style: primaryTextStyle.copyWith(fontWeight: bold),
          ),
        ],
      ),
    );
  }
}
