import 'package:flutter/material.dart';

import '../theme.dart';

class JadwalKegiatanPage extends StatelessWidget {
  const JadwalKegiatanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text('Jadwal Kegiatan'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(),
      ),
    );
  }
}
