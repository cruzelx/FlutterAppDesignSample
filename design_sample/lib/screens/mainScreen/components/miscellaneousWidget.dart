import 'package:design_sample/components.dart/categoryButtonWidget.dart';
import 'package:design_sample/screens/mainScreen/components/infoCard.dart';
import 'package:design_sample/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:design_sample/constants/categoryData.dart';

class MiscellaenousWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GridView.count(
          childAspectRatio: 4 / 1,
          crossAxisCount: 2,
          shrinkWrap: true,
          padding: EdgeInsets.all(10.0),
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          children: <Widget>[
            for (int i = 0; i < categories.length; i++)
              categoryButton(categories[i].title, categories[i].icon)
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "MORE",
                style: subtitleStyle,
              ),
              Icon(Icons.keyboard_arrow_down)
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("INCOMING EXPENSES", style: titleStyle),
                Text("12 total", style: subtitleStyle)
              ],
            ),
          ),
        ),
        infoCard,
      ],
    );
  }
}
