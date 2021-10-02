import 'package:flutter/material.dart';
import 'package:mhealth/widget/title_categories.dart';

import '../theme.dart';

class ReminderPage extends StatelessWidget {
  const ReminderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              const TitleCategories(),
              const Divider(
                thickness: 1,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('$index'),
                            Text(
                              'tamansari'.toUpperCase(),
                              style: primaryTextStyle,
                            ),
                            Text(
                              '1/6'.toUpperCase(),
                              style: primaryTextStyle,
                            ),
                            Text(
                              'Supardi'.toUpperCase(),
                              style: primaryTextStyle,
                            )
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        )
                      ],
                    );
                  })
            ],
          ),
        ),
      )),
    );
  }
}
