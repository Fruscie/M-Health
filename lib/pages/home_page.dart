import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mhealth/model/user_model.dart';
import 'package:mhealth/theme.dart';
import 'package:mhealth/widget/detail_headline.dart';
import 'package:mhealth/widget/list_categories.dart';
import 'package:mhealth/widget/menu_fab.dart';
import 'package:mhealth/widget/user_banner.dart';

class HomePage extends StatefulWidget {
  final User user;
  final String provinsi;
  const HomePage({Key? key, required this.user, required this.provinsi})
      : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //index headline untuk carousel
  int indexHeadline = 0;
  //carousel controller untuk headlin
  final CarouselController headlineController = CarouselController();
  //list isi headline
  List<int> isiHeadline = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //menu untuk bantuan,livechat, dan jadwal kegiatan
        floatingActionButton: const MenuFAB(),
        backgroundColor: backgroundColor,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              //user banner ada gesture on tap untuk masuk ke akun
              UserBanner(user: widget.user, provinsi: widget.provinsi),
              //headline berita
              CarouselSlider(
                carouselController: headlineController,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.3,
                    onPageChanged: (index, reason) {
                      setState(() {
                        indexHeadline = index;
                      });
                    }),
                items: isiHeadline.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailHeadline(isiHeadline: i)));
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/image_logo.png')),
                                color: backgroundColor,
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    backgroundColor,
                                    Colors.grey.shade600
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 100, left: 10, right: 10, bottom: 10),
                              child: Text(
                                'Kunjungi B2P2TOOT, Sekjen : Perlu Adanya Transformasi di Bidang Kesehatan Tradisional',
                                style: primaryTextStyle.copyWith(
                                    color: backgroundColor,
                                    fontSize: 20,
                                    fontWeight: bold),
                              ),
                            )),
                      );
                    },
                  );
                }).toList(),
              ),
              //pembatas
              const Divider(
                color: Colors.black38,
                thickness: 2,
              ),
              //static list dari categories
              const ListCategories(),
              //pembatas
              const Divider(
                color: Colors.black38,
                thickness: 2,
              ),
              //container untuk textbutton berita dan tips
              Container(
                color: primaryColor,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Berita',
                            style: primaryTextStyle.copyWith(
                                color: backgroundColor),
                          )),
                      const Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Tips',
                            style: primaryTextStyle.copyWith(
                                color: backgroundColor),
                          )),
                    ]),
              )
            ],
          ),
        )));
  }
}
