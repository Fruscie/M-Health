import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mhealth/pages/bantuan_page.dart';
import 'package:mhealth/pages/chat_page.dart';
import 'package:mhealth/pages/jadwal_kegiatan_page.dart';

import '../theme.dart';

class MenuFAB extends StatelessWidget {
  const MenuFAB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      backgroundColor: primaryColor,
      overlayOpacity: 0,
      children: [
        SpeedDialChild(
            backgroundColor: secondaryColor,
            child: const Icon(Icons.schedule),
            label: 'Jadwal Kegiatan',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const JadwalKegiatanPage()));
            }),
        SpeedDialChild(
            backgroundColor: secondaryColor,
            child: const Icon(Icons.chat),
            label: 'Live Chat',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChatPage()));
            }),
        SpeedDialChild(
            backgroundColor: secondaryColor,
            child: const Icon(Icons.help),
            label: 'Bantuan',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BantuanPage()));
            }),
      ],
    );
  }
}
