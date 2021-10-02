import 'package:flutter/material.dart';
import 'package:mhealth/pages/detail_page.dart';
import 'package:mhealth/pages/reminder_page.dart';
import 'package:mhealth/theme.dart';

class CategoriesPage extends StatefulWidget {
  //judul page
  final String title;

  const CategoriesPage({Key? key, required this.title}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  int selectedIndexNavBar = 0;
  final List _listMenu = [
    const ReminderPage(),
    const DetailPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          backgroundColor: backgroundColor,
          items: const [
            BottomNavigationBarItem(
              label: 'Reminder',
              icon: Icon(Icons.calendar_today),
            ),
            BottomNavigationBarItem(
              label: 'Detail',
              icon: Icon(Icons.notes),
            )
          ],
          iconSize: 20,
          currentIndex: selectedIndexNavBar,
          onTap: (int index) {
            setState(() {
              selectedIndexNavBar = index;
            });
          },
        ),
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            widget.title,
            style: primaryTextStyle.copyWith(
                color: backgroundColor, fontWeight: bold, fontSize: 20),
          ),
        ),
        body: _listMenu[selectedIndexNavBar]);
  }
}
