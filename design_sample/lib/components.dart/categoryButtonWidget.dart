import 'package:flutter/material.dart';

Widget categoryButton(String category, Icon categoryIcon) {
  return FlatButton(
    onPressed: () {},
    child: Row(
      children: <Widget>[categoryIcon, SizedBox(width: 10.0), Text(category)],
    ),
  );
}
