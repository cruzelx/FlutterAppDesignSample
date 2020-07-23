import 'package:design_sample/models/categoryModel.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<PieChartSectionData> showCategories(touchedIndex) {
  return List.generate(4, (index) {
    final isTouched = index == touchedIndex;
    final double fontSize = isTouched ? 18 : 16;
    final double radius = isTouched ? 70 : 60;
    switch (index) {
      case 0:
        return PieChartSectionData(
            color: Color(0xff2211ff),
            value: 53,
            title: "53%",
            radius: radius,
            titleStyle:
                TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold));
        break;
      case 1:
        return PieChartSectionData(
            color: Color(0xff00aaaa),
            value: 18,
            title: "18%",
            radius: radius,
            titleStyle:
                TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold));
        break;
      case 2:
        return PieChartSectionData(
            color: Color(0xffff11aa),
            value: 17,
            title: "17%",
            radius: radius,
            titleStyle:
                TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold));
        break;
      case 3:
        return PieChartSectionData(
            color: Color(0xff525252),
            value: 12,
            title: "12%",
            radius: radius,
            titleStyle:
                TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold));
        break;
      default:
        return null;
    }
  });
}
