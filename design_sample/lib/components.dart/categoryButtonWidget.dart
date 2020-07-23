import 'package:flutter/material.dart';

Widget categoryButton(String category, Icon categoryIcon) {
  return FlatButton(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    color: Colors.white,
    onPressed: () {},
    child: Row(
      children: <Widget>[categoryIcon, SizedBox(width: 10.0), Text(category)],
    ),
  );
}
