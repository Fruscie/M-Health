import 'package:flutter/material.dart';
import 'package:mhealth/model/user_model.dart';
import 'package:mhealth/pages/akun_page.dart';

import '../theme.dart';

class UserBanner extends StatelessWidget {
  const UserBanner({
    Key? key,
    required this.user,
    required this.provinsi,
  }) : super(key: key);

  final User user;
  final String provinsi;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AkunPage(
                      user: user,
                    )));
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        color: primaryColor,
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
              width: 10,
            ),
            Text(
              'Selamat Datang, ${user.nama}',
              style: primaryTextStyle.copyWith(
                  fontSize: 20, color: backgroundColor),
            ),
            const Spacer(),
            Column(
              children: [
                Image.asset(
                  'assets/images/image_logo.png',
                  width: 50,
                ),
                Text(
                  provinsi,
                  style: primaryTextStyle.copyWith(color: backgroundColor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
