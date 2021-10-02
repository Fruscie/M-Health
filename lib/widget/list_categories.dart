import 'package:flutter/material.dart';
import 'package:mhealth/pages/categories_page.dart';

import 'categories.dart';

class ListCategories extends StatelessWidget {
  const ListCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          //panggil widget Categories ketika diklik akan pindah
          //ke CategoriesPage
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage(
                            title: 'JKN',
                          )));
            },
            child: const Categories(
              iconCategories: Icons.ac_unit,
              textCategories: 'JKN',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage(
                            title: 'Keluarga Bencana',
                          )));
            },
            child: const Categories(
              iconCategories: Icons.access_alarm,
              textCategories: 'Keluarga Bencana',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage(
                            title: 'Imunisasi',
                          )));
            },
            child: const Categories(
              iconCategories: Icons.access_time,
              textCategories: 'Imunisasi',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage(
                            title: 'ASI',
                          )));
            },
            child: const Categories(
              iconCategories: Icons.accessibility,
              textCategories: 'ASI',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage(
                            title: 'Pertumbuhan Balita',
                          )));
            },
            child: const Categories(
              iconCategories: Icons.account_balance,
              textCategories: 'Pertumbuhan Balita',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage(
                            title: 'TBC',
                          )));
            },
            child: const Categories(
              iconCategories: Icons.account_box,
              textCategories: 'TBC',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage(
                            title: 'Hipertensi',
                          )));
            },
            child: const Categories(
              iconCategories: Icons.adb,
              textCategories: 'Hipertensi',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage(
                            title: 'Ibu Bersalin',
                          )));
            },
            child: const Categories(
              iconCategories: Icons.add_call,
              textCategories: 'Ibu Bersalin',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage(
                            title: 'Gangguan Jiwa',
                          )));
            },
            child: const Categories(
              iconCategories: Icons.baby_changing_station,
              textCategories: 'Gangguan Jiwa',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage(
                            title: 'Keluarga Merokok',
                          )));
            },
            child: const Categories(
              iconCategories: Icons.cabin,
              textCategories: 'Keluarga Merokok',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage(
                            title: 'Air Bersih',
                          )));
            },
            child: const Categories(
              iconCategories: Icons.dangerous,
              textCategories: 'Air Bersih',
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesPage(
                            title: 'Jamban Sehat',
                          )));
            },
            child: const Categories(
              iconCategories: Icons.e_mobiledata,
              textCategories: 'Jamban Sehat',
            ),
          ),
        ],
      ),
    );
  }
}
