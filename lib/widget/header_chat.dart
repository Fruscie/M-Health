import 'package:flutter/material.dart';

import '../theme.dart';

class HeaderChat extends StatelessWidget {
  const HeaderChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(
                Icons.person,
                size: 50,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              'Admin Mhealth',
              style: primaryTextStyle.copyWith(
                  color: secondaryTextColor, fontSize: 20),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
