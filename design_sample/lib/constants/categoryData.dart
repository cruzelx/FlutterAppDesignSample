import 'package:design_sample/models/categoryModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Category> categories = [
  new Category(
      title: "Education",
      color: Color(0xff2211ff),
      percentage: 53,
      amount: 94.00,
      icon: Icon(
        FontAwesomeIcons.graduationCap,
        size: 18,
        color: Colors.yellow,
      )),
  new Category(
    title: "Beauty & Care",
    color: Color(0xff00aaaa),
    percentage: 18,
    amount: 45.65,
    icon: Icon(
      FontAwesomeIcons.pagelines,
      size: 18.0,
      color: Colors.blueAccent,
    ),
  ),
  new Category(
      title: "Child",
      color: Color(0xffff11aa),
      percentage: 17,
      amount: 34.90,
      icon: Icon(FontAwesomeIcons.child, size: 18.0, color: Colors.redAccent)),
  new Category(
      title: "Food",
      color: Color(0xff525252),
      percentage: 12,
      amount: 12.54,
      icon: Icon(FontAwesomeIcons.glassCheers, size: 18.0, color: Colors.green))
];
