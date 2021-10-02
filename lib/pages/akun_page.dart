import 'package:flutter/material.dart';
import 'package:mhealth/bloc/user_bloc.dart';
import 'package:mhealth/main.dart';
import 'package:mhealth/model/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme.dart';

class AkunPage extends StatelessWidget {
  final User user;
  const AkunPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text('Akun'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              color: primaryColor,
              // decoration: BoxDecoration(color: backgroundColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    minRadius: 60.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 70.0,
                      backgroundImage:
                          AssetImage('assets/images/image_logo.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    user.nama.toString().toUpperCase(),
                    style: primaryTextStyle.copyWith(
                        fontSize: 40, color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Username',
                style:
                    primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
              subtitle: Text(
                user.username.toString(),
                style: primaryTextStyle,
              ),
            ),
            const Divider(
              thickness: 3,
            ),
            ListTile(
              title: Text(
                'Email',
                style:
                    primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
              subtitle: Text(
                'gilanggsb@gmail.com',
                style: primaryTextStyle,
              ),
            ),
            const Divider(thickness: 3),
            ListTile(
              title: Text(
                'Puskesmas',
                style:
                    primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
              subtitle: Text(
                'Pusat Kesehatan Masyarakat',
                style: primaryTextStyle,
              ),
            ),
            const Divider(thickness: 3),
            GestureDetector(
              onTap: () {
                context.read<UserBloc>().add(const UserLogout());
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              },
              child: ListTile(
                title: Text(
                  'Logout',
                  style:
                      primaryTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
