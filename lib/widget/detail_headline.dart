import 'package:flutter/material.dart';
import 'package:mhealth/theme.dart';

class DetailHeadline extends StatelessWidget {
  final int isiHeadline;

  const DetailHeadline({Key? key, required this.isiHeadline}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                color: secondaryColor,
                child: Image.asset('assets/images/image_logo.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Kesehatan dan Keselamatan Peserta Tes SKD Kemenkes Menjadi Prioritas di Masa Pandemi',
                style: primaryTextStyle.copyWith(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Medan, 27 September 2021',
                style: primaryTextStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Isi berita', style: primaryTextStyle)
            ],
          ),
        ),
      ),
    );
  }
}
