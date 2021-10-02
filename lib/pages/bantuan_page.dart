import 'package:flutter/material.dart';
import 'package:mhealth/theme.dart';

class BantuanPage extends StatelessWidget {
  const BantuanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text('Bantuan'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {},
                child: Text(
                  'HomePage Kemenkes',
                  style: primaryTextStyle.copyWith(
                      fontSize: 25, decoration: TextDecoration.underline),
                )),
            const Divider(
              thickness: 2,
            ),
            InkWell(
                onTap: () {},
                child: Text(
                  'Email',
                  style: primaryTextStyle.copyWith(
                      fontSize: 25, decoration: TextDecoration.underline),
                )),
            const Divider(
              thickness: 2,
            ),
            InkWell(
                onTap: () {},
                child: Text(
                  'Kontak',
                  style: primaryTextStyle.copyWith(
                      fontSize: 25, decoration: TextDecoration.underline),
                )),
            const Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
